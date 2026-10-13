.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "PG"


# static fields
.field public static final t0:[I

.field public static final u0:Ljava/util/Comparator;

.field public static final v0:Landroid/view/animation/Interpolator;

.field public static final w0:LO7;


# instance fields
.field public A:Lv7;

.field public B:I

.field public C:I

.field public D:Landroid/os/Parcelable;

.field public E:Ljava/lang/ClassLoader;

.field public F:Landroid/widget/Scroller;

.field public G:Z

.field public H:LM7;

.field public I:I

.field public J:I

.field public K:F

.field public L:F

.field public M:I

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:I

.field public R:Z

.field public S:Z

.field public T:I

.field public U:I

.field public V:I

.field public W:F

.field public a0:F

.field public b0:F

.field public c0:F

.field public d0:I

.field public e0:Landroid/view/VelocityTracker;

.field public f0:I

.field public g0:I

.field public h0:I

.field public i0:I

.field public j0:Landroid/widget/EdgeEffect;

.field public k0:Landroid/widget/EdgeEffect;

.field public l0:Z

.field public m0:Z

.field public n0:I

.field public o0:Ljava/util/List;

.field public p0:Ljava/util/List;

.field public q0:Ljava/util/ArrayList;

.field public final r0:Ljava/lang/Runnable;

.field public s0:I

.field public w:I

.field public final x:Ljava/util/ArrayList;

.field public final y:LH7;

.field public final z:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    .line 1
    sput-object v0, Landroid/support/v4/view/ViewPager;->t0:[I

    .line 2
    new-instance v0, LC7;

    invoke-direct {v0}, LC7;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->u0:Ljava/util/Comparator;

    .line 3
    new-instance v0, LD7;

    invoke-direct {v0}, LD7;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->v0:Landroid/view/animation/Interpolator;

    .line 4
    new-instance v0, LO7;

    invoke-direct {v0}, LO7;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->w0:LO7;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    .line 3
    new-instance p1, LH7;

    invoke-direct {p1}, LH7;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->y:LH7;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->z:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroid/support/v4/view/ViewPager;->C:I

    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/os/Parcelable;

    .line 7
    iput-object p2, p0, Landroid/support/v4/view/ViewPager;->E:Ljava/lang/ClassLoader;

    const p2, -0x800001

    .line 8
    iput p2, p0, Landroid/support/v4/view/ViewPager;->K:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 9
    iput p2, p0, Landroid/support/v4/view/ViewPager;->L:F

    const/4 p2, 0x1

    .line 10
    iput p2, p0, Landroid/support/v4/view/ViewPager;->Q:I

    .line 11
    iput p1, p0, Landroid/support/v4/view/ViewPager;->d0:I

    .line 12
    iput-boolean p2, p0, Landroid/support/v4/view/ViewPager;->l0:Z

    .line 13
    new-instance p1, LE7;

    invoke-direct {p1, p0}, LE7;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->r0:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Landroid/support/v4/view/ViewPager;->s0:I

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/high16 p1, 0x40000

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 17
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 19
    new-instance v0, Landroid/widget/Scroller;

    sget-object v1, Landroid/support/v4/view/ViewPager;->v0:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    .line 20
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 22
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->V:I

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 23
    iput v2, p0, Landroid/support/v4/view/ViewPager;->f0:I

    .line 24
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->g0:I

    .line 25
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->j0:Landroid/widget/EdgeEffect;

    .line 26
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->k0:Landroid/widget/EdgeEffect;

    const/high16 p1, 0x41c80000    # 25.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 27
    iput p1, p0, Landroid/support/v4/view/ViewPager;->h0:I

    const/high16 p1, 0x40000000    # 2.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 28
    iput p1, p0, Landroid/support/v4/view/ViewPager;->i0:I

    const/high16 p1, 0x41800000    # 16.0f

    mul-float v1, v1, p1

    float-to-int p1, v1

    .line 29
    iput p1, p0, Landroid/support/v4/view/ViewPager;->T:I

    .line 30
    new-instance p1, LJ7;

    invoke-direct {p1, p0}, LJ7;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, p1}, LA7;->a(Landroid/view/View;Lh7;)V

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 32
    invoke-virtual {p0, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 33
    :cond_0
    new-instance p1, LF7;

    invoke-direct {p1, p0}, LF7;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, p1}, LA7;->a(Landroid/view/View;Lu7;)V

    return-void
.end method


# virtual methods
.method public a(II)LH7;
    .locals 9

    .line 59
    new-instance v0, LH7;

    invoke-direct {v0}, LH7;-><init>()V

    .line 60
    iput p1, v0, LH7;->b:I

    .line 61
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    check-cast v1, Lb3;

    .line 62
    iget-object v2, v1, Lb3;->c:Ld3;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 63
    iget-object v2, v1, Lb3;->b:LH2;

    check-cast v2, LY2;

    if-eqz v2, :cond_0

    .line 64
    new-instance v4, Lq2;

    invoke-direct {v4, v2}, Lq2;-><init>(LY2;)V

    .line 65
    iput-object v4, v1, Lb3;->c:Ld3;

    goto :goto_0

    .line 66
    :cond_0
    throw v3

    :cond_1
    :goto_0
    int-to-long v4, p1

    .line 67
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v4, v5}, Lb3;->a(IJ)Ljava/lang/String;

    move-result-object v2

    .line 68
    iget-object v6, v1, Lb3;->b:LH2;

    invoke-virtual {v6, v2}, LH2;->a(Ljava/lang/String;)Lz2;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 69
    iget-object p1, v1, Lb3;->c:Ld3;

    check-cast p1, Lq2;

    if-eqz p1, :cond_2

    .line 70
    new-instance v4, Lp2;

    const/4 v5, 0x7

    invoke-direct {v4, v5, v2}, Lp2;-><init>(ILz2;)V

    invoke-virtual {p1, v4}, Lq2;->a(Lp2;)V

    move-object p1, v2

    goto :goto_2

    :cond_2
    throw v3

    .line 71
    :cond_3
    move-object v2, v1

    check-cast v2, LPA0;

    .line 72
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataTabsFragment;->g(I)I

    move-result p1

    const/4 v6, 0x1

    if-eqz p1, :cond_5

    if-ne p1, v6, :cond_4

    .line 73
    new-instance p1, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferencesAdvanced;

    invoke-direct {p1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferencesAdvanced;-><init>()V

    goto :goto_1

    .line 74
    :cond_4
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "invalid position: "

    invoke-static {v0, p1}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 75
    :cond_5
    new-instance p1, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferencesBasic;

    invoke-direct {p1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferencesBasic;-><init>()V

    .line 76
    :goto_1
    iget-object v2, v2, LPA0;->e:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    .line 77
    iput-object v2, p1, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->H0:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataFetcher;

    .line 78
    iget-object v2, v1, Lb3;->c:Ld3;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    .line 79
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v8

    invoke-static {v8, v4, v5}, Lb3;->a(IJ)Ljava/lang/String;

    move-result-object v4

    .line 80
    check-cast v2, Lq2;

    .line 81
    invoke-virtual {v2, v7, p1, v4, v6}, Lq2;->a(ILz2;Ljava/lang/String;I)V

    .line 82
    :goto_2
    iget-object v1, v1, Lb3;->d:Lz2;

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1, v1}, Lz2;->e(Z)V

    .line 84
    invoke-virtual {p1, v1}, Lz2;->f(Z)V

    .line 85
    :cond_6
    iput-object p1, v0, LH7;->a:Ljava/lang/Object;

    .line 86
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    if-eqz p1, :cond_9

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, v0, LH7;->d:F

    if-ltz p2, :cond_8

    .line 87
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_7

    goto :goto_3

    .line 88
    :cond_7
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 89
    :cond_8
    :goto_3
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    return-object v0

    .line 90
    :cond_9
    throw v3
.end method

.method public a(Landroid/view/View;)LH7;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    :goto_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 110
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LH7;

    .line 111
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    iget-object v5, v2, LH7;->a:Ljava/lang/Object;

    check-cast v4, Lb3;

    if-eqz v4, :cond_2

    .line 112
    check-cast v5, Lz2;

    .line 113
    iget-object v3, v5, Lz2;->e0:Landroid/view/View;

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_2
    throw v3

    :cond_3
    return-object v3
.end method

.method public final a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    .line 213
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 214
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 215
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 216
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 217
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 218
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 219
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 220
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 221
    check-cast p2, Landroid/view/ViewGroup;

    .line 222
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 223
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 224
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 225
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 226
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public a()V
    .locals 8

    .line 91
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    check-cast v0, LPA0;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    .line 92
    iput v0, p0, Landroid/support/v4/view/ViewPager;->w:I

    .line 93
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->Q:I

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x0

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 95
    :goto_0
    iget v2, p0, Landroid/support/v4/view/ViewPager;->B:I

    const/4 v3, 0x0

    .line 96
    :goto_1
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 97
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LH7;

    .line 98
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    iget-object v6, v6, LH7;->a:Ljava/lang/Object;

    if-eqz v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    :cond_1
    throw v1

    .line 100
    :cond_2
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    sget-object v3, Landroid/support/v4/view/ViewPager;->u0:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v0, :cond_5

    .line 101
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 102
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 103
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, LI7;

    .line 104
    iget-boolean v6, v3, LI7;->a:Z

    if-nez v6, :cond_3

    const/4 v6, 0x0

    .line 105
    iput v6, v3, LI7;->c:F

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 106
    :cond_4
    invoke-virtual {p0, v2, v5, v4, v5}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    .line 107
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_5
    return-void

    .line 108
    :cond_6
    throw v1
.end method

.method public a(IFI)V
    .locals 12

    .line 115
    iget v0, p0, Landroid/support/v4/view/ViewPager;->n0:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    .line 116
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 117
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 118
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    .line 119
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 120
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_5

    .line 121
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 122
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, LI7;

    .line 123
    iget-boolean v10, v9, LI7;->a:Z

    if-nez v10, :cond_0

    goto :goto_3

    .line 124
    :cond_0
    iget v9, v9, LI7;->b:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_3

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    move v9, v4

    goto :goto_2

    :cond_1
    sub-int v9, v5, v7

    .line 125
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 126
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v7, v10

    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v4

    goto :goto_2

    .line 128
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_1
    move v11, v9

    move v9, v4

    move v4, v11

    :goto_2
    add-int/2addr v4, v0

    .line 129
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v4, v10

    if-eqz v4, :cond_4

    .line 130
    invoke-virtual {v8, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v4, v9

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o0:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    if-ge v1, v0, :cond_7

    .line 133
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->o0:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL7;

    if-eqz v3, :cond_6

    .line 134
    check-cast v3, Lw0;

    invoke-virtual {v3, p1, p2, p3}, Lw0;->a(IFI)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 135
    :cond_7
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->m0:Z

    return-void
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->P:Z

    .line 2
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    return-void
.end method

.method public final a(IZIZ)V
    .locals 10

    .line 23
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->c(I)LH7;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v2

    int-to-float v2, v2

    .line 25
    iget v3, p0, Landroid/support/v4/view/ViewPager;->K:F

    iget v0, v0, LH7;->e:F

    iget v4, p0, Landroid/support/v4/view/ViewPager;->L:F

    .line 26
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 27
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_8

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_1

    .line 29
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->c(Z)V

    goto/16 :goto_5

    .line 30
    :cond_1
    iget-object p2, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    .line 31
    iget-boolean p2, p0, Landroid/support/v4/view/ViewPager;->G:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getCurrX()I

    move-result p2

    goto :goto_2

    :cond_3
    iget-object p2, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getStartX()I

    move-result p2

    .line 32
    :goto_2
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 33
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->c(Z)V

    goto :goto_3

    .line 34
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    :goto_3
    move v4, p2

    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    sub-int v6, v0, v4

    rsub-int/lit8 v7, v5, 0x0

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    .line 36
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 37
    iget p2, p0, Landroid/support/v4/view/ViewPager;->B:I

    invoke-virtual {p0, p2}, Landroid/support/v4/view/ViewPager;->e(I)V

    .line 38
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->g(I)V

    goto :goto_5

    .line 39
    :cond_5
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->c(Z)V

    const/4 p2, 0x2

    .line 40
    invoke-virtual {p0, p2}, Landroid/support/v4/view/ViewPager;->g(I)V

    .line 41
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result p2

    .line 42
    div-int/lit8 v0, p2, 0x2

    .line 43
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    int-to-float p2, p2

    div-float/2addr v2, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v0, v0

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v2, v8

    const v8, 0x3ef1463b

    mul-float v2, v2, v8

    float-to-double v8, v2

    .line 44
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v2, v8

    mul-float v2, v2, v0

    add-float/2addr v2, v0

    .line 45
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_6

    const/high16 p2, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr v2, p3

    .line 46
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    mul-float p3, p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    goto :goto_4

    .line 47
    :cond_6
    iget-object p3, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    if-eqz p3, :cond_7

    mul-float p2, p2, v3

    .line 48
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    int-to-float p3, p3

    int-to-float v0, v1

    add-float/2addr p2, v0

    div-float/2addr p3, p2

    add-float/2addr p3, v3

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p3, p3, p2

    float-to-int p2, p3

    :goto_4
    const/16 p3, 0x258

    .line 49
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 50
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->G:Z

    .line 51
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 52
    invoke-static {p0}, LA7;->w(Landroid/view/View;)V

    :goto_5
    if-eqz p4, :cond_a

    .line 53
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->b(I)V

    goto :goto_6

    :cond_7
    const/4 p1, 0x0

    .line 54
    throw p1

    :cond_8
    if-eqz p4, :cond_9

    .line 55
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->b(I)V

    .line 56
    :cond_9
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 57
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 58
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->d(I)Z

    :cond_a
    :goto_6
    return-void
.end method

.method public a(IZZI)V
    .locals 4

    .line 3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    check-cast v0, LPA0;

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    if-nez p3, :cond_0

    .line 4
    iget p3, p0, Landroid/support/v4/view/ViewPager;->B:I

    if-ne p3, p1, :cond_0

    iget-object p3, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->c(Z)V

    return-void

    :cond_0
    const/4 p3, 0x1

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    move-object v3, v0

    check-cast v3, LPA0;

    if-eqz v3, :cond_9

    const/4 v3, 0x2

    if-lt p1, v3, :cond_3

    .line 7
    check-cast v0, LPA0;

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    throw v2

    .line 9
    :cond_3
    :goto_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->Q:I

    .line 10
    iget v2, p0, Landroid/support/v4/view/ViewPager;->B:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    const/4 v0, 0x0

    .line 11
    :goto_1
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 12
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LH7;

    iput-boolean p3, v2, LH7;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_5
    iget v0, p0, Landroid/support/v4/view/ViewPager;->B:I

    if-eq v0, p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    .line 14
    :goto_2
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->l0:Z

    if-eqz v0, :cond_8

    .line 15
    iput p1, p0, Landroid/support/v4/view/ViewPager;->B:I

    if-eqz p3, :cond_7

    .line 16
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->b(I)V

    .line 17
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_3

    .line 18
    :cond_8
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->e(I)V

    .line 19
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    :goto_3
    return-void

    .line 20
    :cond_9
    throw v2

    .line 21
    :cond_a
    throw v2

    .line 22
    :cond_b
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->c(Z)V

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 3

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 173
    iget v2, p0, Landroid/support/v4/view/ViewPager;->d0:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 174
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->W:F

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->d0:I

    .line 176
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->e0:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 177
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 7

    .line 136
    iget v0, p0, Landroid/support/v4/view/ViewPager;->s0:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->c(Z)V

    .line 138
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 139
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 140
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 141
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    .line 142
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 143
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 144
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->scrollTo(II)V

    if-eq v5, v1, :cond_2

    .line 145
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->d(I)Z

    .line 146
    :cond_2
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->P:Z

    move v1, v0

    const/4 v0, 0x0

    .line 147
    :goto_1
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 148
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LH7;

    .line 149
    iget-boolean v5, v4, LH7;->c:Z

    if-eqz v5, :cond_3

    .line 150
    iput-boolean v3, v4, LH7;->c:Z

    const/4 v1, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    .line 151
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->r0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, LA7;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 152
    :cond_5
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->r0:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method public final a(F)Z
    .locals 9

    .line 153
    iget v0, p0, Landroid/support/v4/view/ViewPager;->W:F

    sub-float/2addr v0, p1

    .line 154
    iput p1, p0, Landroid/support/v4/view/ViewPager;->W:F

    .line 155
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 156
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v0

    int-to-float v0, v0

    .line 157
    iget v1, p0, Landroid/support/v4/view/ViewPager;->K:F

    mul-float v1, v1, v0

    .line 158
    iget v2, p0, Landroid/support/v4/view/ViewPager;->L:F

    mul-float v2, v2, v0

    .line 159
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LH7;

    .line 160
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LH7;

    .line 161
    iget v6, v3, LH7;->b:I

    if-eqz v6, :cond_0

    .line 162
    iget v1, v3, LH7;->e:F

    mul-float v1, v1, v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 163
    :goto_0
    iget v6, v5, LH7;->b:I

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    check-cast v8, LPA0;

    if-eqz v8, :cond_6

    if-eq v6, v7, :cond_1

    .line 164
    iget v2, v5, LH7;->e:F

    mul-float v2, v2, v0

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    cmpg-float v6, p1, v1

    if-gez v6, :cond_3

    if-eqz v3, :cond_2

    sub-float p1, v1, p1

    .line 165
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->j0:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v4, 0x1

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v5, :cond_4

    sub-float/2addr p1, v2

    .line 166
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->k0:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v4, 0x1

    :cond_4
    move p1, v2

    .line 167
    :cond_5
    :goto_2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->W:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr p1, v0

    iput p1, p0, Landroid/support/v4/view/ViewPager;->W:F

    .line 168
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 169
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->d(I)Z

    return v4

    :cond_6
    const/4 p1, 0x0

    .line 170
    throw p1
.end method

.method public a(I)Z
    .locals 6

    .line 190
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    .line 191
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    .line 192
    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_4

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    const-string v5, " => "

    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "arrowScroll tried to find focus based on non-child current focused view "

    .line 198
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ViewPager"

    .line 200
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v0, v3

    .line 201
    :cond_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v3, :cond_8

    if-eq v3, v0, :cond_8

    if-ne p1, v5, :cond_6

    .line 202
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->z:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 203
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->z:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-lt v1, v2, :cond_5

    .line 204
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()Z

    move-result v0

    goto :goto_4

    .line 205
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_4
    move v2, v0

    goto :goto_6

    :cond_6
    if-ne p1, v4, :cond_c

    .line 206
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->z:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 207
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->z:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_7

    if-gt v1, v2, :cond_7

    .line 208
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->e()Z

    move-result v0

    goto :goto_4

    .line 209
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_4

    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v1, :cond_9

    goto :goto_5

    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 210
    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->e()Z

    move-result v2

    goto :goto_6

    .line 211
    :cond_b
    :goto_5
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()Z

    move-result v2

    :cond_c
    :goto_6
    if-eqz v2, :cond_d

    .line 212
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_d
    return v2
.end method

.method public a(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 178
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 179
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 182
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 183
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 184
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 185
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 186
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 187
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 188
    invoke-virtual/range {v6 .. v11}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 189
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)LH7;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    iget v4, v4, LH7;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->B:I

    if-ne v4, v5, :cond_0

    .line 8
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    .line 12
    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)LH7;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget v2, v2, LH7;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->B:I

    if-ne v2, v3, :cond_0

    .line 6
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p3, LI7;

    invoke-direct {p3}, LI7;-><init>()V

    .line 3
    :cond_0
    move-object v0, p3

    check-cast v0, LI7;

    .line 4
    iget-boolean v1, v0, LI7;->a:Z

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 6
    const-class v3, LG7;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v1, v2

    .line 7
    iput-boolean v1, v0, LI7;->a:Z

    .line 8
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->N:Z

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    .line 9
    iput-boolean v3, v0, LI7;->d:Z

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public final b()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final b(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o0:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->o0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LL7;

    if-eqz v2, :cond_0

    .line 5
    check-cast v2, Lw0;

    invoke-virtual {v2, p1}, Lw0;->a(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public final c()LH7;
    .locals 13

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-lez v0, :cond_1

    int-to-float v4, v3

    int-to-float v0, v0

    div-float v0, v4, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v5, v4

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 6
    :goto_2
    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_8

    .line 7
    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LH7;

    if-nez v7, :cond_3

    .line 8
    iget v12, v11, LH7;->b:I

    add-int/2addr v8, v6

    if-eq v12, v8, :cond_3

    .line 9
    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->y:LH7;

    add-float/2addr v9, v10

    add-float/2addr v9, v0

    .line 10
    iput v9, v11, LH7;->e:F

    .line 11
    iput v8, v11, LH7;->b:I

    .line 12
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    if-eqz v8, :cond_2

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v11, LH7;->d:F

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 13
    :cond_2
    throw v4

    .line 14
    :cond_3
    :goto_3
    iget v9, v11, LH7;->e:F

    .line 15
    iget v8, v11, LH7;->d:F

    add-float/2addr v8, v9

    add-float/2addr v8, v0

    if-nez v7, :cond_5

    cmpl-float v7, v2, v9

    if-ltz v7, :cond_4

    goto :goto_4

    :cond_4
    return-object v5

    :cond_5
    :goto_4
    cmpg-float v5, v2, v8

    if-ltz v5, :cond_7

    .line 16
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    if-ne v1, v5, :cond_6

    goto :goto_5

    .line 17
    :cond_6
    iget v8, v11, LH7;->b:I

    .line 18
    iget v10, v11, LH7;->d:F

    add-int/lit8 v1, v1, 0x1

    move-object v5, v11

    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    :goto_5
    return-object v11

    :cond_8
    return-object v5
.end method

.method public c(I)LH7;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH7;

    .line 3
    iget v2, v1, LH7;->b:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Z)V
    .locals 1

    .line 19
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->O:Z

    if-eq v0, p1, :cond_0

    .line 20
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->O:Z

    :cond_0
    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    .line 4
    iget v0, p0, Landroid/support/v4/view/ViewPager;->K:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    .line 5
    iget v0, p0, Landroid/support/v4/view/ViewPager;->L:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, LI7;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeScroll()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->G:Z

    .line 2
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 5
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 6
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 7
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 8
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->d(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 11
    :cond_1
    invoke-static {p0}, LA7;->w(Landroid/view/View;)V

    return-void

    .line 12
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Z)V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 15
    iget v0, p0, Landroid/support/v4/view/ViewPager;->B:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2
    iget-boolean p1, p0, Landroid/support/v4/view/ViewPager;->l0:Z

    if-eqz p1, :cond_0

    return v2

    .line 3
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->m0:Z

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, v2, p1, v2}, Landroid/support/v4/view/ViewPager;->a(IFI)V

    .line 5
    iget-boolean p1, p0, Landroid/support/v4/view/ViewPager;->m0:Z

    if-eqz p1, :cond_1

    return v2

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->c()LH7;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v3

    add-int/lit8 v4, v3, 0x0

    int-to-float v5, v2

    int-to-float v3, v3

    div-float/2addr v5, v3

    .line 9
    iget v6, v0, LH7;->b:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 10
    iget v3, v0, LH7;->e:F

    sub-float/2addr p1, v3

    iget v0, v0, LH7;->d:F

    add-float/2addr v0, v5

    div-float/2addr p1, v0

    int-to-float v0, v4

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 11
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->m0:Z

    .line 12
    invoke-virtual {p0, v6, p1, v0}, Landroid/support/v4/view/ViewPager;->a(IFI)V

    .line 13
    iget-boolean p1, p0, Landroid/support/v4/view/ViewPager;->m0:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x15

    const/4 v4, 0x2

    if-eq v0, v3, :cond_4

    const/16 v3, 0x16

    if-eq v0, v3, :cond_2

    const/16 v3, 0x3d

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->a(I)Z

    move-result p1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->a(I)Z

    move-result p1

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->e()Z

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x42

    .line 10
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->a(I)Z

    move-result p1

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()Z

    move-result p1

    goto :goto_1

    :cond_5
    const/16 p1, 0x11

    .line 13
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->a(I)Z

    move-result p1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)LH7;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    iget v4, v4, LH7;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->B:I

    if-ne v4, v5, :cond_1

    .line 8
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    if-eqz v0, :cond_1

    .line 4
    check-cast v0, LPA0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_1
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->j0:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 7
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->k0:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j0:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    .line 12
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    iget v5, p0, Landroid/support/v4/view/ViewPager;->K:F

    int-to-float v6, v3

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->j0:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 15
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->j0:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 16
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 17
    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->k0:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    .line 21
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->L:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 23
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->k0:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 24
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->k0:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 25
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 26
    invoke-static {p0}, LA7;->w(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    return-void
.end method

.method public e(I)V
    .locals 14

    .line 1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->B:I

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)LH7;

    move-result-object v0

    .line 3
    iput p1, p0, Landroid/support/v4/view/ViewPager;->B:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-boolean p1, p0, Landroid/support/v4/view/ViewPager;->P:Z

    if-eqz p1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 7
    :cond_3
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    invoke-virtual {p1, p0}, Lv7;->b(Landroid/view/ViewGroup;)V

    .line 8
    iget p1, p0, Landroid/support/v4/view/ViewPager;->Q:I

    .line 9
    iget v1, p0, Landroid/support/v4/view/ViewPager;->B:I

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 10
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    check-cast v3, LPA0;

    if-eqz v3, :cond_38

    .line 11
    iget v3, p0, Landroid/support/v4/view/ViewPager;->B:I

    add-int/2addr v3, p1

    const/4 p1, 0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 12
    iget v4, p0, Landroid/support/v4/view/ViewPager;->w:I

    const/4 v5, 0x2

    if-ne v5, v4, :cond_37

    const/4 v4, 0x0

    .line 13
    :goto_1
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 14
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LH7;

    .line 15
    iget v7, v6, LH7;->b:I

    iget v8, p0, Landroid/support/v4/view/ViewPager;->B:I

    if-lt v7, v8, :cond_4

    if-ne v7, v8, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_6

    .line 16
    iget v6, p0, Landroid/support/v4/view/ViewPager;->B:I

    invoke-virtual {p0, v6, v4}, Landroid/support/v4/view/ViewPager;->a(II)LH7;

    move-result-object v6

    :cond_6
    if-eqz v6, :cond_2e

    add-int/lit8 v2, v4, -0x1

    if-ltz v2, :cond_7

    .line 17
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LH7;

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    .line 18
    :goto_3
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    if-gtz v8, :cond_8

    const/4 v10, 0x0

    goto :goto_4

    .line 19
    :cond_8
    iget v10, v6, LH7;->d:F

    sub-float v10, v9, v10

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v8

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    .line 21
    :goto_4
    iget v11, p0, Landroid/support/v4/view/ViewPager;->B:I

    sub-int/2addr v11, p1

    const/4 v12, 0x0

    :goto_5
    if-ltz v11, :cond_e

    cmpl-float v13, v12, v10

    if-ltz v13, :cond_a

    if-ge v11, v1, :cond_a

    if-nez v7, :cond_9

    goto :goto_7

    .line 22
    :cond_9
    iget v13, v7, LH7;->b:I

    if-ne v11, v13, :cond_d

    iget-boolean v13, v7, LH7;->c:Z

    if-nez v13, :cond_d

    .line 23
    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 24
    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    iget-object v7, v7, LH7;->a:Ljava/lang/Object;

    invoke-virtual {v13, p0, v11, v7}, Lv7;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v4, -0x1

    if-ltz v2, :cond_c

    .line 25
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LH7;

    goto :goto_6

    :cond_a
    if-eqz v7, :cond_b

    .line 26
    iget v13, v7, LH7;->b:I

    if-ne v11, v13, :cond_b

    .line 27
    iget v7, v7, LH7;->d:F

    add-float/2addr v12, v7

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_c

    .line 28
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LH7;

    goto :goto_6

    :cond_b
    add-int/lit8 v7, v2, 0x1

    .line 29
    invoke-virtual {p0, v11, v7}, Landroid/support/v4/view/ViewPager;->a(II)LH7;

    move-result-object v7

    .line 30
    iget v7, v7, LH7;->d:F

    add-float/2addr v12, v7

    add-int/lit8 v4, v4, 0x1

    if-ltz v2, :cond_c

    .line 31
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LH7;

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    :cond_d
    :goto_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 32
    :cond_e
    :goto_7
    iget v1, v6, LH7;->d:F

    add-int/lit8 v2, v4, 0x1

    cmpg-float v7, v1, v9

    if-gez v7, :cond_16

    .line 33
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_f

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LH7;

    goto :goto_8

    :cond_f
    const/4 v7, 0x0

    :goto_8
    if-gtz v8, :cond_10

    const/4 v8, 0x0

    goto :goto_9

    .line 34
    :cond_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v8, v8

    div-float/2addr v10, v8

    add-float v8, v10, v9

    .line 35
    :goto_9
    iget v9, p0, Landroid/support/v4/view/ViewPager;->B:I

    add-int/2addr v9, p1

    move v10, v2

    :goto_a
    if-ge v9, v5, :cond_16

    cmpl-float v11, v1, v8

    if-ltz v11, :cond_12

    if-le v9, v3, :cond_12

    if-nez v7, :cond_11

    goto :goto_c

    .line 36
    :cond_11
    iget v11, v7, LH7;->b:I

    if-ne v9, v11, :cond_15

    iget-boolean v11, v7, LH7;->c:Z

    if-nez v11, :cond_15

    .line 37
    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    iget-object v7, v7, LH7;->a:Ljava/lang/Object;

    invoke-virtual {v11, p0, v9, v7}, Lv7;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 39
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v10, v7, :cond_14

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LH7;

    goto :goto_b

    :cond_12
    if-eqz v7, :cond_13

    .line 40
    iget v11, v7, LH7;->b:I

    if-ne v9, v11, :cond_13

    .line 41
    iget v7, v7, LH7;->d:F

    add-float/2addr v1, v7

    add-int/lit8 v10, v10, 0x1

    .line 42
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v10, v7, :cond_14

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LH7;

    goto :goto_b

    .line 43
    :cond_13
    invoke-virtual {p0, v9, v10}, Landroid/support/v4/view/ViewPager;->a(II)LH7;

    move-result-object v7

    add-int/lit8 v10, v10, 0x1

    .line 44
    iget v7, v7, LH7;->d:F

    add-float/2addr v1, v7

    .line 45
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v10, v7, :cond_14

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LH7;

    goto :goto_b

    :cond_14
    const/4 v7, 0x0

    :cond_15
    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 46
    :cond_16
    :goto_c
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    check-cast v1, LPA0;

    if-eqz v1, :cond_2d

    .line 47
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v1

    if-lez v1, :cond_17

    const/4 v3, 0x0

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    goto :goto_d

    :cond_17
    const/4 v3, 0x0

    :goto_d
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1f

    .line 48
    iget v7, v0, LH7;->b:I

    .line 49
    iget v8, v6, LH7;->b:I

    if-ge v7, v8, :cond_1b

    .line 50
    iget v8, v0, LH7;->e:F

    iget v0, v0, LH7;->d:F

    add-float/2addr v8, v0

    add-float/2addr v8, v3

    add-int/2addr v7, p1

    const/4 v0, 0x0

    .line 51
    :goto_e
    iget v9, v6, LH7;->b:I

    if-gt v7, v9, :cond_1f

    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_1f

    .line 52
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LH7;

    .line 53
    :goto_f
    iget v10, v9, LH7;->b:I

    if-le v7, v10, :cond_18

    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, p1

    if-ge v0, v10, :cond_18

    add-int/lit8 v0, v0, 0x1

    .line 54
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LH7;

    goto :goto_f

    .line 55
    :cond_18
    :goto_10
    iget v10, v9, LH7;->b:I

    if-ge v7, v10, :cond_1a

    .line 56
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    if-eqz v10, :cond_19

    add-float v10, v1, v3

    add-float/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_19
    const/4 p1, 0x0

    .line 57
    throw p1

    .line 58
    :cond_1a
    iput v8, v9, LH7;->e:F

    .line 59
    iget v9, v9, LH7;->d:F

    add-float/2addr v9, v3

    add-float/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_1b
    if-le v7, v8, :cond_1f

    .line 60
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, p1

    .line 61
    iget v0, v0, LH7;->e:F

    sub-int/2addr v7, p1

    .line 62
    :goto_11
    iget v9, v6, LH7;->b:I

    if-lt v7, v9, :cond_1f

    if-ltz v8, :cond_1f

    .line 63
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LH7;

    .line 64
    :goto_12
    iget v10, v9, LH7;->b:I

    if-ge v7, v10, :cond_1c

    if-lez v8, :cond_1c

    add-int/lit8 v8, v8, -0x1

    .line 65
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LH7;

    goto :goto_12

    .line 66
    :cond_1c
    :goto_13
    iget v10, v9, LH7;->b:I

    if-le v7, v10, :cond_1e

    .line 67
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    if-eqz v10, :cond_1d

    add-float v10, v1, v3

    sub-float/2addr v0, v10

    add-int/lit8 v7, v7, -0x1

    goto :goto_13

    :cond_1d
    const/4 p1, 0x0

    .line 68
    throw p1

    .line 69
    :cond_1e
    iget v10, v9, LH7;->d:F

    add-float/2addr v10, v3

    sub-float/2addr v0, v10

    .line 70
    iput v0, v9, LH7;->e:F

    add-int/lit8 v7, v7, -0x1

    goto :goto_11

    .line 71
    :cond_1f
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 72
    iget v7, v6, LH7;->e:F

    .line 73
    iget v8, v6, LH7;->b:I

    add-int/lit8 v9, v8, -0x1

    if-nez v8, :cond_20

    move v8, v7

    goto :goto_14

    :cond_20
    const v8, -0x800001

    .line 74
    :goto_14
    iput v8, p0, Landroid/support/v4/view/ViewPager;->K:F

    .line 75
    iget v8, v6, LH7;->b:I

    if-ne v8, p1, :cond_21

    iget v8, v6, LH7;->e:F

    iget v10, v6, LH7;->d:F

    add-float/2addr v8, v10

    sub-float/2addr v8, v1

    goto :goto_15

    :cond_21
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    :goto_15
    iput v8, p0, Landroid/support/v4/view/ViewPager;->L:F

    add-int/lit8 v4, v4, -0x1

    :goto_16
    if-ltz v4, :cond_25

    .line 76
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LH7;

    .line 77
    :goto_17
    iget v10, v8, LH7;->b:I

    if-le v9, v10, :cond_23

    .line 78
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    add-int/lit8 v9, v9, -0x1

    if-eqz v10, :cond_22

    add-float v10, v1, v3

    sub-float/2addr v7, v10

    goto :goto_17

    :cond_22
    const/4 p1, 0x0

    .line 79
    throw p1

    .line 80
    :cond_23
    iget v11, v8, LH7;->d:F

    add-float/2addr v11, v3

    sub-float/2addr v7, v11

    .line 81
    iput v7, v8, LH7;->e:F

    if-nez v10, :cond_24

    .line 82
    iput v7, p0, Landroid/support/v4/view/ViewPager;->K:F

    :cond_24
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_16

    .line 83
    :cond_25
    iget v4, v6, LH7;->e:F

    iget v7, v6, LH7;->d:F

    add-float/2addr v4, v7

    add-float/2addr v4, v3

    .line 84
    iget v7, v6, LH7;->b:I

    add-int/2addr v7, p1

    :goto_18
    if-ge v2, v0, :cond_29

    .line 85
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LH7;

    .line 86
    :goto_19
    iget v9, v8, LH7;->b:I

    if-ge v7, v9, :cond_27

    .line 87
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    add-int/lit8 v7, v7, 0x1

    if-eqz v9, :cond_26

    add-float v9, v1, v3

    add-float/2addr v4, v9

    goto :goto_19

    :cond_26
    const/4 p1, 0x0

    .line 88
    throw p1

    :cond_27
    if-ne v9, p1, :cond_28

    .line 89
    iget v9, v8, LH7;->d:F

    add-float/2addr v9, v4

    sub-float/2addr v9, v1

    iput v9, p0, Landroid/support/v4/view/ViewPager;->L:F

    .line 90
    :cond_28
    iput v4, v8, LH7;->e:F

    .line 91
    iget v8, v8, LH7;->d:F

    add-float/2addr v8, v3

    add-float/2addr v4, v8

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 92
    :cond_29
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    iget-object v1, v6, LH7;->a:Ljava/lang/Object;

    check-cast v0, Lb3;

    if-eqz v0, :cond_2c

    .line 93
    check-cast v1, Lz2;

    .line 94
    iget-object v2, v0, Lb3;->d:Lz2;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2b

    if-eqz v2, :cond_2a

    .line 95
    invoke-virtual {v2, v3}, Lz2;->e(Z)V

    .line 96
    iget-object v2, v0, Lb3;->d:Lz2;

    invoke-virtual {v2, v3}, Lz2;->f(Z)V

    .line 97
    :cond_2a
    invoke-virtual {v1, p1}, Lz2;->e(Z)V

    .line 98
    invoke-virtual {v1, p1}, Lz2;->f(Z)V

    .line 99
    iput-object v1, v0, Lb3;->d:Lz2;

    :cond_2b
    const/4 v2, 0x0

    goto :goto_1a

    :cond_2c
    const/4 p1, 0x0

    .line 100
    throw p1

    :cond_2d
    const/4 p1, 0x0

    .line 101
    throw p1

    .line 102
    :cond_2e
    :goto_1a
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    invoke-virtual {p1, p0}, Lv7;->a(Landroid/view/ViewGroup;)V

    .line 103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, p1, :cond_30

    .line 104
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, LI7;

    .line 106
    iput v0, v3, LI7;->f:I

    .line 107
    iget-boolean v4, v3, LI7;->a:Z

    if-nez v4, :cond_2f

    iget v4, v3, LI7;->c:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2f

    .line 108
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)LH7;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 109
    iget v4, v1, LH7;->d:F

    iput v4, v3, LI7;->c:F

    .line 110
    iget v1, v1, LH7;->b:I

    iput v1, v3, LI7;->e:I

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 111
    :cond_30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 112
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 113
    :goto_1c
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_32

    if-eqz v0, :cond_33

    .line 114
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_31

    goto :goto_1d

    .line 115
    :cond_31
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_1c

    .line 116
    :cond_32
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)LH7;

    move-result-object p1

    goto :goto_1e

    :cond_33
    :goto_1d
    const/4 p1, 0x0

    :goto_1e
    if-eqz p1, :cond_34

    .line 117
    iget p1, p1, LH7;->b:I

    iget v0, p0, Landroid/support/v4/view/ViewPager;->B:I

    if-eq p1, v0, :cond_36

    .line 118
    :cond_34
    :goto_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_36

    .line 119
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 120
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)LH7;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 121
    iget v0, v0, LH7;->b:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->B:I

    if-ne v0, v1, :cond_35

    .line 122
    invoke-virtual {p1, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result p1

    if-eqz p1, :cond_35

    goto :goto_20

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_36
    :goto_20
    return-void

    .line 123
    :cond_37
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_21

    .line 124
    :catch_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 125
    :goto_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Pager id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Pager class: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Problematic adapter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    const/4 p1, 0x0

    .line 128
    throw p1
.end method

.method public e()Z
    .locals 2

    .line 129
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/support/v4/view/ViewPager;->B:I

    check-cast v0, LPA0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ge v1, v0, :cond_1

    add-int/2addr v1, v0

    .line 130
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 131
    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public f(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->P:Z

    .line 2
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->l0:Z

    xor-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {p0, p1, v1, v0, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    return-void
.end method

.method public final f()Z
    .locals 2

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroid/support/v4/view/ViewPager;->d0:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->R:Z

    .line 6
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->S:Z

    .line 7
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e0:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->e0:Landroid/view/VelocityTracker;

    .line 10
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j0:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 11
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->k0:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 12
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j0:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->k0:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public g(I)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->s0:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroid/support/v4/view/ViewPager;->s0:I

    .line 3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o0:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->o0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LL7;

    if-eqz v2, :cond_1

    .line 6
    check-cast v2, Lw0;

    .line 7
    iget v3, v2, Lw0;->c:I

    iput v3, v2, Lw0;->b:I

    .line 8
    iput p1, v2, Lw0;->c:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, LI7;

    invoke-direct {v0}, LI7;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, LI7;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LI7;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    new-instance p1, LI7;

    invoke-direct {p1}, LI7;-><init>()V

    return-object p1
.end method

.method public getChildDrawingOrder(II)I
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->q0:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LI7;

    iget p1, p1, LI7;->f:I

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->l0:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->r0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v8, 0x0

    if-eq v0, v1, :cond_11

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, v6, Landroid/support/v4/view/ViewPager;->R:Z

    if-eqz v1, :cond_1

    return v9

    .line 3
    :cond_1
    iget-boolean v1, v6, Landroid/support/v4/view/ViewPager;->S:Z

    if-eqz v1, :cond_2

    return v8

    :cond_2
    const/4 v1, 0x2

    if-eqz v0, :cond_d

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    .line 4
    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 5
    :cond_4
    iget v0, v6, Landroid/support/v4/view/ViewPager;->d0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto/16 :goto_3

    .line 6
    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 7
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 8
    iget v1, v6, Landroid/support/v4/view/ViewPager;->W:F

    sub-float v1, v10, v1

    .line 9
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 10
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 11
    iget v0, v6, Landroid/support/v4/view/ViewPager;->c0:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_9

    .line 12
    iget v2, v6, Landroid/support/v4/view/ViewPager;->W:F

    .line 13
    iget v3, v6, Landroid/support/v4/view/ViewPager;->U:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_6

    if-gtz v14, :cond_7

    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget v4, v6, Landroid/support/v4/view/ViewPager;->U:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    cmpg-float v0, v1, v0

    if-gez v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_9

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    .line 14
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 15
    iput v10, v6, Landroid/support/v4/view/ViewPager;->W:F

    .line 16
    iput v12, v6, Landroid/support/v4/view/ViewPager;->a0:F

    .line 17
    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->S:Z

    return v8

    .line 18
    :cond_9
    iget v0, v6, Landroid/support/v4/view/ViewPager;->V:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_b

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v11, v11, v0

    cmpl-float v0, v11, v13

    if-lez v0, :cond_b

    .line 19
    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->R:Z

    .line 20
    invoke-virtual {p0, v9}, Landroid/support/v4/view/ViewPager;->b(Z)V

    .line 21
    invoke-virtual {p0, v9}, Landroid/support/v4/view/ViewPager;->g(I)V

    .line 22
    iget v0, v6, Landroid/support/v4/view/ViewPager;->b0:F

    iget v1, v6, Landroid/support/v4/view/ViewPager;->V:I

    int-to-float v1, v1

    if-lez v14, :cond_a

    add-float/2addr v0, v1

    goto :goto_1

    :cond_a
    sub-float/2addr v0, v1

    :goto_1
    iput v0, v6, Landroid/support/v4/view/ViewPager;->W:F

    .line 23
    iput v12, v6, Landroid/support/v4/view/ViewPager;->a0:F

    .line 24
    invoke-virtual {p0, v9}, Landroid/support/v4/view/ViewPager;->c(Z)V

    goto :goto_2

    .line 25
    :cond_b
    iget v0, v6, Landroid/support/v4/view/ViewPager;->V:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_c

    .line 26
    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->S:Z

    .line 27
    :cond_c
    :goto_2
    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager;->R:Z

    if-eqz v0, :cond_f

    .line 28
    invoke-virtual {p0, v10}, Landroid/support/v4/view/ViewPager;->a(F)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 29
    invoke-static {p0}, LA7;->w(Landroid/view/View;)V

    goto :goto_3

    .line 30
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Landroid/support/v4/view/ViewPager;->b0:F

    iput v0, v6, Landroid/support/v4/view/ViewPager;->W:F

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Landroid/support/v4/view/ViewPager;->c0:F

    iput v0, v6, Landroid/support/v4/view/ViewPager;->a0:F

    .line 32
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroid/support/v4/view/ViewPager;->d0:I

    .line 33
    iput-boolean v8, v6, Landroid/support/v4/view/ViewPager;->S:Z

    .line 34
    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->G:Z

    .line 35
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 36
    iget v0, v6, Landroid/support/v4/view/ViewPager;->s0:I

    if-ne v0, v1, :cond_e

    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    .line 37
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Landroid/support/v4/view/ViewPager;->i0:I

    if-le v0, v1, :cond_e

    .line 38
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 39
    iput-boolean v8, v6, Landroid/support/v4/view/ViewPager;->P:Z

    .line 40
    iget v0, v6, Landroid/support/v4/view/ViewPager;->B:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->e(I)V

    .line 41
    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->R:Z

    .line 42
    invoke-virtual {p0, v9}, Landroid/support/v4/view/ViewPager;->b(Z)V

    .line 43
    invoke-virtual {p0, v9}, Landroid/support/v4/view/ViewPager;->g(I)V

    goto :goto_3

    .line 44
    :cond_e
    invoke-virtual {p0, v8}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 45
    iput-boolean v8, v6, Landroid/support/v4/view/ViewPager;->R:Z

    .line 46
    :cond_f
    :goto_3
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->e0:Landroid/view/VelocityTracker;

    if-nez v0, :cond_10

    .line 47
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroid/support/v4/view/ViewPager;->e0:Landroid/view/VelocityTracker;

    .line 48
    :cond_10
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->e0:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 49
    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager;->R:Z

    return v0

    .line 50
    :cond_11
    :goto_4
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->f()Z

    return v8
.end method

.method public onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    move v10, v7

    const/4 v11, 0x0

    move v7, v5

    move v5, v4

    const/4 v4, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v4, v1, :cond_7

    .line 7
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 8
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    .line 9
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, LI7;

    .line 10
    iget-boolean v14, v12, LI7;->a:Z

    if-eqz v14, :cond_6

    .line 11
    iget v12, v12, LI7;->b:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v5

    goto :goto_1

    :cond_0
    sub-int v14, v2, v6

    .line 12
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 13
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v5

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v7

    goto :goto_2

    :cond_3
    sub-int v12, v3, v10

    .line 16
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 17
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v10, v15

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v7

    move/from16 v17, v12

    move v12, v7

    move/from16 v7, v17

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_2
    add-int/2addr v14, v8

    .line 20
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v14

    .line 21
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v16, v12

    .line 22
    invoke-virtual {v13, v14, v12, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v2, v5

    sub-int/2addr v2, v6

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_a

    .line 23
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 24
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_9

    .line 25
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, LI7;

    .line 26
    iget-boolean v9, v8, LI7;->a:Z

    if-nez v9, :cond_9

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)LH7;

    move-result-object v9

    if-eqz v9, :cond_9

    int-to-float v13, v2

    .line 27
    iget v9, v9, LH7;->e:F

    mul-float v9, v9, v13

    float-to-int v9, v9

    add-int/2addr v9, v5

    .line 28
    iget-boolean v14, v8, LI7;->d:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    .line 29
    iput-boolean v14, v8, LI7;->d:Z

    .line 30
    iget v8, v8, LI7;->c:F

    mul-float v13, v13, v8

    float-to-int v8, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    sub-int v14, v3, v7

    sub-int/2addr v14, v10

    .line 31
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 32
    invoke-virtual {v6, v8, v13}, Landroid/view/View;->measure(II)V

    .line 33
    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v9

    .line 34
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v7

    .line 35
    invoke-virtual {v6, v9, v7, v8, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 36
    :cond_a
    iput v7, v0, Landroid/support/v4/view/ViewPager;->I:I

    sub-int/2addr v3, v10

    .line 37
    iput v3, v0, Landroid/support/v4/view/ViewPager;->J:I

    .line 38
    iput v11, v0, Landroid/support/v4/view/ViewPager;->n0:I

    .line 39
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->l0:Z

    if-eqz v1, :cond_b

    .line 40
    iget v1, v0, Landroid/support/v4/view/ViewPager;->B:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    .line 41
    :goto_4
    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager;->l0:Z

    return-void
.end method

.method public onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    .line 2
    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 5
    div-int/lit8 p2, p1, 0xa

    .line 6
    iget v1, p0, Landroid/support/v4/view/ViewPager;->T:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroid/support/v4/view/ViewPager;->U:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, p2

    move p2, p1

    const/4 p1, 0x0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge p1, v1, :cond_c

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_b

    .line 12
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, LI7;

    if-eqz v3, :cond_b

    .line 13
    iget-boolean v7, v3, LI7;->a:Z

    if-eqz v7, :cond_b

    .line 14
    iget v7, v3, LI7;->b:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_1

    const/16 v9, 0x50

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x1

    :goto_2
    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_4

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_5

    :cond_5
    :goto_4
    const/high16 v9, -0x80000000

    .line 15
    :goto_5
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    goto :goto_6

    :cond_6
    move v10, p2

    :goto_6
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_7

    :cond_7
    move v10, p2

    .line 16
    :goto_7
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_8

    goto :goto_8

    :cond_8
    move v3, v2

    goto :goto_8

    :cond_9
    move v3, v2

    move v5, v9

    .line 17
    :goto_8
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 18
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 19
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_a

    .line 20
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_9

    :cond_a
    if-eqz v4, :cond_b

    .line 21
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p2, v3

    :cond_b
    :goto_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 22
    :cond_c
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 23
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->M:I

    .line 24
    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->N:Z

    .line 25
    iget p1, p0, Landroid/support/v4/view/ViewPager;->B:I

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->e(I)V

    .line 26
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->N:Z

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_a
    if-ge v0, p1, :cond_f

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_e

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, LI7;

    if-eqz v2, :cond_d

    .line 31
    iget-boolean v4, v2, LI7;->a:Z

    if-nez v4, :cond_e

    :cond_d
    int-to-float v4, p2

    .line 32
    iget v2, v2, LI7;->c:F

    mul-float v4, v4, v2

    float-to-int v2, v4

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 33
    iget v4, p0, Landroid/support/v4/view/ViewPager;->M:I

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_f
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_0
    if-eq v0, v3, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 4
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)LH7;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5
    iget v6, v6, LH7;->b:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->B:I

    if-ne v6, v7, :cond_1

    .line 6
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;

    .line 4
    iget-object v0, p1, Landroid/support/v4/view/AbsSavedState;->w:Landroid/os/Parcelable;

    .line 5
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p1, Landroid/support/v4/view/ViewPager$SavedState;->z:Landroid/os/Parcelable;

    iget-object v1, p1, Landroid/support/v4/view/ViewPager$SavedState;->A:Ljava/lang/ClassLoader;

    check-cast v0, Lb3;

    .line 8
    iget p1, p1, Landroid/support/v4/view/ViewPager$SavedState;->y:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, p1, v1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    goto :goto_0

    .line 10
    :cond_1
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->y:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->C:I

    .line 11
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->z:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/os/Parcelable;

    .line 12
    iget-object p1, p1, Landroid/support/v4/view/ViewPager$SavedState;->A:Ljava/lang/ClassLoader;

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->E:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Landroid/support/v4/view/ViewPager;->B:I

    iput v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->y:I

    .line 4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    if-eqz v0, :cond_1

    .line 5
    check-cast v0, Lb3;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-object v2, v1, Landroid/support/v4/view/ViewPager$SavedState;->z:Landroid/os/Parcelable;

    goto :goto_0

    .line 6
    :cond_0
    throw v2

    :cond_1
    :goto_0
    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_3

    const/4 p2, 0x0

    if-lez p3, :cond_1

    .line 2
    iget-object p4, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    .line 3
    iget-object p4, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {p4}, Landroid/widget/Scroller;->isFinished()Z

    move-result p4

    if-nez p4, :cond_0

    .line 4
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    .line 5
    iget p2, p0, Landroid/support/v4/view/ViewPager;->B:I

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result p3

    mul-int p3, p3, p2

    invoke-virtual {p1, p3}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    sub-int/2addr p1, p4

    add-int/2addr p1, p2

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    add-int/2addr p3, p2

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1

    .line 11
    :cond_1
    iget p3, p0, Landroid/support/v4/view/ViewPager;->B:I

    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->c(I)LH7;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 12
    iget p3, p3, LH7;->e:F

    iget p4, p0, Landroid/support/v4/view/ViewPager;->L:F

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    sub-int/2addr p1, p4

    int-to-float p1, p1

    mul-float p3, p3, p1

    float-to-int p1, p3

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    if-eq p1, p3, :cond_3

    .line 15
    invoke-virtual {p0, p2}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->A:Lv7;

    if-eqz v0, :cond_12

    check-cast v0, LPA0;

    if-eqz v0, :cond_11

    .line 3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e0:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->e0:Landroid/view/VelocityTracker;

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e0:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    const/4 v3, -0x1

    if-eq v0, v2, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_3

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    .line 8
    iget v0, p0, Landroid/support/v4/view/ViewPager;->d0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->W:F

    goto/16 :goto_3

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 11
    iput v3, p0, Landroid/support/v4/view/ViewPager;->W:F

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->d0:I

    goto/16 :goto_3

    .line 13
    :cond_4
    iget-boolean p1, p0, Landroid/support/v4/view/ViewPager;->R:Z

    if-eqz p1, :cond_f

    .line 14
    iget p1, p0, Landroid/support/v4/view/ViewPager;->B:I

    invoke-virtual {p0, p1, v2, v1, v1}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    .line 15
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->f()Z

    move-result v1

    goto/16 :goto_3

    .line 16
    :cond_5
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->R:Z

    if-nez v0, :cond_8

    .line 17
    iget v0, p0, Landroid/support/v4/view/ViewPager;->d0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 18
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->f()Z

    move-result v1

    goto/16 :goto_3

    .line 19
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 20
    iget v4, p0, Landroid/support/v4/view/ViewPager;->W:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 22
    iget v5, p0, Landroid/support/v4/view/ViewPager;->a0:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 23
    iget v6, p0, Landroid/support/v4/view/ViewPager;->V:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_8

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    .line 24
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->R:Z

    .line 25
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->b(Z)V

    .line 26
    iget v4, p0, Landroid/support/v4/view/ViewPager;->b0:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    iget v3, p0, Landroid/support/v4/view/ViewPager;->V:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    goto :goto_0

    :cond_7
    iget v3, p0, Landroid/support/v4/view/ViewPager;->V:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    :goto_0
    iput v4, p0, Landroid/support/v4/view/ViewPager;->W:F

    .line 27
    iput v0, p0, Landroid/support/v4/view/ViewPager;->a0:F

    .line 28
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->g(I)V

    .line 29
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->c(Z)V

    .line 30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 31
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 32
    :cond_8
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->R:Z

    if-eqz v0, :cond_f

    .line 33
    iget v0, p0, Landroid/support/v4/view/ViewPager;->d0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 35
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->a(F)Z

    move-result p1

    or-int/2addr v1, p1

    goto/16 :goto_3

    .line 36
    :cond_9
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->R:Z

    if-eqz v0, :cond_f

    .line 37
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e0:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 38
    iget v5, p0, Landroid/support/v4/view/ViewPager;->g0:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 39
    iget v4, p0, Landroid/support/v4/view/ViewPager;->d0:I

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 40
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->P:Z

    .line 41
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v4

    .line 42
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    .line 43
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->c()LH7;

    move-result-object v6

    int-to-float v7, v1

    int-to-float v4, v4

    div-float/2addr v7, v4

    .line 44
    iget v8, v6, LH7;->b:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    .line 45
    iget v4, v6, LH7;->e:F

    sub-float/2addr v5, v4

    iget v4, v6, LH7;->d:F

    add-float/2addr v4, v7

    div-float/2addr v5, v4

    .line 46
    iget v4, p0, Landroid/support/v4/view/ViewPager;->d0:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 47
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 48
    iget v4, p0, Landroid/support/v4/view/ViewPager;->b0:F

    sub-float/2addr p1, v4

    float-to-int p1, p1

    .line 49
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v4, p0, Landroid/support/v4/view/ViewPager;->h0:I

    if-le p1, v4, :cond_b

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v4, p0, Landroid/support/v4/view/ViewPager;->f0:I

    if-le p1, v4, :cond_b

    if-lez v0, :cond_a

    goto :goto_2

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 50
    :cond_b
    iget p1, p0, Landroid/support/v4/view/ViewPager;->B:I

    if-lt v8, p1, :cond_c

    const p1, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_c
    const p1, 0x3f19999a    # 0.6f

    :goto_1
    add-float/2addr v5, p1

    float-to-int p1, v5

    add-int/2addr v8, p1

    .line 51
    :goto_2
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    .line 52
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LH7;

    .line 53
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH7;

    .line 54
    iget p1, p1, LH7;->b:I

    iget v1, v1, LH7;->b:I

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 55
    :cond_d
    invoke-virtual {p0, v8, v2, v2, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    .line 56
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->f()Z

    move-result v1

    goto :goto_3

    .line 57
    :cond_e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->F:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 58
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->P:Z

    .line 59
    iget v0, p0, Landroid/support/v4/view/ViewPager;->B:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->e(I)V

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->b0:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->W:F

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->c0:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->a0:F

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->d0:I

    :cond_f
    :goto_3
    if-eqz v1, :cond_10

    .line 63
    invoke-static {p0}, LA7;->w(Landroid/view/View;)V

    :cond_10
    return v2

    :cond_11
    const/4 p1, 0x0

    .line 64
    throw p1

    :cond_12
    return v1
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->N:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

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
