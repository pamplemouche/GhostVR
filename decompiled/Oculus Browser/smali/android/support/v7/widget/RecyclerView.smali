.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "PG"

# interfaces
.implements Lp7;


# static fields
.field public static final T0:[I

.field public static final U0:[I

.field public static final V0:Z = false

.field public static final W0:Z

.field public static final X0:Z

.field public static final Y0:Z

.field public static final Z0:Z

.field public static final a1:Z

.field public static final b1:[Ljava/lang/Class;

.field public static final c1:Landroid/view/animation/Interpolator;


# instance fields
.field public A:LWe;

.field public A0:LCf;

.field public final B:Lji;

.field public B0:LAf;

.field public C:Z

.field public final C0:Lbh;

.field public final D:Ljava/lang/Runnable;

.field public D0:Ljava/util/List;

.field public final E:Landroid/graphics/Rect;

.field public E0:Z

.field public final F:Landroid/graphics/Rect;

.field public F0:Z

.field public final G:Landroid/graphics/RectF;

.field public G0:LHg;

.field public H:LBg;

.field public H0:Z

.field public I:LQg;

.field public I0:Lfh;

.field public J:LYg;

.field public J0:LEg;

.field public final K:Ljava/util/ArrayList;

.field public final K0:[I

.field public final L:Ljava/util/ArrayList;

.field public L0:Lr7;

.field public M:LTg;

.field public final M0:[I

.field public N:Z

.field public final N0:[I

.field public O:Z

.field public final O0:[I

.field public P:Z

.field public final P0:[I

.field public Q:Z

.field public final Q0:Ljava/util/List;

.field public R:I

.field public R0:Ljava/lang/Runnable;

.field public S:Z

.field public final S0:Lii;

.field public T:Z

.field public U:Z

.field public V:I

.field public W:Z

.field public final a0:Landroid/view/accessibility/AccessibilityManager;

.field public b0:Ljava/util/List;

.field public c0:Z

.field public d0:Z

.field public e0:I

.field public f0:I

.field public g0:LFg;

.field public h0:Landroid/widget/EdgeEffect;

.field public i0:Landroid/widget/EdgeEffect;

.field public j0:Landroid/widget/EdgeEffect;

.field public k0:Landroid/widget/EdgeEffect;

.field public l0:LJg;

.field public m0:I

.field public n0:I

.field public o0:Landroid/view/VelocityTracker;

.field public p0:I

.field public q0:I

.field public r0:I

.field public s0:I

.field public t0:I

.field public final u0:I

.field public final v0:I

.field public final w:LZg;

.field public w0:F

.field public final x:LXg;

.field public x0:F

.field public y:Landroid/support/v7/widget/RecyclerView$SavedState;

.field public y0:Z

.field public z:Lme;

.field public final z0:Lch;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010436

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Landroid/support/v7/widget/RecyclerView;->T0:[I

    new-array v1, v0, [I

    const v2, 0x10100eb

    aput v2, v1, v3

    .line 2
    sput-object v1, Landroid/support/v7/widget/RecyclerView;->U0:[I

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->W0:Z

    .line 5
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->X0:Z

    .line 6
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->Y0:Z

    .line 7
    sput-boolean v3, Landroid/support/v7/widget/RecyclerView;->Z0:Z

    .line 8
    sput-boolean v3, Landroid/support/v7/widget/RecyclerView;->a1:Z

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    .line 9
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    aput-object v2, v1, v0

    sput-object v1, Landroid/support/v7/widget/RecyclerView;->b1:[Ljava/lang/Class;

    .line 10
    new-instance v0, Lxg;

    invoke-direct {v0}, Lxg;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->c1:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 22

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    .line 2
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, LZg;

    invoke-direct {v0, v10}, LZg;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v10, Landroid/support/v7/widget/RecyclerView;->w:LZg;

    .line 4
    new-instance v0, LXg;

    invoke-direct {v0, v10}, LXg;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v10, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    .line 5
    new-instance v0, Lji;

    invoke-direct {v0}, Lji;-><init>()V

    iput-object v0, v10, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    .line 6
    new-instance v0, Lvg;

    invoke-direct {v0, v10}, Lvg;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, v10, Landroid/support/v7/widget/RecyclerView;->D:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v10, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v10, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v10, Landroid/support/v7/widget/RecyclerView;->G:Landroid/graphics/RectF;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Landroid/support/v7/widget/RecyclerView;->K:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Landroid/support/v7/widget/RecyclerView;->L:Ljava/util/ArrayList;

    const/4 v14, 0x0

    .line 12
    iput v14, v10, Landroid/support/v7/widget/RecyclerView;->R:I

    .line 13
    iput-boolean v14, v10, Landroid/support/v7/widget/RecyclerView;->c0:Z

    .line 14
    iput-boolean v14, v10, Landroid/support/v7/widget/RecyclerView;->d0:Z

    .line 15
    iput v14, v10, Landroid/support/v7/widget/RecyclerView;->e0:I

    .line 16
    iput v14, v10, Landroid/support/v7/widget/RecyclerView;->f0:I

    .line 17
    new-instance v0, LFg;

    invoke-direct {v0}, LFg;-><init>()V

    iput-object v0, v10, Landroid/support/v7/widget/RecyclerView;->g0:LFg;

    .line 18
    new-instance v0, Lkf;

    invoke-direct {v0}, Lkf;-><init>()V

    iput-object v0, v10, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    .line 19
    iput v14, v10, Landroid/support/v7/widget/RecyclerView;->m0:I

    const/4 v0, -0x1

    .line 20
    iput v0, v10, Landroid/support/v7/widget/RecyclerView;->n0:I

    const/4 v1, 0x1

    .line 21
    iput v1, v10, Landroid/support/v7/widget/RecyclerView;->w0:F

    .line 22
    iput v1, v10, Landroid/support/v7/widget/RecyclerView;->x0:F

    const/4 v15, 0x1

    .line 23
    iput-boolean v15, v10, Landroid/support/v7/widget/RecyclerView;->y0:Z

    .line 24
    new-instance v1, Lch;

    invoke-direct {v1, v10}, Lch;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, v10, Landroid/support/v7/widget/RecyclerView;->z0:Lch;

    .line 25
    sget-boolean v1, Landroid/support/v7/widget/RecyclerView;->Y0:Z

    const/16 v16, 0x0

    if-eqz v1, :cond_0

    new-instance v1, LAf;

    invoke-direct {v1}, LAf;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, v16

    :goto_0
    iput-object v1, v10, Landroid/support/v7/widget/RecyclerView;->B0:LAf;

    .line 26
    new-instance v1, Lbh;

    invoke-direct {v1}, Lbh;-><init>()V

    iput-object v1, v10, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    .line 27
    iput-boolean v14, v10, Landroid/support/v7/widget/RecyclerView;->E0:Z

    .line 28
    iput-boolean v14, v10, Landroid/support/v7/widget/RecyclerView;->F0:Z

    .line 29
    new-instance v1, LKg;

    invoke-direct {v1, v10}, LKg;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, v10, Landroid/support/v7/widget/RecyclerView;->G0:LHg;

    .line 30
    iput-boolean v14, v10, Landroid/support/v7/widget/RecyclerView;->H0:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 31
    iput-object v2, v10, Landroid/support/v7/widget/RecyclerView;->K0:[I

    new-array v2, v1, [I

    .line 32
    iput-object v2, v10, Landroid/support/v7/widget/RecyclerView;->M0:[I

    new-array v2, v1, [I

    .line 33
    iput-object v2, v10, Landroid/support/v7/widget/RecyclerView;->N0:[I

    new-array v2, v1, [I

    .line 34
    iput-object v2, v10, Landroid/support/v7/widget/RecyclerView;->O0:[I

    new-array v2, v1, [I

    .line 35
    iput-object v2, v10, Landroid/support/v7/widget/RecyclerView;->P0:[I

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Landroid/support/v7/widget/RecyclerView;->Q0:Ljava/util/List;

    .line 37
    new-instance v2, Lwg;

    invoke-direct {v2, v10}, Lwg;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v2, v10, Landroid/support/v7/widget/RecyclerView;->R0:Ljava/lang/Runnable;

    .line 38
    new-instance v2, Lyg;

    invoke-direct {v2, v10}, Lyg;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v2, v10, Landroid/support/v7/widget/RecyclerView;->S0:Lii;

    if-eqz v12, :cond_1

    .line 39
    sget-object v2, Landroid/support/v7/widget/RecyclerView;->U0:[I

    invoke-virtual {v11, v12, v2, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 40
    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v10, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 41
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 42
    :cond_1
    iput-boolean v15, v10, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 43
    :goto_1
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->setScrollContainer(Z)V

    .line 44
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 45
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, v10, Landroid/support/v7/widget/RecyclerView;->t0:I

    .line 47
    invoke-static {v2, v11}, LB7;->b(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v3

    iput v3, v10, Landroid/support/v7/widget/RecyclerView;->w0:F

    .line 48
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_2

    .line 49
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v3

    goto :goto_2

    .line 50
    :cond_2
    invoke-static {v2, v11}, LB7;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v3

    .line 51
    :goto_2
    iput v3, v10, Landroid/support/v7/widget/RecyclerView;->x0:F

    .line 52
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, v10, Landroid/support/v7/widget/RecyclerView;->u0:I

    .line 53
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, v10, Landroid/support/v7/widget/RecyclerView;->v0:I

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v2

    if-ne v2, v1, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 55
    iget-object v2, v10, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    iget-object v3, v10, Landroid/support/v7/widget/RecyclerView;->G0:LHg;

    .line 56
    iput-object v3, v2, LJg;->a:LHg;

    .line 57
    new-instance v2, Lme;

    new-instance v3, LAg;

    invoke-direct {v3, v10}, LAg;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v2, v3}, Lme;-><init>(Lke;)V

    iput-object v2, v10, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    .line 58
    new-instance v2, LWe;

    new-instance v3, Lzg;

    invoke-direct {v3, v10}, Lzg;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v2, v3}, LWe;-><init>(LVe;)V

    iput-object v2, v10, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    .line 59
    invoke-static/range {p0 .. p0}, LA7;->h(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x8

    .line 60
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_4

    .line 61
    invoke-virtual {v10, v2}, Landroid/view/View;->setImportantForAutofill(I)V

    .line 62
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 63
    invoke-virtual {v10, v15}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 64
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    .line 65
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, v10, Landroid/support/v7/widget/RecyclerView;->a0:Landroid/view/accessibility/AccessibilityManager;

    .line 66
    new-instance v2, Lfh;

    invoke-direct {v2, v10}, Lfh;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 67
    iput-object v2, v10, Landroid/support/v7/widget/RecyclerView;->I0:Lfh;

    .line 68
    invoke-static {v10, v2}, LA7;->a(Landroid/view/View;Lh7;)V

    const/high16 v2, 0x40000

    if-eqz v12, :cond_d

    .line 69
    sget-object v3, LeS;->A0:[I

    invoke-virtual {v11, v12, v3, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v3, 0x7

    .line 70
    invoke-virtual {v9, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 71
    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ne v3, v0, :cond_6

    .line 72
    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 73
    :cond_6
    invoke-virtual {v9, v1, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v10, Landroid/support/v7/widget/RecyclerView;->P:Z

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    .line 74
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    const/4 v0, 0x6

    .line 75
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 76
    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    .line 77
    invoke-virtual {v9, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    new-instance v1, Luf;

    const v2, 0x7f07012e

    .line 80
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v2, 0x7f070130

    .line 81
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v2, 0x7f07012f

    .line 82
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/16 v18, 0x3

    const/16 v19, 0x4

    const/16 v20, 0x2

    move-object/from16 v2, p0

    move-object/from16 v21, v9

    move v9, v0

    invoke-direct/range {v1 .. v9}, Luf;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    goto :goto_4

    .line 83
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set fast scroller without both required drawables."

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 84
    invoke-static {v10, v1}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v21, v9

    const/16 v19, 0x4

    const/16 v18, 0x3

    const/16 v20, 0x2

    :goto_4
    const/4 v0, 0x4

    .line 85
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    const-string v1, ": Could not instantiate the LayoutManager: "

    if-eqz v17, :cond_c

    .line 86
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 88
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_9

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_9
    const-string v3, "."

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_5

    .line 91
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    :goto_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 93
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    goto :goto_6

    .line 94
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 95
    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, LQg;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 96
    :try_start_1
    sget-object v4, Landroid/support/v7/widget/RecyclerView;->b1:[Ljava/lang/Class;

    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v11, v0, v14

    aput-object v12, v0, v15

    .line 98
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v20

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v18
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v4, v0

    :try_start_2
    new-array v0, v14, [Ljava/lang/Class;

    .line 99
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v0, v16

    .line 100
    :goto_7
    :try_start_3
    invoke-virtual {v4, v15}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 101
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQg;

    invoke-virtual {v10, v0}, Landroid/support/v7/widget/RecyclerView;->a(LQg;)V

    goto/16 :goto_8

    :catch_1
    move-exception v0

    .line 102
    invoke-virtual {v0, v4}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 103
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Error creating LayoutManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Class is not a LayoutManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    .line 105
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Cannot access non-public constructor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    .line 106
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_5
    move-exception v0

    .line 107
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_6
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Unable to find LayoutManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 109
    :cond_c
    :goto_8
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->T0:[I

    invoke-virtual {v11, v12, v0, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_9

    .line 112
    :cond_d
    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 113
    :goto_9
    invoke-virtual {v10, v15}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LRg;

    .line 263
    iget-object v1, v0, LRg;->b:Landroid/graphics/Rect;

    .line 264
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 267
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    .line 268
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method public static d(Ldh;)V
    .locals 3

    .line 210
    iget-object v0, p0, Ldh;->x:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 211
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 212
    iget-object v2, p0, Ldh;->w:Landroid/view/View;

    if-ne v0, v2, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 214
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 215
    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 216
    :cond_2
    iput-object v1, p0, Ldh;->x:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method

.method public static f(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;
    .locals 4

    .line 15
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 16
    :cond_0
    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 17
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    return-object p0

    .line 18
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 20
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 21
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static g(Landroid/view/View;)Ldh;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, LRg;

    iget-object p0, p0, LRg;->a:Ldh;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 199
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->v()V

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 286
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m()Lr7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr7;->c(I)V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 165
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h0:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 166
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h0:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h0:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j0:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 169
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->j0:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 170
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->j0:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 171
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->i0:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    .line 172
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->i0:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 173
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->i0:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 174
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->k0:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    .line 175
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->k0:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 176
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->k0:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_3
    if-eqz v0, :cond_4

    .line 177
    invoke-static {p0}, LA7;->w(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public a(IIZ)V
    .locals 8

    add-int v0, p1, p2

    .line 244
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v1}, LWe;->b()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v1, :cond_2

    .line 245
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v4, v2}, LWe;->d(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 246
    invoke-virtual {v4}, Ldh;->n()Z

    move-result v5

    if-nez v5, :cond_1

    .line 247
    iget v5, v4, Ldh;->y:I

    const/4 v6, 0x1

    if-lt v5, v0, :cond_0

    neg-int v3, p2

    .line 248
    invoke-virtual {v4, v3, p3}, Ldh;->a(IZ)V

    .line 249
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iput-boolean v6, v3, Lbh;->f:Z

    goto :goto_1

    :cond_0
    if-lt v5, p1, :cond_1

    add-int/lit8 v5, p1, -0x1

    neg-int v7, p2

    .line 250
    invoke-virtual {v4, v3}, Ldh;->a(I)V

    .line 251
    invoke-virtual {v4, v7, p3}, Ldh;->a(IZ)V

    .line 252
    iput v5, v4, Ldh;->y:I

    .line 253
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iput-boolean v6, v3, Lbh;->f:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    .line 255
    iget-object v2, v1, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_5

    .line 256
    iget-object v4, v1, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldh;

    if-eqz v4, :cond_3

    .line 257
    iget v5, v4, Ldh;->y:I

    if-lt v5, v0, :cond_4

    neg-int v5, p2

    .line 258
    invoke-virtual {v4, v5, p3}, Ldh;->a(IZ)V

    goto :goto_2

    :cond_4
    if-lt v5, p1, :cond_3

    .line 259
    invoke-virtual {v4, v3}, Ldh;->a(I)V

    .line 260
    invoke-virtual {v1, v2}, LXg;->c(I)V

    goto :goto_2

    .line 261
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public a(II[I)V
    .locals 8

    .line 110
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 111
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    const-string v0, "RV Scroll"

    .line 112
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Lbh;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 114
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v1, p1, v2, v3}, LQg;->a(ILXg;Lbh;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 115
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v1, p2, v2, v3}, LQg;->b(ILXg;Lbh;)I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 116
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 117
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v1}, LWe;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    .line 118
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v3, v2}, LWe;->b(I)Landroid/view/View;

    move-result-object v3

    .line 119
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Ldh;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 120
    iget-object v4, v4, Ldh;->E:Ldh;

    if-eqz v4, :cond_3

    .line 121
    iget-object v4, v4, Ldh;->w:Landroid/view/View;

    .line 122
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 123
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 124
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    if-eq v3, v6, :cond_3

    .line 125
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 126
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    .line 127
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    .line 128
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 129
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->d(Z)V

    if-eqz p3, :cond_5

    .line 130
    aput p1, p3, v0

    .line 131
    aput p2, p3, v1

    :cond_5
    return-void
.end method

.method public a(LBg;)V
    .locals 4

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->c(Z)V

    .line 6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    if-eqz v1, :cond_0

    .line 7
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->w:LZg;

    .line 8
    iget-object v1, v1, LBg;->w:LCg;

    invoke-virtual {v1, v2}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    invoke-virtual {v1, p0}, LBg;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    .line 11
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    .line 12
    iget-object v2, v1, Lme;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lme;->a(Ljava/util/List;)V

    .line 13
    iget-object v2, v1, Lme;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lme;->a(Ljava/util/List;)V

    .line 14
    iput v0, v1, Lme;->g:I

    .line 15
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 16
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    if-eqz p1, :cond_1

    .line 17
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->w:LZg;

    .line 18
    iget-object v3, p1, LBg;->w:LCg;

    invoke-virtual {v3, v2}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p1, p0}, LBg;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 20
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    const/4 v2, 0x0

    .line 21
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 22
    invoke-virtual {p1}, LXg;->a()V

    .line 23
    invoke-virtual {p1}, LXg;->b()LWg;

    move-result-object p1

    if-eqz p1, :cond_5

    if-eqz v1, :cond_2

    .line 24
    iget v1, p1, LWg;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, LWg;->b:I

    .line 25
    :cond_2
    iget v1, p1, LWg;->b:I

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 26
    :goto_0
    iget-object v2, p1, LWg;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 27
    iget-object v2, p1, LWg;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LVg;

    .line 28
    iget-object v2, v2, LVg;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-eqz v3, :cond_4

    .line 29
    iget v2, p1, LWg;->b:I

    add-int/2addr v2, v1

    iput v2, p1, LWg;->b:I

    .line 30
    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iput-boolean v1, p1, Lbh;->f:Z

    .line 31
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->b(Z)V

    .line 32
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void

    .line 33
    :cond_5
    throw v2
.end method

.method public a(LEg;)V
    .locals 1

    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J0:LEg;

    if-ne p1, v0, :cond_0

    return-void

    .line 105
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->J0:LEg;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 106
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public a(LJg;)V
    .locals 2

    .line 206
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, LJg;->b()V

    .line 208
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    const/4 v1, 0x0

    .line 209
    iput-object v1, v0, LJg;->a:LHg;

    .line 210
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    if-eqz p1, :cond_1

    .line 211
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G0:LHg;

    .line 212
    iput-object v0, p1, LJg;->a:LHg;

    :cond_1
    return-void
.end method

.method public a(LLg;)V
    .locals 2

    .line 97
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz v0, :cond_0

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    .line 98
    invoke-virtual {v0, v1}, LQg;->a(Ljava/lang/String;)V

    .line 99
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 101
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    .line 103
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public a(LQg;)V
    .locals 7

    .line 34
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-ne p1, v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    .line 36
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 37
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {v0}, LJg;->b()V

    .line 39
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {v0, v3}, LQg;->b(LXg;)V

    .line 40
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {v0, v3}, LQg;->c(LXg;)V

    .line 41
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {v0}, LXg;->a()V

    .line 42
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->N:Z

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    .line 44
    iput-boolean v1, v0, LQg;->h:Z

    .line 45
    invoke-virtual {v0, p0, v3}, LQg;->a(Landroid/support/v7/widget/RecyclerView;LXg;)V

    .line 46
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v0, v2}, LQg;->c(Landroid/support/v7/widget/RecyclerView;)V

    .line 47
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    goto :goto_0

    .line 48
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {v0}, LXg;->a()V

    .line 49
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    .line 50
    iget-object v3, v0, LWe;->b:LUe;

    const-wide/16 v4, 0x0

    .line 51
    iput-wide v4, v3, LUe;->a:J

    .line 52
    iget-object v3, v3, LUe;->b:LUe;

    if-eqz v3, :cond_4

    .line 53
    invoke-virtual {v3}, LUe;->b()V

    .line 54
    :cond_4
    iget-object v3, v0, LWe;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_7

    .line 55
    iget-object v4, v0, LWe;->a:LVe;

    iget-object v5, v0, LWe;->c:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    check-cast v4, Lzg;

    if-eqz v4, :cond_6

    .line 56
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 57
    iget-object v4, v4, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    .line 58
    iget v6, v5, Ldh;->L:I

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView;->a(Ldh;I)Z

    .line 59
    iput v1, v5, Ldh;->L:I

    .line 60
    :cond_5
    iget-object v4, v0, LWe;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 61
    :cond_6
    throw v2

    .line 62
    :cond_7
    iget-object v0, v0, LWe;->a:LVe;

    check-cast v0, Lzg;

    .line 63
    invoke-virtual {v0}, Lzg;->a()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_8

    .line 64
    invoke-virtual {v0, v1}, Lzg;->a(I)Landroid/view/View;

    move-result-object v3

    .line 65
    iget-object v4, v0, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)V

    .line 66
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 67
    :cond_8
    iget-object v0, v0, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 68
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz p1, :cond_a

    .line 69
    iget-object v0, p1, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_9

    .line 70
    invoke-virtual {p1, p0}, LQg;->c(Landroid/support/v7/widget/RecyclerView;)V

    .line 71
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->N:Z

    if-eqz p1, :cond_a

    .line 72
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p1, LQg;->h:Z

    goto :goto_3

    .line 74
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a RecyclerView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    .line 75
    invoke-static {p1, v1}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_a
    :goto_3
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {p1}, LXg;->d()V

    .line 77
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public a(LUg;)V
    .locals 1

    .line 107
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D0:Ljava/util/List;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D0:Ljava/util/List;

    .line 109
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 3

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->n0:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 203
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->n0:I

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->r0:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->p0:I

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->s0:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->q0:I

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 6

    .line 269
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v0

    .line 270
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    throw v2

    .line 272
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b0:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 273
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_5

    .line 274
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LSg;

    check-cast v1, Lxi;

    .line 275
    invoke-virtual {v1, p1}, Lxi;->a(Landroid/view/View;)V

    .line 276
    iget-object v3, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Ldh;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 277
    :cond_2
    iget-object v4, v1, Lxi;->c:Ldh;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    if-ne v3, v4, :cond_3

    .line 278
    invoke-virtual {v1, v2, v5}, Lxi;->c(Ldh;I)V

    goto :goto_2

    .line 279
    :cond_3
    invoke-virtual {v1, v3, v5}, Lxi;->a(Ldh;Z)V

    .line 280
    iget-object v4, v1, Lxi;->a:Ljava/util/List;

    iget-object v5, v3, Ldh;->w:Landroid/view/View;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 281
    iget-object v4, v1, Lxi;->m:Lsi;

    iget-object v1, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v1, v3}, Lsi;->a(Landroid/support/v7/widget/RecyclerView;Ldh;)V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 178
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 180
    instance-of v1, v0, LRg;

    if-eqz v1, :cond_1

    .line 181
    check-cast v0, LRg;

    .line 182
    iget-boolean v1, v0, LRg;->c:Z

    if-nez v1, :cond_1

    .line 183
    iget-object v0, v0, LRg;->b:Landroid/graphics/Rect;

    .line 184
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 185
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 186
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 187
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-eqz p2, :cond_2

    .line 188
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 189
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 190
    :cond_2
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:Z

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    if-nez p2, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, LQg;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method public final a(Lbh;)V
    .locals 3

    .line 91
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->m0:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z0:Lch;

    iget-object v0, v0, Lch;->y:Landroid/widget/OverScroller;

    .line 93
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Lbh;->o:I

    .line 94
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p1, Lbh;->p:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 95
    iput v0, p1, Lbh;->o:I

    .line 96
    iput v0, p1, Lbh;->p:I

    :goto_0
    return-void
.end method

.method public final a(Ldh;)V
    .locals 5

    .line 78
    iget-object v0, p1, Ldh;->w:Landroid/view/View;

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 80
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Ldh;

    move-result-object v4

    invoke-virtual {v3, v4}, LXg;->b(Ldh;)V

    .line 81
    invoke-virtual {p1}, Ldh;->k()Z

    move-result p1

    const/4 v3, -0x1

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1, v2}, LWe;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 83
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    .line 84
    invoke-virtual {p1, v0, v3, v2}, LWe;->a(Landroid/view/View;IZ)V

    goto :goto_1

    .line 85
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    .line 86
    iget-object v1, p1, LWe;->a:LVe;

    check-cast v1, Lzg;

    .line 87
    iget-object v1, v1, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 88
    iget-object v2, p1, LWe;->b:LUe;

    invoke-virtual {v2, v1}, LUe;->e(I)V

    .line 89
    invoke-virtual {p1, v0}, LWe;->a(Landroid/view/View;)V

    :goto_1
    return-void

    .line 90
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view is not a child, cannot hide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ldh;LIg;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 229
    invoke-virtual {p1, v0, v1}, Ldh;->a(II)V

    .line 230
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-boolean v0, v0, Lbh;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ldh;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p1}, Ldh;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ldh;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->c(Ldh;)J

    move-result-wide v0

    .line 233
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    .line 234
    iget-object v2, v2, Lji;->b:LQ6;

    invoke-virtual {v2, v0, v1, p1}, LQ6;->c(JLjava/lang/Object;)V

    .line 235
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    invoke-virtual {v0, p1, p2}, Lji;->b(Ldh;LIg;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 191
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 192
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    invoke-static {p0, v0}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->f0:I

    if-lez p1, :cond_2

    .line 196
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, ""

    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    invoke-static {p0, v0}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v0, "RecyclerView"

    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    .line 198
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 213
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->e0:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->e0:I

    if-ge v0, v1, :cond_5

    const/4 v0, 0x0

    .line 214
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->e0:I

    if-eqz p1, :cond_5

    .line 215
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    .line 216
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    if-eqz p1, :cond_1

    .line 217
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a0:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 218
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v1, 0x800

    .line 219
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 220
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 221
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 222
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->Q0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_4

    .line 223
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->Q0:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldh;

    .line 224
    iget-object v2, v1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_3

    invoke-virtual {v1}, Ldh;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 225
    :cond_2
    iget v2, v1, Ldh;->M:I

    if-eq v2, v0, :cond_3

    .line 226
    iget-object v3, v1, Ldh;->w:Landroid/view/View;

    invoke-static {v3, v2}, LA7;->f(Landroid/view/View;I)V

    .line 227
    iput v0, v1, Ldh;->M:I

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 228
    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->Q0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_5
    return-void
.end method

.method public final a([I)V
    .locals 8

    .line 236
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v0}, LWe;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 237
    aput v0, p1, v2

    .line 238
    aput v0, p1, v1

    return-void

    :cond_0
    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    :goto_0
    if-ge v3, v0, :cond_4

    .line 239
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v6, v3}, LWe;->b(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v6

    .line 240
    invoke-virtual {v6}, Ldh;->n()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 241
    :cond_1
    invoke-virtual {v6}, Ldh;->d()I

    move-result v6

    if-ge v6, v4, :cond_2

    move v4, v6

    :cond_2
    if-le v6, v5, :cond_3

    move v5, v6

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 242
    :cond_4
    aput v4, p1, v2

    .line 243
    aput v5, p1, v1

    return-void
.end method

.method public a(IIII[II)Z
    .locals 7

    .line 287
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m()Lr7;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lr7;->a(IIII[II)Z

    move-result p1

    return p1
.end method

.method public a(IILandroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 133
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->P0:[I

    invoke-virtual {v7, v8, v9, v0}, Landroid/support/v7/widget/RecyclerView;->a(II[I)V

    .line 135
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->P0:[I

    aget v1, v0, v12

    .line 136
    aget v0, v0, v11

    sub-int v2, v8, v1

    sub-int v3, v9, v0

    move v6, v0

    move v15, v1

    move v13, v2

    move v14, v3

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 137
    :goto_0
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 139
    :cond_1
    iget-object v5, v7, Landroid/support/v7/widget/RecyclerView;->M0:[I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move v2, v6

    move v3, v13

    move v4, v14

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/RecyclerView;->a(IIII[II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    iget v0, v7, Landroid/support/v7/widget/RecyclerView;->r0:I

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->M0:[I

    aget v2, v1, v12

    sub-int/2addr v0, v2

    iput v0, v7, Landroid/support/v7/widget/RecyclerView;->r0:I

    .line 141
    iget v0, v7, Landroid/support/v7/widget/RecyclerView;->s0:I

    aget v2, v1, v11

    sub-int/2addr v0, v2

    iput v0, v7, Landroid/support/v7/widget/RecyclerView;->s0:I

    if-eqz v10, :cond_2

    .line 142
    aget v0, v1, v12

    int-to-float v0, v0

    aget v1, v1, v11

    int-to-float v1, v1

    invoke-virtual {v10, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 143
    :cond_2
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->O0:[I

    aget v1, v0, v12

    iget-object v2, v7, Landroid/support/v7/widget/RecyclerView;->M0:[I

    aget v3, v2, v12

    add-int/2addr v1, v3

    aput v1, v0, v12

    .line 144
    aget v1, v0, v11

    aget v2, v2, v11

    add-int/2addr v1, v2

    aput v1, v0, v11

    goto/16 :goto_5

    .line 145
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    if-eqz v10, :cond_a

    const/16 v0, 0x2002

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_a

    .line 147
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v1, v13

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v3, v14

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    cmpg-float v6, v1, v5

    if-gez v6, :cond_5

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->h()V

    .line 149
    iget-object v6, v7, Landroid/support/v7/widget/RecyclerView;->h0:Landroid/widget/EdgeEffect;

    neg-float v10, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v10, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v2, v13

    sub-float v2, v4, v2

    .line 150
    invoke-virtual {v6, v10, v2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_2

    :cond_5
    cmpl-float v6, v1, v5

    if-lez v6, :cond_6

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->i()V

    .line 152
    iget-object v6, v7, Landroid/support/v7/widget/RecyclerView;->j0:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v1, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v2, v13

    .line 153
    invoke-virtual {v6, v10, v2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    cmpg-float v6, v3, v5

    if-gez v6, :cond_7

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->j()V

    .line 155
    iget-object v2, v7, Landroid/support/v7/widget/RecyclerView;->i0:Landroid/widget/EdgeEffect;

    neg-float v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v0, v6

    .line 156
    invoke-virtual {v2, v4, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_4

    :cond_7
    cmpl-float v6, v3, v5

    if-lez v6, :cond_8

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 158
    iget-object v2, v7, Landroid/support/v7/widget/RecyclerView;->k0:Landroid/widget/EdgeEffect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v3, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v0, v10

    sub-float/2addr v4, v0

    .line 159
    invoke-virtual {v2, v6, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :goto_4
    const/4 v2, 0x1

    :cond_8
    if-nez v2, :cond_9

    cmpl-float v0, v1, v5

    if-nez v0, :cond_9

    cmpl-float v0, v3, v5

    if-eqz v0, :cond_a

    .line 160
    :cond_9
    invoke-static/range {p0 .. p0}, LA7;->w(Landroid/view/View;)V

    .line 161
    :cond_a
    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    :cond_b
    :goto_5
    move/from16 v0, v17

    if-nez v15, :cond_c

    if-eqz v0, :cond_d

    .line 162
    :cond_c
    invoke-virtual {v7, v15, v0}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    .line 163
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_e

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_e
    if-nez v15, :cond_f

    if-eqz v0, :cond_10

    :cond_f
    const/4 v12, 0x1

    :cond_10
    return v12
.end method

.method public a(Ldh;I)Z
    .locals 1

    .line 282
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iput p2, p1, Ldh;->M:I

    .line 284
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->Q0:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1

    .line 285
    :cond_0
    iget-object p1, p1, Ldh;->w:Landroid/view/View;

    invoke-static {p1, p2}, LA7;->f(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public b(Ldh;)I
    .locals 7

    const/16 v0, 0x20c

    .line 53
    invoke-virtual {p1, v0}, Ldh;->b(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_9

    .line 54
    invoke-virtual {p1}, Ldh;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 55
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    iget p1, p1, Ldh;->y:I

    .line 56
    iget-object v2, v0, Lme;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    .line 57
    iget-object v4, v0, Lme;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lle;

    .line 58
    iget v5, v4, Lle;->a:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    iget v5, v4, Lle;->b:I

    if-ne v5, p1, :cond_2

    .line 60
    iget p1, v4, Lle;->d:I

    goto :goto_1

    :cond_2
    if-ge v5, p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 61
    :cond_3
    iget v4, v4, Lle;->d:I

    if-gt v4, p1, :cond_7

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 62
    :cond_4
    iget v5, v4, Lle;->b:I

    if-gt v5, p1, :cond_7

    .line 63
    iget v4, v4, Lle;->d:I

    add-int/2addr v5, v4

    if-le v5, p1, :cond_5

    const/4 p1, -0x1

    goto :goto_2

    :cond_5
    sub-int/2addr p1, v4

    goto :goto_1

    .line 64
    :cond_6
    iget v5, v4, Lle;->b:I

    if-gt v5, p1, :cond_7

    .line 65
    iget v4, v4, Lle;->d:I

    add-int/2addr p1, v4

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    return p1

    :cond_9
    :goto_3
    return v1
.end method

.method public b(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 44
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 45
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public b(I)Ldh;
    .locals 5

    .line 47
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->c0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 48
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v0}, LWe;->b()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 49
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v3, v2}, LWe;->d(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 50
    invoke-virtual {v3}, Ldh;->i()Z

    move-result v4

    if-nez v4, :cond_2

    .line 51
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->b(Ldh;)I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 52
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    iget-object v4, v3, Ldh;->w:Landroid/view/View;

    invoke-virtual {v1, v4}, LWe;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public b()V
    .locals 5

    .line 15
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v0}, LWe;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 16
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v3, v2}, LWe;->d(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Ldh;->n()Z

    move-result v4

    if-nez v4, :cond_0

    .line 18
    invoke-virtual {v3}, Ldh;->a()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    .line 20
    iget-object v2, v0, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 21
    iget-object v4, v0, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldh;

    .line 22
    invoke-virtual {v4}, Ldh;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 23
    :cond_2
    iget-object v2, v0, LXg;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    .line 24
    iget-object v4, v0, LXg;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldh;

    invoke-virtual {v4}, Ldh;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 25
    :cond_3
    iget-object v2, v0, LXg;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_4

    .line 27
    iget-object v3, v0, LXg;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldh;

    invoke-virtual {v3}, Ldh;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public b(II)V
    .locals 2

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    .line 9
    invoke-static {p0}, LA7;->k(Landroid/view/View;)I

    move-result v0

    .line 10
    invoke-static {p1, v1, v0}, LQg;->a(III)I

    move-result p1

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    .line 13
    invoke-static {p2, v1, v0}, LQg;->a(III)I

    move-result p2

    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public b(LLg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz v0, :cond_0

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    .line 2
    invoke-virtual {v0, v1}, LQg;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->K:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    .line 7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public b(Z)V
    .locals 5

    .line 28
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->d0:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->d0:Z

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->c0:Z

    .line 30
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {p1}, LWe;->b()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, p1, :cond_1

    .line 31
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v3, v1}, LWe;->d(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 32
    invoke-virtual {v3}, Ldh;->n()Z

    move-result v4

    if-nez v4, :cond_0

    .line 33
    invoke-virtual {v3, v2}, Ldh;->a(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    .line 35
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    .line 36
    iget-object v1, p1, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_3

    .line 37
    iget-object v3, p1, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldh;

    if-eqz v3, :cond_2

    .line 38
    invoke-virtual {v3, v2}, Ldh;->a(I)V

    const/4 v4, 0x0

    .line 39
    invoke-virtual {v3, v4}, Ldh;->a(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40
    :cond_3
    iget-object v0, p1, LXg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    if-eqz v0, :cond_4

    .line 41
    iget-boolean v0, v0, LBg;->x:Z

    if-nez v0, :cond_5

    .line 42
    :cond_4
    invoke-virtual {p1}, LXg;->c()V

    :cond_5
    return-void
.end method

.method public c(Landroid/view/View;)I
    .locals 0

    .line 50
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Ldh;->c()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public c(Ldh;)J
    .locals 2

    .line 46
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 47
    iget-boolean v0, v0, LBg;->x:Z

    if-eqz v0, :cond_0

    .line 48
    iget-wide v0, p1, Ldh;->A:J

    goto :goto_0

    .line 49
    :cond_0
    iget p1, p1, Ldh;->y:I

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public c()V
    .locals 6

    .line 7
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->c0:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    invoke-virtual {v0}, Lme;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    .line 10
    iget v0, v0, Lme;->g:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    .line 11
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    .line 12
    iget v0, v0, Lme;->g:I

    and-int/lit8 v0, v0, 0xb

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_9

    const-string v0, "RV PartialInvalidate"

    .line 13
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 15
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    .line 16
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    invoke-virtual {v0}, Lme;->d()V

    .line 17
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Z

    if-nez v0, :cond_8

    .line 18
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v0}, LWe;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 19
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v4, v1}, LWe;->b(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 20
    invoke-virtual {v4}, Ldh;->n()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 21
    :cond_4
    invoke-virtual {v4}, Ldh;->l()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    .line 22
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    goto :goto_5

    .line 23
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    invoke-virtual {v0}, Lme;->a()V

    .line 24
    :cond_8
    :goto_5
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->d(Z)V

    .line 25
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 26
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_6

    .line 27
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    invoke-virtual {v0}, Lme;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 28
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 30
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_a
    :goto_6
    return-void

    .line 31
    :cond_b
    :goto_7
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 33
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-nez v0, :cond_1

    const-string p1, "RecyclerView"

    const-string v0, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, LQg;->g(I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    return-void
.end method

.method public c(II)V
    .locals 2

    .line 52
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->f0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->f0:I

    .line 53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 55
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 56
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D0:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 58
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->D0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUg;

    invoke-virtual {v1, p0, p1, p2}, LUg;->a(Landroid/support/v7/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 59
    :cond_0
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->f0:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->f0:I

    return-void
.end method

.method public c(Z)V
    .locals 9

    .line 34
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    if-eq p1, v0, :cond_2

    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    .line 35
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    .line 37
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 39
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->S:Z

    goto :goto_0

    .line 40
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 41
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    .line 44
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->U:Z

    .line 45
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, LRg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    check-cast p1, LRg;

    invoke-virtual {v0, p1}, LQg;->a(LRg;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, LQg;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v0, v1}, LQg;->a(Lbh;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, LQg;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v0, v1}, LQg;->b(Lbh;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, LQg;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v0, v1}, LQg;->c(Lbh;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, LQg;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v0, v1}, LQg;->d(Lbh;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, LQg;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v0, v1}, LQg;->e(Lbh;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, LQg;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v0, v1}, LQg;->f(Lbh;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public d(Landroid/view/View;)Ldh;
    .locals 3

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 18

    move-object/from16 v0, p0

    .line 46
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    const-string v2, "RecyclerView"

    if-nez v1, :cond_0

    const-string v1, "No adapter attached; skipping layout"

    .line 47
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-nez v1, :cond_1

    const-string v1, "No layout manager attached; skipping layout"

    .line 49
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 50
    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lbh;->i:Z

    .line 51
    iget v1, v1, Lbh;->d:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->e()V

    .line 53
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v1, v0}, LQg;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->f()V

    goto :goto_2

    .line 55
    :cond_2
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    .line 56
    iget-object v5, v1, Lme;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v1, v1, Lme;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    .line 57
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    .line 58
    iget v1, v1, LQg;->o:I

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    if-ne v1, v5, :cond_5

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    .line 60
    iget v1, v1, LQg;->p:I

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    if-eq v1, v5, :cond_4

    goto :goto_1

    .line 62
    :cond_4
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v1, v0}, LQg;->b(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_2

    .line 63
    :cond_5
    :goto_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v1, v0}, LQg;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->f()V

    .line 65
    :goto_2
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lbh;->a(I)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    .line 68
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iput v4, v1, Lbh;->d:I

    .line 69
    iget-boolean v1, v1, Lbh;->j:Z

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eqz v1, :cond_20

    .line 70
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v1}, LWe;->a()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_3
    if-ltz v1, :cond_13

    .line 71
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v8, v1}, LWe;->b(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v8

    .line 72
    invoke-virtual {v8}, Ldh;->n()Z

    move-result v9

    if-eqz v9, :cond_6

    goto/16 :goto_6

    .line 73
    :cond_6
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->c(Ldh;)J

    move-result-wide v9

    .line 74
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    if-eqz v11, :cond_12

    .line 75
    new-instance v11, LIg;

    invoke-direct {v11}, LIg;-><init>()V

    .line 76
    iget-object v12, v8, Ldh;->w:Landroid/view/View;

    .line 77
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    iput v13, v11, LIg;->a:I

    .line 78
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, v11, LIg;->b:I

    .line 79
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    .line 80
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    .line 81
    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    .line 82
    iget-object v12, v12, Lji;->b:LQ6;

    .line 83
    invoke-virtual {v12, v9, v10, v6}, LQ6;->b(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 84
    check-cast v12, Ldh;

    if-eqz v12, :cond_10

    .line 85
    invoke-virtual {v12}, Ldh;->n()Z

    move-result v13

    if-nez v13, :cond_10

    .line 86
    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    invoke-virtual {v13, v12}, Lji;->b(Ldh;)Z

    move-result v13

    .line 87
    iget-object v14, v0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    invoke-virtual {v14, v8}, Lji;->b(Ldh;)Z

    move-result v14

    if-eqz v13, :cond_7

    if-ne v12, v8, :cond_7

    .line 88
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    invoke-virtual {v5, v8, v11}, Lji;->a(Ldh;LIg;)V

    goto/16 :goto_6

    .line 89
    :cond_7
    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    .line 90
    invoke-virtual {v15, v12, v5}, Lji;->a(Ldh;I)LIg;

    move-result-object v5

    .line 91
    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    invoke-virtual {v15, v8, v11}, Lji;->a(Ldh;LIg;)V

    .line 92
    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    const/16 v15, 0x8

    .line 93
    invoke-virtual {v11, v8, v15}, Lji;->a(Ldh;I)LIg;

    move-result-object v11

    if-nez v5, :cond_c

    .line 94
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v5}, LWe;->a()I

    move-result v5

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v5, :cond_b

    .line 95
    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v13, v11}, LWe;->b(I)Landroid/view/View;

    move-result-object v13

    .line 96
    invoke-static {v13}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v13

    if-ne v13, v8, :cond_8

    goto :goto_5

    .line 97
    :cond_8
    invoke-virtual {v0, v13}, Landroid/support/v7/widget/RecyclerView;->c(Ldh;)J

    move-result-wide v14

    cmp-long v16, v14, v9

    if-nez v16, :cond_a

    .line 98
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    const-string v2, " \n View Holder 2:"

    if-eqz v1, :cond_9

    .line 99
    iget-boolean v1, v1, LBg;->x:Z

    if-eqz v1, :cond_9

    .line 100
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {v0, v3}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {v0, v3}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 104
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " cannot be found but it is necessary for "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 107
    :cond_c
    invoke-virtual {v12, v3}, Ldh;->a(Z)V

    if-eqz v13, :cond_d

    .line 108
    invoke-virtual {v0, v12}, Landroid/support/v7/widget/RecyclerView;->a(Ldh;)V

    :cond_d
    if-eq v12, v8, :cond_f

    if-eqz v14, :cond_e

    .line 109
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->a(Ldh;)V

    .line 110
    :cond_e
    iput-object v8, v12, Ldh;->D:Ldh;

    .line 111
    invoke-virtual {v0, v12}, Landroid/support/v7/widget/RecyclerView;->a(Ldh;)V

    .line 112
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {v9, v12}, LXg;->b(Ldh;)V

    .line 113
    invoke-virtual {v8, v3}, Ldh;->a(Z)V

    .line 114
    iput-object v12, v8, Ldh;->E:Ldh;

    .line 115
    :cond_f
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    invoke-virtual {v9, v12, v8, v5, v11}, LJg;->a(Ldh;Ldh;LIg;LIg;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->s()V

    goto :goto_6

    .line 117
    :cond_10
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    invoke-virtual {v5, v8, v11}, Lji;->a(Ldh;LIg;)V

    :cond_11
    :goto_6
    add-int/lit8 v1, v1, -0x1

    const/4 v5, 0x4

    goto/16 :goto_3

    .line 118
    :cond_12
    throw v6

    .line 119
    :cond_13
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->S0:Lii;

    .line 120
    iget-object v5, v1, Lji;->a:LJ6;

    .line 121
    iget v5, v5, Ld7;->y:I

    add-int/2addr v5, v7

    :goto_7
    if-ltz v5, :cond_20

    .line 122
    iget-object v8, v1, Lji;->a:LJ6;

    invoke-virtual {v8, v5}, Ld7;->c(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ldh;

    .line 123
    iget-object v8, v1, Lji;->a:LJ6;

    invoke-virtual {v8, v5}, Ld7;->d(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhi;

    .line 124
    iget v9, v8, Lhi;->a:I

    and-int/lit8 v11, v9, 0x3

    const/4 v12, 0x3

    if-ne v11, v12, :cond_14

    .line 125
    move-object v9, v2

    check-cast v9, Lyg;

    .line 126
    iget-object v9, v9, Lyg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v9, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v10, v10, Ldh;->w:Landroid/view/View;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {v11, v10, v9}, LQg;->a(Landroid/view/View;LXg;)V

    goto/16 :goto_a

    :cond_14
    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_16

    .line 127
    iget-object v9, v8, Lhi;->b:LIg;

    if-nez v9, :cond_15

    .line 128
    move-object v9, v2

    check-cast v9, Lyg;

    .line 129
    iget-object v9, v9, Lyg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v9, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v10, v10, Ldh;->w:Landroid/view/View;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {v11, v10, v9}, LQg;->a(Landroid/view/View;LXg;)V

    goto/16 :goto_a

    .line 130
    :cond_15
    iget-object v11, v8, Lhi;->c:LIg;

    move-object v12, v2

    check-cast v12, Lyg;

    invoke-virtual {v12, v10, v9, v11}, Lyg;->b(Ldh;LIg;LIg;)V

    goto/16 :goto_a

    :cond_16
    and-int/lit8 v11, v9, 0xe

    const/16 v12, 0xe

    if-ne v11, v12, :cond_17

    .line 131
    iget-object v9, v8, Lhi;->b:LIg;

    iget-object v11, v8, Lhi;->c:LIg;

    move-object v12, v2

    check-cast v12, Lyg;

    invoke-virtual {v12, v10, v9, v11}, Lyg;->a(Ldh;LIg;LIg;)V

    goto/16 :goto_a

    :cond_17
    and-int/lit8 v11, v9, 0xc

    const/16 v12, 0xc

    if-ne v11, v12, :cond_1d

    .line 132
    iget-object v9, v8, Lhi;->b:LIg;

    iget-object v11, v8, Lhi;->c:LIg;

    move-object v15, v2

    check-cast v15, Lyg;

    if-eqz v15, :cond_1c

    .line 133
    invoke-virtual {v10, v3}, Ldh;->a(Z)V

    .line 134
    iget-object v12, v15, Lyg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v13, v12, Landroid/support/v7/widget/RecyclerView;->c0:Z

    if-eqz v13, :cond_18

    .line 135
    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    invoke-virtual {v12, v10, v10, v9, v11}, LJg;->a(Ldh;Ldh;LIg;LIg;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 136
    iget-object v9, v15, Lyg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->s()V

    goto :goto_a

    .line 137
    :cond_18
    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    check-cast v12, LAh;

    if-eqz v12, :cond_1b

    .line 138
    iget v13, v9, LIg;->a:I

    iget v14, v11, LIg;->a:I

    if-ne v13, v14, :cond_1a

    iget v13, v9, LIg;->b:I

    iget v14, v11, LIg;->b:I

    if-eq v13, v14, :cond_19

    goto :goto_8

    .line 139
    :cond_19
    invoke-virtual {v12, v10}, LJg;->a(Ldh;)V

    const/4 v9, 0x0

    goto :goto_9

    .line 140
    :cond_1a
    :goto_8
    iget v13, v9, LIg;->a:I

    iget v14, v9, LIg;->b:I

    iget v9, v11, LIg;->a:I

    iget v11, v11, LIg;->b:I

    move/from16 v16, v9

    move-object v9, v12

    move/from16 v17, v11

    move v11, v13

    move v12, v14

    move/from16 v13, v16

    move/from16 v14, v17

    invoke-virtual/range {v9 .. v14}, LAh;->a(Ldh;IIII)Z

    move-result v9

    :goto_9
    if-eqz v9, :cond_1f

    .line 141
    iget-object v9, v15, Lyg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->s()V

    goto :goto_a

    .line 142
    :cond_1b
    throw v6

    .line 143
    :cond_1c
    throw v6

    :cond_1d
    and-int/lit8 v11, v9, 0x4

    if-eqz v11, :cond_1e

    .line 144
    iget-object v9, v8, Lhi;->b:LIg;

    move-object v11, v2

    check-cast v11, Lyg;

    invoke-virtual {v11, v10, v9, v6}, Lyg;->b(Ldh;LIg;LIg;)V

    goto :goto_a

    :cond_1e
    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_1f

    .line 145
    iget-object v9, v8, Lhi;->b:LIg;

    iget-object v11, v8, Lhi;->c:LIg;

    move-object v12, v2

    check-cast v12, Lyg;

    invoke-virtual {v12, v10, v9, v11}, Lyg;->a(Ldh;LIg;LIg;)V

    .line 146
    :cond_1f
    :goto_a
    invoke-static {v8}, Lhi;->a(Lhi;)V

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_7

    .line 147
    :cond_20
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {v1, v2}, LQg;->c(LXg;)V

    .line 148
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget v2, v1, Lbh;->e:I

    iput v2, v1, Lbh;->b:I

    .line 149
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->c0:Z

    .line 150
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->d0:Z

    .line 151
    iput-boolean v3, v1, Lbh;->j:Z

    .line 152
    iput-boolean v3, v1, Lbh;->k:Z

    .line 153
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iput-boolean v3, v1, LQg;->g:Z

    .line 154
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    iget-object v1, v1, LXg;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_21

    .line 155
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 156
    :cond_21
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-boolean v2, v1, LQg;->l:Z

    if-eqz v2, :cond_22

    .line 157
    iput v3, v1, LQg;->k:I

    .line 158
    iput-boolean v3, v1, LQg;->l:Z

    .line 159
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {v1}, LXg;->d()V

    .line 160
    :cond_22
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v1, v2}, LQg;->g(Lbh;)V

    .line 161
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 162
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->d(Z)V

    .line 163
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    .line 164
    iget-object v2, v1, Lji;->a:LJ6;

    invoke-virtual {v2}, Ld7;->clear()V

    .line 165
    iget-object v1, v1, Lji;->b:LQ6;

    invoke-virtual {v1}, LQ6;->a()V

    .line 166
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->K0:[I

    aget v2, v1, v3

    aget v5, v1, v4

    .line 167
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a([I)V

    .line 168
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->K0:[I

    aget v8, v1, v3

    if-ne v8, v2, :cond_24

    aget v1, v1, v4

    if-eq v1, v5, :cond_23

    goto :goto_b

    :cond_23
    const/4 v4, 0x0

    :cond_24
    :goto_b
    if-eqz v4, :cond_25

    .line 169
    invoke-virtual {v0, v3, v3}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    .line 170
    :cond_25
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->y0:Z

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_39

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    if-eqz v1, :cond_39

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v4, 0x60000

    if-eq v1, v4, :cond_39

    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v4, 0x20000

    if-ne v1, v4, :cond_26

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_26

    goto/16 :goto_18

    .line 173
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v1

    if-nez v1, :cond_29

    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 175
    sget-boolean v4, Landroid/support/v7/widget/RecyclerView;->a1:Z

    if-eqz v4, :cond_28

    .line 176
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_28

    .line 177
    :cond_27
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v1}, LWe;->a()I

    move-result v1

    if-nez v1, :cond_29

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->requestFocus()Z

    goto/16 :goto_18

    .line 179
    :cond_28
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v4, v1}, LWe;->c(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_29

    goto/16 :goto_18

    .line 180
    :cond_29
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-wide v4, v1, Lbh;->m:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2d

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 181
    iget-boolean v1, v1, LBg;->x:Z

    if-eqz v1, :cond_2d

    if-nez v1, :cond_2a

    goto :goto_e

    .line 182
    :cond_2a
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v1}, LWe;->b()I

    move-result v1

    const/4 v8, 0x0

    move-object v9, v6

    :goto_c
    if-ge v8, v1, :cond_2e

    .line 183
    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v10, v8}, LWe;->d(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v10

    if-eqz v10, :cond_2c

    .line 184
    invoke-virtual {v10}, Ldh;->i()Z

    move-result v11

    if-nez v11, :cond_2c

    .line 185
    iget-wide v11, v10, Ldh;->A:J

    cmp-long v13, v11, v4

    if-nez v13, :cond_2c

    .line 186
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    iget-object v11, v10, Ldh;->w:Landroid/view/View;

    invoke-virtual {v9, v11}, LWe;->c(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2b

    move-object v9, v10

    goto :goto_d

    :cond_2b
    move-object v9, v10

    goto :goto_f

    :cond_2c
    :goto_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_2d
    :goto_e
    move-object v9, v6

    :cond_2e
    :goto_f
    if-eqz v9, :cond_30

    .line 187
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    iget-object v4, v9, Ldh;->w:Landroid/view/View;

    invoke-virtual {v1, v4}, LWe;->c(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, v9, Ldh;->w:Landroid/view/View;

    .line 188
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_10

    .line 189
    :cond_2f
    iget-object v6, v9, Ldh;->w:Landroid/view/View;

    goto :goto_16

    .line 190
    :cond_30
    :goto_10
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v1}, LWe;->a()I

    move-result v1

    if-lez v1, :cond_37

    .line 191
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget v1, v1, Lbh;->l:I

    if-eq v1, v7, :cond_31

    goto :goto_11

    :cond_31
    const/4 v1, 0x0

    .line 192
    :goto_11
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v4}, Lbh;->a()I

    move-result v4

    move v5, v1

    :goto_12
    if-ge v5, v4, :cond_34

    .line 193
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->b(I)Ldh;

    move-result-object v8

    if-nez v8, :cond_32

    goto :goto_14

    .line 194
    :cond_32
    iget-object v9, v8, Ldh;->w:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-eqz v9, :cond_33

    .line 195
    iget-object v1, v8, Ldh;->w:Landroid/view/View;

    :goto_13
    move-object v6, v1

    goto :goto_16

    :cond_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 196
    :cond_34
    :goto_14
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v7

    :goto_15
    if-ltz v1, :cond_37

    .line 197
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->b(I)Ldh;

    move-result-object v4

    if-nez v4, :cond_35

    goto :goto_16

    .line 198
    :cond_35
    iget-object v5, v4, Ldh;->w:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 199
    iget-object v1, v4, Ldh;->w:Landroid/view/View;

    goto :goto_13

    :cond_36
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_37
    :goto_16
    if-eqz v6, :cond_39

    .line 200
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget v1, v1, Lbh;->n:I

    int-to-long v4, v1

    cmp-long v8, v4, v2

    if-eqz v8, :cond_38

    .line 201
    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 202
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_38

    goto :goto_17

    :cond_38
    move-object v1, v6

    .line 203
    :goto_17
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 204
    :cond_39
    :goto_18
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iput-wide v2, v1, Lbh;->m:J

    .line 205
    iput v7, v1, Lbh;->l:I

    .line 206
    iput v7, v1, Lbh;->n:I

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->m0:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->m0:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1}, LQg;->e(I)V

    .line 6
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D0:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 8
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->D0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUg;

    invoke-virtual {v1, p0, p1}, LUg;->a(Landroid/support/v7/widget/RecyclerView;I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public d(II)V
    .locals 12

    .line 19
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 20
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 21
    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    if-eqz v1, :cond_1

    goto/16 :goto_6

    .line 22
    :cond_1
    invoke-virtual {v0}, LQg;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    move v5, p1

    .line 23
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {p1}, LQg;->b()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    move v6, p2

    :goto_1
    if-nez v5, :cond_4

    if-eqz v6, :cond_b

    .line 24
    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->z0:Lch;

    if-eqz p1, :cond_c

    .line 25
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 26
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p2, v0, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    int-to-double v3, v1

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int v4, v5, v5

    mul-int v7, v6, v6

    add-int/2addr v7, v4

    int-to-double v7, v7

    .line 28
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v4, v7

    .line 29
    iget-object v7, p1, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_6

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    .line 30
    :goto_3
    div-int/lit8 v8, v7, 0x2

    int-to-float v4, v4

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v4, v4, v9

    int-to-float v7, v7

    div-float/2addr v4, v7

    .line 31
    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v8, v8

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v4, v10

    const v10, 0x3ef1463b

    mul-float v4, v4, v10

    float-to-double v10, v4

    .line 32
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v4, v10

    mul-float v4, v4, v8

    add-float/2addr v4, v8

    if-lez v3, :cond_7

    const/high16 p2, 0x447a0000    # 1000.0f

    int-to-float v0, v3

    div-float/2addr v4, v0

    .line 33
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    goto :goto_5

    :cond_7
    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    move p2, v0

    :goto_4
    int-to-float p2, p2

    div-float/2addr p2, v7

    add-float/2addr p2, v9

    const/high16 v0, 0x43960000    # 300.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    :goto_5
    const/16 v0, 0x7d0

    .line 34
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 35
    sget-object p2, Landroid/support/v7/widget/RecyclerView;->c1:Landroid/view/animation/Interpolator;

    .line 36
    iget-object v0, p1, Lch;->z:Landroid/view/animation/Interpolator;

    if-eq v0, p2, :cond_9

    .line 37
    iput-object p2, p1, Lch;->z:Landroid/view/animation/Interpolator;

    .line 38
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p1, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p1, Lch;->y:Landroid/widget/OverScroller;

    .line 39
    :cond_9
    iget-object p2, p1, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    .line 40
    iput v1, p1, Lch;->x:I

    iput v1, p1, Lch;->w:I

    .line 41
    iget-object v2, p1, Lch;->y:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 42
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p2, v0, :cond_a

    .line 43
    iget-object p2, p1, Lch;->y:Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 44
    :cond_a
    invoke-virtual {p1}, Lch;->a()V

    :cond_b
    :goto_6
    return-void

    :cond_c
    const/4 p1, 0x0

    .line 45
    throw p1
.end method

.method public d(Z)V
    .locals 3

    .line 9
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 10
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 11
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    if-nez v2, :cond_1

    .line 12
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Z

    .line 13
    :cond_1
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_2

    .line 14
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->S:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 16
    :cond_2
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    if-nez p1, :cond_3

    .line 17
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Z

    .line 18
    :cond_3
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m()Lr7;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lr7;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m()Lr7;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lr7;->a(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m()Lr7;

    move-result-object v0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lr7;->a(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m()Lr7;

    move-result-object v0

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lr7;->a(IIII[II)Z

    move-result p1

    return p1
.end method

.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->K:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LLg;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v3, p1, p0, v4}, LLg;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Lbh;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h0:Landroid/widget/EdgeEffect;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 6
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    .line 7
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->h0:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 10
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 11
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i0:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 13
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v4, :cond_4

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->i0:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_5

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    or-int/2addr v3, v4

    .line 16
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 17
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j0:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 20
    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    .line 21
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v4, v4

    int-to-float v4, v4

    .line 22
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 23
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->j0:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_8

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    or-int/2addr v3, v4

    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 25
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k0:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v4, 0x43340000    # 180.0f

    .line 27
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 28
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v4, :cond_a

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v5

    int-to-float v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    .line 30
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 31
    :goto_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->k0:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_b

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v1, 0x1

    :cond_b
    or-int/2addr v1, v3

    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_8

    :cond_c
    move v1, v3

    :goto_8
    if-nez v1, :cond_d

    .line 33
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->K:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    .line 34
    invoke-virtual {p1}, LJg;->c()Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    if-eqz v1, :cond_e

    .line 35
    invoke-static {p0}, LA7;->w(Landroid/view/View;)V

    :cond_e
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public e(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LRg;

    .line 86
    iget-boolean v1, v0, LRg;->c:Z

    if-nez v1, :cond_0

    .line 87
    iget-object p1, v0, LRg;->b:Landroid/graphics/Rect;

    return-object p1

    .line 88
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    .line 89
    iget-boolean v1, v1, Lbh;->g:Z

    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v0}, LRg;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    iget-object v1, v0, LRg;->a:Ldh;

    invoke-virtual {v1}, Ldh;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    :cond_1
    iget-object p1, v0, LRg;->b:Landroid/graphics/Rect;

    return-object p1

    .line 93
    :cond_2
    iget-object v1, v0, LRg;->b:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 95
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->K:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 96
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 97
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->K:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LLg;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v5, v6, p1, p0, v7}, LLg;->a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lbh;)V

    .line 98
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 99
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 100
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v7, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 101
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    :cond_3
    iput-boolean v2, v0, LRg;->c:Z

    return-object v1
.end method

.method public final e()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbh;->a(I)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Lbh;)V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lbh;->i:Z

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    .line 6
    iget-object v3, v0, Lji;->a:LJ6;

    invoke-virtual {v3}, Ld7;->clear()V

    .line 7
    iget-object v0, v0, Lji;->b:LQ6;

    invoke-virtual {v0}, LQ6;->a()V

    .line 8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    .line 9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    .line 10
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->y0:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Ldh;

    move-result-object v3

    :goto_1
    const-wide/16 v4, -0x1

    const/4 v0, -0x1

    if-nez v3, :cond_3

    .line 14
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iput-wide v4, v3, Lbh;->m:J

    .line 15
    iput v0, v3, Lbh;->l:I

    .line 16
    iput v0, v3, Lbh;->n:I

    goto :goto_4

    .line 17
    :cond_3
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 18
    iget-boolean v7, v7, LBg;->x:Z

    if-eqz v7, :cond_4

    .line 19
    iget-wide v4, v3, Ldh;->A:J

    .line 20
    :cond_4
    iput-wide v4, v6, Lbh;->m:J

    .line 21
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->c0:Z

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual {v3}, Ldh;->i()Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, v3, Ldh;->z:I

    goto :goto_2

    .line 23
    :cond_6
    invoke-virtual {v3}, Ldh;->c()I

    move-result v5

    :goto_2
    iput v5, v4, Lbh;->l:I

    .line 24
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-object v3, v3, Ldh;->w:Landroid/view/View;

    .line 25
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    .line 26
    :cond_7
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_8

    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 27
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v0, :cond_7

    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    goto :goto_3

    .line 30
    :cond_8
    iput v5, v4, Lbh;->n:I

    .line 31
    :goto_4
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-boolean v4, v3, Lbh;->j:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->F0:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    iput-boolean v4, v3, Lbh;->h:Z

    .line 32
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->F0:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->E0:Z

    .line 33
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-boolean v4, v3, Lbh;->k:Z

    iput-boolean v4, v3, Lbh;->g:Z

    .line 34
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    invoke-virtual {v4}, LBg;->a()I

    move-result v4

    iput v4, v3, Lbh;->e:I

    .line 35
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->K0:[I

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->a([I)V

    .line 36
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-boolean v3, v3, Lbh;->j:Z

    if-eqz v3, :cond_c

    .line 37
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v3}, LWe;->a()I

    move-result v3

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_c

    .line 38
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v5, v4}, LWe;->b(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v5

    .line 39
    invoke-virtual {v5}, Ldh;->n()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v5}, Ldh;->g()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 40
    iget-boolean v6, v6, LBg;->x:Z

    if-nez v6, :cond_a

    goto :goto_7

    .line 41
    :cond_a
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    .line 42
    invoke-static {v5}, LJg;->d(Ldh;)I

    .line 43
    invoke-virtual {v5}, Ldh;->e()Ljava/util/List;

    .line 44
    invoke-virtual {v6, v5}, LJg;->c(Ldh;)LIg;

    move-result-object v6

    .line 45
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    invoke-virtual {v7, v5, v6}, Lji;->b(Ldh;LIg;)V

    .line 46
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-boolean v6, v6, Lbh;->h:Z

    if-eqz v6, :cond_b

    invoke-virtual {v5}, Ldh;->l()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5}, Ldh;->i()Z

    move-result v6

    if-nez v6, :cond_b

    .line 47
    invoke-virtual {v5}, Ldh;->n()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v5}, Ldh;->g()Z

    move-result v6

    if-nez v6, :cond_b

    .line 48
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/RecyclerView;->c(Ldh;)J

    move-result-wide v6

    .line 49
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    .line 50
    iget-object v8, v8, Lji;->b:LQ6;

    invoke-virtual {v8, v6, v7, v5}, LQ6;->c(JLjava/lang/Object;)V

    :cond_b
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 51
    :cond_c
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-boolean v3, v3, Lbh;->k:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_15

    .line 52
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v3}, LWe;->b()I

    move-result v3

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v3, :cond_e

    .line 53
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v6, v5}, LWe;->d(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v6

    .line 54
    invoke-virtual {v6}, Ldh;->n()Z

    move-result v7

    if-nez v7, :cond_d

    .line 55
    iget v7, v6, Ldh;->z:I

    if-ne v7, v0, :cond_d

    .line 56
    iget v7, v6, Ldh;->y:I

    iput v7, v6, Ldh;->z:I

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 57
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-boolean v3, v0, Lbh;->f:Z

    .line 58
    iput-boolean v2, v0, Lbh;->f:Z

    .line 59
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {v5, v6, v0}, LQg;->c(LXg;Lbh;)V

    .line 60
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iput-boolean v3, v0, Lbh;->f:Z

    const/4 v0, 0x0

    .line 61
    :goto_9
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v3}, LWe;->a()I

    move-result v3

    if-ge v0, v3, :cond_14

    .line 62
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v3, v0}, LWe;->b(I)Landroid/view/View;

    move-result-object v3

    .line 63
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ldh;->n()Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_b

    .line 65
    :cond_f
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    .line 66
    iget-object v5, v5, Lji;->a:LJ6;

    invoke-virtual {v5, v3}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhi;

    if-eqz v5, :cond_10

    .line 67
    iget v5, v5, Lhi;->a:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    goto :goto_a

    :cond_10
    const/4 v5, 0x0

    :goto_a
    if-nez v5, :cond_13

    .line 68
    invoke-static {v3}, LJg;->d(Ldh;)I

    const/16 v5, 0x2000

    .line 69
    invoke-virtual {v3, v5}, Ldh;->b(I)Z

    move-result v5

    .line 70
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    .line 71
    invoke-virtual {v3}, Ldh;->e()Ljava/util/List;

    .line 72
    invoke-virtual {v6, v3}, LJg;->c(Ldh;)LIg;

    move-result-object v6

    if-eqz v5, :cond_11

    .line 73
    invoke-virtual {p0, v3, v6}, Landroid/support/v7/widget/RecyclerView;->a(Ldh;LIg;)V

    goto :goto_b

    .line 74
    :cond_11
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    .line 75
    iget-object v7, v5, Lji;->a:LJ6;

    invoke-virtual {v7, v3}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhi;

    if-nez v7, :cond_12

    .line 76
    invoke-static {}, Lhi;->a()Lhi;

    move-result-object v7

    .line 77
    iget-object v5, v5, Lji;->a:LJ6;

    invoke-virtual {v5, v3, v7}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_12
    iget v3, v7, Lhi;->a:I

    or-int/2addr v3, v4

    iput v3, v7, Lhi;->a:I

    .line 79
    iput-object v6, v7, Lhi;->b:LIg;

    :cond_13
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 80
    :cond_14
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    goto :goto_c

    .line 81
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 82
    :goto_c
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 83
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->d(Z)V

    .line 84
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iput v4, v0, Lbh;->d:I

    return-void
.end method

.method public e(II)Z
    .locals 1

    .line 103
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m()Lr7;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lr7;->a(II)Z

    move-result p1

    return p1
.end method

.method public final f()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lbh;->a(I)V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    invoke-virtual {v0}, Lme;->b()V

    .line 5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    invoke-virtual {v1}, LBg;->a()I

    move-result v1

    iput v1, v0, Lbh;->e:I

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    const/4 v1, 0x0

    iput v1, v0, Lbh;->c:I

    .line 7
    iput-boolean v1, v0, Lbh;->g:Z

    .line 8
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {v2, v3, v0}, LQg;->c(LXg;Lbh;)V

    .line 9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iput-boolean v1, v0, Lbh;->f:Z

    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 11
    iget-boolean v2, v0, Lbh;->j:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lbh;->j:Z

    .line 12
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    const/4 v2, 0x4

    iput v2, v0, Lbh;->d:I

    .line 13
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 14
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->d(Z)V

    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 13

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/16 v5, 0x82

    const/16 v6, 0x42

    const/16 v7, 0x21

    const/16 v8, 0x11

    const/4 v9, 0x2

    if-eqz v0, :cond_d

    if-eq p2, v9, :cond_1

    if-ne p2, v4, :cond_d

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v0}, LQg;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p2, v9, :cond_2

    const/16 v0, 0x82

    goto :goto_1

    :cond_2
    const/16 v0, 0x21

    .line 6
    :goto_1
    invoke-virtual {v2, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    .line 7
    :goto_2
    sget-boolean v11, Landroid/support/v7/widget/RecyclerView;->Z0:Z

    if-eqz v11, :cond_5

    move p2, v0

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :cond_5
    :goto_3
    if-nez v10, :cond_a

    .line 8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v0}, LQg;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v0}, LQg;->f()I

    move-result v0

    if-ne v0, v4, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-ne p2, v9, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    :goto_5
    xor-int/2addr v0, v10

    if-eqz v0, :cond_8

    const/16 v0, 0x42

    goto :goto_6

    :cond_8
    const/16 v0, 0x11

    .line 10
    :goto_6
    invoke-virtual {v2, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_9

    const/4 v10, 0x1

    goto :goto_7

    :cond_9
    const/4 v10, 0x0

    .line 11
    :goto_7
    sget-boolean v11, Landroid/support/v7/widget/RecyclerView;->Z0:Z

    if-eqz v11, :cond_a

    move p2, v0

    :cond_a
    if-eqz v10, :cond_c

    .line 12
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 13
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    .line 14
    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 15
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v0, p1, p2, v10, v11}, LQg;->a(Landroid/view/View;ILXg;Lbh;)Landroid/view/View;

    .line 16
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->d(Z)V

    .line 17
    :cond_c
    invoke-virtual {v2, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 18
    :cond_d
    invoke-virtual {v2, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_f

    if-eqz v0, :cond_f

    .line 19
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 20
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    return-object v1

    .line 21
    :cond_e
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 22
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v0, p1, p2, v2, v10}, LQg;->a(Landroid/view/View;ILXg;Lbh;)Landroid/view/View;

    move-result-object v0

    .line 23
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->d(Z)V

    goto :goto_8

    :cond_f
    move-object v0, v2

    :goto_8
    if-eqz v0, :cond_11

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_11

    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_10

    .line 26
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 27
    :cond_10
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/view/View;)V

    return-object p1

    :cond_11
    if-eqz v0, :cond_26

    if-ne v0, p0, :cond_12

    goto/16 :goto_d

    .line 28
    :cond_12
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_13

    goto/16 :goto_d

    :cond_13
    if-nez p1, :cond_14

    goto/16 :goto_c

    .line 29
    :cond_14
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_15

    goto/16 :goto_c

    .line 30
    :cond_15
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v1, v3, v3, v2, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 31
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v1, v3, v3, v2, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 32
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 33
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 34
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v1}, LQg;->f()I

    move-result v1

    if-ne v1, v4, :cond_16

    const/4 v1, -0x1

    goto :goto_9

    :cond_16
    const/4 v1, 0x1

    .line 35
    :goto_9
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    if-lt v10, v11, :cond_17

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-gt v2, v11, :cond_18

    :cond_17
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    if-ge v2, v10, :cond_18

    const/4 v2, 0x1

    goto :goto_a

    .line 36
    :cond_18
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v10, v2, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    if-gt v10, v11, :cond_19

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lt v2, v11, :cond_1a

    :cond_19
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-le v2, v10, :cond_1a

    const/4 v2, -0x1

    goto :goto_a

    :cond_1a
    const/4 v2, 0x0

    .line 37
    :goto_a
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    if-lt v11, v12, :cond_1b

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    if-gt v10, v12, :cond_1c

    :cond_1b
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    if-ge v10, v11, :cond_1c

    const/4 v10, 0x1

    goto :goto_b

    .line 38
    :cond_1c
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    if-gt v11, v12, :cond_1d

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-lt v10, v12, :cond_1e

    :cond_1d
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    if-le v10, v11, :cond_1e

    const/4 v10, -0x1

    goto :goto_b

    :cond_1e
    const/4 v10, 0x0

    :goto_b
    if-eq p2, v4, :cond_24

    if-eq p2, v9, :cond_23

    if-eq p2, v8, :cond_22

    if-eq p2, v7, :cond_21

    if-eq p2, v6, :cond_20

    if-ne p2, v5, :cond_1f

    if-lez v10, :cond_26

    goto :goto_c

    .line 39
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    if-lez v2, :cond_26

    goto :goto_c

    :cond_21
    if-gez v10, :cond_26

    goto :goto_c

    :cond_22
    if-gez v2, :cond_26

    goto :goto_c

    :cond_23
    if-gtz v10, :cond_25

    if-nez v10, :cond_26

    mul-int v2, v2, v1

    if-ltz v2, :cond_26

    goto :goto_c

    :cond_24
    if-ltz v10, :cond_25

    if-nez v10, :cond_26

    mul-int v2, v2, v1

    if-gtz v2, :cond_26

    :cond_25
    :goto_c
    const/4 v3, 0x1

    :cond_26
    :goto_d
    if-eqz v3, :cond_27

    goto :goto_e

    .line 40
    :cond_27
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_e
    return-object v0

    .line 41
    :cond_28
    throw v1
.end method

.method public g()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k0:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g0:LFg;

    invoke-virtual {v0, p0}, LFg;->a(Landroid/support/v7/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k0:Landroid/widget/EdgeEffect;

    .line 3
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, LQg;->c()LRg;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, LQg;->a(Landroid/content/Context;Landroid/util/AttributeSet;)LRg;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView has no LayoutManager"

    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v0}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, LQg;->a(Landroid/view/ViewGroup$LayoutParams;)LRg;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView has no LayoutManager"

    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v0}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBaseline()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0

    .line 3
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J0:LEg;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p1

    return p1

    .line 3
    :cond_0
    check-cast v0, Lpi;

    .line 4
    iget-object v1, v0, Lpi;->a:Lxi;

    iget-object v2, v1, Lxi;->x:Landroid/view/View;

    if-nez v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget v3, v1, Lxi;->y:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 6
    iget-object v1, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 7
    iget-object v0, v0, Lpi;->a:Lxi;

    iput v1, v0, Lxi;->y:I

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    add-int/2addr p1, v4

    if-ne p2, p1, :cond_3

    move p2, v1

    goto :goto_1

    :cond_3
    if-ge p2, v1, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    :goto_1
    return p2
.end method

.method public getClipToPadding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    return v0
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h0:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g0:LFg;

    invoke-virtual {v0, p0}, LFg;->a(Landroid/support/v7/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h0:Landroid/widget/EdgeEffect;

    .line 3
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method public hasNestedScrollingParent()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m()Lr7;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lr7;->b(I)Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j0:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g0:LFg;

    invoke-virtual {v0, p0}, LFg;->a(Landroid/support/v7/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j0:Landroid/widget/EdgeEffect;

    .line 3
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->N:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m()Lr7;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Lr7;->d:Z

    return v0
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i0:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->g0:LFg;

    invoke-virtual {v0, p0}, LFg;->a(Landroid/support/v7/widget/RecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i0:Landroid/widget/EdgeEffect;

    .line 3
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 2

    const-string v0, " "

    .line 1
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()J
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->Y0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final m()Lr7;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L0:Lr7;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lr7;

    invoke-direct {v0, p0}, Lr7;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L0:Lr7;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L0:Lr7;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->c0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    .line 2
    invoke-virtual {v0}, Lme;->c()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz v0, :cond_1

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    .line 3
    invoke-virtual {v0, v1}, LQg;->a(Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->e0:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->N:Z

    .line 4
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->Q:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->Q:Z

    .line 5
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz v2, :cond_1

    .line 6
    iput-boolean v1, v2, LQg;->h:Z

    .line 7
    :cond_1
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H0:Z

    .line 8
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->Y0:Z

    if-eqz v0, :cond_4

    .line 9
    sget-object v0, LCf;->A:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCf;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A0:LCf;

    if-nez v0, :cond_3

    .line 10
    new-instance v0, LCf;

    invoke-direct {v0}, LCf;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A0:LCf;

    .line 11
    invoke-static {p0}, LA7;->d(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v0, 0x42700000    # 60.0f

    .line 14
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->A0:LCf;

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v0

    float-to-long v2, v2

    iput-wide v2, v1, LCf;->y:J

    .line 15
    sget-object v0, LCf;->A:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 16
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A0:LCf;

    .line 17
    iget-object v0, v0, LCf;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, LJg;->b()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->N:Z

    .line 6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz v1, :cond_1

    .line 7
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    .line 8
    iput-boolean v0, v1, LQg;->h:Z

    .line 9
    invoke-virtual {v1, p0, v2}, LQg;->a(Landroid/support/v7/widget/RecyclerView;LXg;)V

    .line 10
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->Q0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Lji;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 13
    :goto_0
    sget-object v0, Lhi;->d:LZ6;

    invoke-interface {v0}, LZ6;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->Y0:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A0:LCf;

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, v0, LCf;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->A0:LCf;

    :cond_3
    return-void

    .line 17
    :cond_4
    throw v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->K:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LLg;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v2, p1, p0, v3}, LLg;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Lbh;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v0}, LQg;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v3}, LQg;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0xa

    .line 8
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    const/16 v0, 0x1a

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 11
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v3}, LQg;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    neg-float v0, v0

    goto :goto_1

    .line 12
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v3}, LQg;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    const/4 v3, 0x0

    :goto_2
    cmpl-float v4, v0, v2

    if-nez v4, :cond_7

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_8

    .line 13
    :cond_7
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->w0:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->x0:F

    mul-float v0, v0, v3

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    :cond_8
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v3, 0x0

    .line 3
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->M:LTg;

    .line 4
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->L:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_4

    .line 5
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->L:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LTg;

    .line 6
    invoke-interface {v6, p0, p1}, LTg;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eq v0, v2, :cond_3

    .line 7
    iput-object v6, p0, Landroid/support/v7/widget/RecyclerView;->M:LTg;

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    return v5

    .line 9
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-nez v0, :cond_6

    return v1

    .line 10
    :cond_6
    invoke-virtual {v0}, LQg;->a()Z

    move-result v0

    .line 11
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v3}, LQg;->b()Z

    move-result v3

    .line 12
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->o0:Landroid/view/VelocityTracker;

    if-nez v4, :cond_7

    .line 13
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->o0:Landroid/view/VelocityTracker;

    .line 14
    :cond_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->o0:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    const/4 v7, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    if-eqz v4, :cond_10

    if-eq v4, v5, :cond_f

    if-eq v4, v7, :cond_b

    if-eq v4, v2, :cond_a

    const/4 v0, 0x5

    if-eq v4, v0, :cond_9

    const/4 v0, 0x6

    if-eq v4, v0, :cond_8

    goto/16 :goto_4

    .line 17
    :cond_8
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    .line 18
    :cond_9
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->n0:I

    .line 19
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->r0:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->p0:I

    .line 20
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->s0:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->q0:I

    goto/16 :goto_4

    .line 21
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    goto/16 :goto_4

    .line 22
    :cond_b
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->n0:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_c

    const-string p1, "Error processing scroll; pointer index for id "

    .line 23
    invoke-static {p1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->n0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 24
    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v4, v8

    float-to-int v4, v4

    .line 25
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    .line 26
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->m0:I

    if-eq v2, v5, :cond_15

    .line 27
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->p0:I

    sub-int v2, v4, v2

    .line 28
    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->q0:I

    sub-int v6, p1, v6

    if-eqz v0, :cond_d

    .line 29
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->t0:I

    if-le v0, v2, :cond_d

    .line 30
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->r0:I

    const/4 v0, 0x1

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    :goto_2
    if-eqz v3, :cond_e

    .line 31
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->t0:I

    if-le v2, v3, :cond_e

    .line 32
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->s0:I

    const/4 v0, 0x1

    :cond_e
    if-eqz v0, :cond_15

    .line 33
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    goto :goto_4

    .line 34
    :cond_f
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->o0:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 35
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    goto :goto_4

    .line 36
    :cond_10
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->U:Z

    if-eqz v2, :cond_11

    .line 37
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->U:Z

    .line 38
    :cond_11
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->n0:I

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float/2addr v2, v8

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->r0:I

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->p0:I

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->s0:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->q0:I

    .line 41
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->m0:I

    if-ne p1, v7, :cond_12

    .line 42
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 43
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    .line 44
    :cond_12
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->O0:[I

    aput v1, p1, v5

    aput v1, p1, v1

    if-eqz v0, :cond_13

    const/4 p1, 0x1

    goto :goto_3

    :cond_13
    const/4 p1, 0x0

    :goto_3
    if-eqz v3, :cond_14

    or-int/lit8 p1, p1, 0x2

    .line 45
    :cond_14
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->e(II)Z

    .line 46
    :cond_15
    :goto_4
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->m0:I

    if-ne p1, v5, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    const-string p1, "RV OnLayout"

    .line 1
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->Q:Z

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->b(II)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, LQg;->m()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 6
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    .line 7
    iget-object v4, v4, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, p1, p2}, Landroid/support/v7/widget/RecyclerView;->b(II)V

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_4

    .line 8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    if-nez v0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget v0, v0, Lbh;->d:I

    if-ne v0, v1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->e()V

    .line 11
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v0, p1, p2}, LQg;->a(II)V

    .line 12
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iput-boolean v1, v0, Lbh;->i:Z

    .line 13
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->f()V

    .line 14
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v0, p1, p2}, LQg;->b(II)V

    .line 15
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v0}, LQg;->p()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 16
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 19
    invoke-virtual {v0, v2, v3}, LQg;->a(II)V

    .line 20
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iput-boolean v1, v0, Lbh;->i:Z

    .line 21
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->f()V

    .line 22
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v0, p1, p2}, LQg;->b(II)V

    goto :goto_4

    :cond_4
    :goto_0
    return-void

    .line 23
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Z

    if-eqz v0, :cond_6

    .line 24
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    .line 25
    iget-object v0, v0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->b(II)V

    return-void

    .line 26
    :cond_6
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Z

    if-eqz v0, :cond_8

    .line 27
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 28
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    .line 29
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    .line 30
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 31
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-boolean v3, v0, Lbh;->k:Z

    if-eqz v3, :cond_7

    .line 32
    iput-boolean v1, v0, Lbh;->g:Z

    goto :goto_1

    .line 33
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    invoke-virtual {v0}, Lme;->b()V

    .line 34
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iput-boolean v2, v0, Lbh;->g:Z

    .line 35
    :goto_1
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->W:Z

    .line 36
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->d(Z)V

    goto :goto_2

    .line 37
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-boolean v0, v0, Lbh;->k:Z

    if-eqz v0, :cond_9

    .line 38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 39
    :cond_9
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    if-eqz v0, :cond_a

    .line 40
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    invoke-virtual {v0}, LBg;->a()I

    move-result v0

    iput v0, v1, Lbh;->e:I

    goto :goto_3

    .line 41
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iput v2, v0, Lbh;->e:I

    .line 42
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 43
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    .line 44
    iget-object v0, v0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->b(II)V

    .line 45
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->d(Z)V

    .line 46
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iput-boolean v2, p1, Lbh;->g:Z

    :cond_b
    :goto_4
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 4
    iget-object p1, p1, Landroid/support/v4/view/AbsSavedState;->w:Landroid/os/Parcelable;

    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->y:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1, v0}, LQg;->a(Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->y:Landroid/os/Parcelable;

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->y:Landroid/os/Parcelable;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, LQg;->n()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->y:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->y:Landroid/os/Parcelable;

    :goto_0
    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->k0:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->i0:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->j0:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->h0:Landroid/widget/EdgeEffect;

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView;->T:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2f

    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView;->U:Z

    if-eqz v2, :cond_0

    goto/16 :goto_10

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 3
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->M:LTg;

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    const/4 v7, 0x0

    if-nez v2, :cond_1

    .line 4
    iput-object v7, v0, Landroid/support/v7/widget/RecyclerView;->M:LTg;

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v4, v0, v1}, LTg;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    if-eq v2, v5, :cond_2

    if-ne v2, v6, :cond_4

    .line 6
    :cond_2
    iput-object v7, v0, Landroid/support/v7/widget/RecyclerView;->M:LTg;

    goto :goto_2

    :cond_3
    :goto_0
    if-eqz v2, :cond_6

    .line 7
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->L:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_6

    .line 8
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->L:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LTg;

    .line 9
    invoke-interface {v7, v0, v1}, LTg;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 10
    iput-object v7, v0, Landroid/support/v7/widget/RecyclerView;->M:LTg;

    :cond_4
    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_7

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    return v6

    .line 12
    :cond_7
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-nez v2, :cond_8

    return v3

    .line 13
    :cond_8
    invoke-virtual {v2}, LQg;->a()Z

    move-result v2

    .line 14
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v4}, LQg;->b()Z

    move-result v4

    .line 15
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->o0:Landroid/view/VelocityTracker;

    if-nez v7, :cond_9

    .line 16
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, v0, Landroid/support/v7/widget/RecyclerView;->o0:Landroid/view/VelocityTracker;

    .line 17
    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    if-nez v8, :cond_a

    .line 20
    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView;->O0:[I

    aput v3, v10, v6

    aput v3, v10, v3

    .line 21
    :cond_a
    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView;->O0:[I

    aget v11, v10, v3

    int-to-float v11, v11

    aget v10, v10, v6

    int-to-float v10, v10

    invoke-virtual {v7, v11, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v10, 0x3f000000    # 0.5f

    if-eqz v8, :cond_2b

    const-string v11, "RecyclerView"

    const/4 v12, 0x2

    if-eq v8, v6, :cond_1a

    if-eq v8, v12, :cond_e

    if-eq v8, v5, :cond_d

    const/4 v2, 0x5

    if-eq v8, v2, :cond_c

    const/4 v2, 0x6

    if-eq v8, v2, :cond_b

    goto/16 :goto_f

    .line 22
    :cond_b
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_f

    .line 23
    :cond_c
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/RecyclerView;->n0:I

    .line 24
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v10

    float-to-int v2, v2

    iput v2, v0, Landroid/support/v7/widget/RecyclerView;->r0:I

    iput v2, v0, Landroid/support/v7/widget/RecyclerView;->p0:I

    .line 25
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v1, v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView;->s0:I

    iput v1, v0, Landroid/support/v7/widget/RecyclerView;->q0:I

    goto/16 :goto_f

    .line 26
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    goto/16 :goto_f

    .line 27
    :cond_e
    iget v5, v0, Landroid/support/v7/widget/RecyclerView;->n0:I

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-gez v5, :cond_f

    const-string v1, "Error processing scroll; pointer index for id "

    .line 28
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView;->n0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 29
    :cond_f
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v8, v10

    float-to-int v8, v8

    .line 30
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v1, v1

    .line 31
    iget v5, v0, Landroid/support/v7/widget/RecyclerView;->r0:I

    sub-int/2addr v5, v8

    .line 32
    iget v9, v0, Landroid/support/v7/widget/RecyclerView;->s0:I

    sub-int v15, v9, v1

    .line 33
    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView;->N0:[I

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->M0:[I

    const/4 v14, 0x0

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->m()Lr7;

    move-result-object v9

    move v10, v5

    move v11, v15

    invoke-virtual/range {v9 .. v14}, Lr7;->a(II[I[II)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 35
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->N0:[I

    aget v10, v9, v3

    sub-int/2addr v5, v10

    .line 36
    aget v9, v9, v6

    sub-int/2addr v15, v9

    .line 37
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->M0:[I

    aget v10, v9, v3

    int-to-float v10, v10

    aget v9, v9, v6

    int-to-float v9, v9

    invoke-virtual {v7, v10, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 38
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->O0:[I

    aget v10, v9, v3

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView;->M0:[I

    aget v12, v11, v3

    add-int/2addr v10, v12

    aput v10, v9, v3

    .line 39
    aget v10, v9, v6

    aget v11, v11, v6

    add-int/2addr v10, v11

    aput v10, v9, v6

    .line 40
    :cond_10
    iget v9, v0, Landroid/support/v7/widget/RecyclerView;->m0:I

    if-eq v9, v6, :cond_15

    if-eqz v2, :cond_12

    .line 41
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, v0, Landroid/support/v7/widget/RecyclerView;->t0:I

    if-le v9, v10, :cond_12

    if-lez v5, :cond_11

    sub-int/2addr v5, v10

    goto :goto_4

    :cond_11
    add-int/2addr v5, v10

    :goto_4
    const/4 v9, 0x1

    goto :goto_5

    :cond_12
    const/4 v9, 0x0

    :goto_5
    if-eqz v4, :cond_14

    .line 42
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, v0, Landroid/support/v7/widget/RecyclerView;->t0:I

    if-le v10, v11, :cond_14

    if-lez v15, :cond_13

    sub-int/2addr v15, v11

    goto :goto_6

    :cond_13
    add-int/2addr v15, v11

    :goto_6
    const/4 v9, 0x1

    :cond_14
    if-eqz v9, :cond_15

    .line 43
    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    .line 44
    :cond_15
    iget v9, v0, Landroid/support/v7/widget/RecyclerView;->m0:I

    if-ne v9, v6, :cond_2d

    .line 45
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->M0:[I

    aget v10, v9, v3

    sub-int/2addr v8, v10

    iput v8, v0, Landroid/support/v7/widget/RecyclerView;->r0:I

    .line 46
    aget v8, v9, v6

    sub-int/2addr v1, v8

    iput v1, v0, Landroid/support/v7/widget/RecyclerView;->s0:I

    if-eqz v2, :cond_16

    move v1, v5

    goto :goto_7

    :cond_16
    const/4 v1, 0x0

    :goto_7
    if-eqz v4, :cond_17

    move v2, v15

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    .line 47
    :goto_8
    invoke-virtual {v0, v1, v2, v7}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 49
    :cond_18
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->A0:LCf;

    if-eqz v1, :cond_2d

    if-nez v5, :cond_19

    if-eqz v15, :cond_2d

    .line 50
    :cond_19
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->A0:LCf;

    invoke-virtual {v1, v0, v5, v15}, LCf;->a(Landroid/support/v7/widget/RecyclerView;II)V

    goto/16 :goto_f

    .line 51
    :cond_1a
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->o0:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 52
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->o0:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget v8, v0, Landroid/support/v7/widget/RecyclerView;->v0:I

    int-to-float v8, v8

    invoke-virtual {v1, v5, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v1, 0x0

    if-eqz v2, :cond_1b

    .line 53
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->o0:Landroid/view/VelocityTracker;

    iget v5, v0, Landroid/support/v7/widget/RecyclerView;->n0:I

    .line 54
    invoke-virtual {v2, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_9

    :cond_1b
    const/4 v2, 0x0

    :goto_9
    if-eqz v4, :cond_1c

    .line 55
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->o0:Landroid/view/VelocityTracker;

    iget v5, v0, Landroid/support/v7/widget/RecyclerView;->n0:I

    .line 56
    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    neg-float v4, v4

    goto :goto_a

    :cond_1c
    const/4 v4, 0x0

    :goto_a
    cmpl-float v5, v2, v1

    if-nez v5, :cond_1d

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_29

    :cond_1d
    float-to-int v1, v2

    float-to-int v2, v4

    .line 57
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-nez v4, :cond_1e

    const-string v1, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 58
    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 59
    :cond_1e
    iget-boolean v5, v0, Landroid/support/v7/widget/RecyclerView;->T:Z

    if-eqz v5, :cond_1f

    goto/16 :goto_d

    .line 60
    :cond_1f
    invoke-virtual {v4}, LQg;->a()Z

    move-result v4

    .line 61
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v5}, LQg;->b()Z

    move-result v5

    if-eqz v4, :cond_20

    .line 62
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, v0, Landroid/support/v7/widget/RecyclerView;->u0:I

    if-ge v8, v9, :cond_21

    :cond_20
    const/4 v1, 0x0

    :cond_21
    if-eqz v5, :cond_22

    .line 63
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, v0, Landroid/support/v7/widget/RecyclerView;->u0:I

    if-ge v8, v9, :cond_23

    :cond_22
    const/4 v2, 0x0

    :cond_23
    if-nez v1, :cond_24

    if-nez v2, :cond_24

    goto :goto_d

    :cond_24
    int-to-float v8, v1

    int-to-float v9, v2

    .line 64
    invoke-virtual {v0, v8, v9}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v10

    if-nez v10, :cond_28

    if-nez v4, :cond_26

    if-eqz v5, :cond_25

    goto :goto_b

    :cond_25
    const/4 v10, 0x0

    goto :goto_c

    :cond_26
    :goto_b
    const/4 v10, 0x1

    .line 65
    :goto_c
    invoke-virtual {v0, v8, v9, v10}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    if-eqz v10, :cond_28

    if-eqz v5, :cond_27

    or-int/lit8 v4, v4, 0x2

    .line 66
    :cond_27
    invoke-virtual {v0, v4, v6}, Landroid/support/v7/widget/RecyclerView;->e(II)Z

    .line 67
    iget v4, v0, Landroid/support/v7/widget/RecyclerView;->v0:I

    neg-int v5, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 68
    iget v1, v0, Landroid/support/v7/widget/RecyclerView;->v0:I

    neg-int v4, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 69
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->z0:Lch;

    .line 70
    iget-object v2, v1, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v12}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    .line 71
    iput v3, v1, Lch;->x:I

    iput v3, v1, Lch;->w:I

    .line 72
    iget-object v13, v1, Lch;->y:Landroid/widget/OverScroller;

    const/high16 v20, -0x80000000

    const v21, 0x7fffffff

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v18, -0x80000000

    const v19, 0x7fffffff

    invoke-virtual/range {v13 .. v21}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 73
    invoke-virtual {v1}, Lch;->a()V

    const/4 v1, 0x1

    goto :goto_e

    :cond_28
    :goto_d
    const/4 v1, 0x0

    :goto_e
    if-nez v1, :cond_2a

    .line 74
    :cond_29
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    .line 75
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->v()V

    const/4 v3, 0x1

    goto :goto_f

    .line 76
    :cond_2b
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, v0, Landroid/support/v7/widget/RecyclerView;->n0:I

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v5, v10

    float-to-int v5, v5

    iput v5, v0, Landroid/support/v7/widget/RecyclerView;->r0:I

    iput v5, v0, Landroid/support/v7/widget/RecyclerView;->p0:I

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v1, v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView;->s0:I

    iput v1, v0, Landroid/support/v7/widget/RecyclerView;->q0:I

    if-eqz v4, :cond_2c

    or-int/lit8 v2, v2, 0x2

    .line 79
    :cond_2c
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView;->e(II)Z

    :cond_2d
    :goto_f
    if-nez v3, :cond_2e

    .line 80
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->o0:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 81
    :cond_2e
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    return v6

    :cond_2f
    :goto_10
    return v3
.end method

.method public p()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->e0:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v0}, LWe;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_0

    .line 2
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v4, v2}, LWe;->d(I)Landroid/view/View;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, LRg;

    iput-boolean v3, v4, LRg;->c:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    .line 5
    iget-object v2, v0, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    .line 6
    iget-object v4, v0, LXg;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldh;

    .line 7
    iget-object v4, v4, Ldh;->w:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, LRg;

    if-eqz v4, :cond_1

    .line 8
    iput-boolean v3, v4, LRg;->c:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->e0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->e0:I

    return-void
.end method

.method public removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ldh;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget v1, v0, Ldh;->F:I

    and-int/lit16 v1, v1, -0x101

    iput v1, v0, Ldh;->F:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ldh;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0, p2}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 8
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)V

    .line 9
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->p()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, LQg;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LTg;

    .line 3
    invoke-interface {v2, p1}, LTg;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Z

    :goto_0
    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H0:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->N:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R0:Ljava/lang/Runnable;

    invoke-static {p0, v0}, LA7;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->H0:Z

    :cond_0
    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, LQg;->a()Z

    move-result v0

    .line 5
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v1}, LQg;->b()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    :cond_5
    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 3
    :cond_1
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->V:I

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    return-void

    .line 4
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k0:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i0:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j0:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h0:Landroid/widget/EdgeEffect;

    .line 3
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 5
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->Q:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m()Lr7;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Lr7;->d:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lr7;->c:Landroid/view/View;

    invoke-static {v1}, LA7;->y(Landroid/view/View;)V

    .line 4
    :cond_0
    iput-boolean p1, v0, Lr7;->d:Z

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m()Lr7;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lr7;->a(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m()Lr7;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lr7;->c(I)V

    return-void
.end method

.method public final t()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->c0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    .line 3
    iget-object v2, v0, Lme;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lme;->a(Ljava/util/List;)V

    .line 4
    iget-object v2, v0, Lme;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lme;->a(Ljava/util/List;)V

    .line 5
    iput v1, v0, Lme;->g:I

    .line 6
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->d0:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v0, p0}, LQg;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v0}, LQg;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    invoke-virtual {v0}, Lme;->d()V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    invoke-virtual {v0}, Lme;->b()V

    .line 11
    :goto_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->E0:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->F0:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    .line 12
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->Q:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->c0:Z

    if-nez v4, :cond_5

    if-nez v0, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-boolean v4, v4, LQg;->g:Z

    if-eqz v4, :cond_7

    :cond_5
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->c0:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 13
    iget-boolean v4, v4, LBg;->x:Z

    if-eqz v4, :cond_7

    :cond_6
    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    .line 14
    :goto_4
    iput-boolean v4, v3, Lbh;->j:Z

    .line 15
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    iget-boolean v4, v3, Lbh;->j:Z

    if-eqz v4, :cond_9

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->c0:Z

    if-nez v0, :cond_9

    .line 16
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    invoke-virtual {v0}, LQg;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_9

    const/4 v1, 0x1

    .line 17
    :cond_9
    iput-boolean v1, v3, Lbh;->k:Z

    return-void
.end method

.method public u()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, LJg;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {v0, v1}, LQg;->b(LXg;)V

    .line 5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {v0, v1}, LQg;->c(LXg;)V

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {v0}, LXg;->a()V

    return-void
.end method

.method public final v()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o0:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->h0:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h0:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 7
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->i0:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 9
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->i0:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 10
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j0:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 12
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j0:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 13
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k0:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 15
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k0:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_4
    if-eqz v0, :cond_5

    .line 16
    invoke-static {p0}, LA7;->w(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Z

    :cond_0
    return-void
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z0:Lch;

    .line 2
    iget-object v1, v0, Lch;->C:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, v0, Lch;->y:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    return-void
.end method
