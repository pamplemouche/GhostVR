.class public Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;
.super LQK0;
.source "PG"

# interfaces
.implements LZ20;
.implements Landroid/view/View$OnClickListener;
.implements LMJ0;


# instance fields
.field public final A0:Landroid/graphics/Point;

.field public final B0:I

.field public C0:Landroid/animation/ValueAnimator;

.field public D0:Z

.field public E0:Z

.field public F0:I

.field public G0:I

.field public H0:Z

.field public I:LNJ0;

.field public I0:Z

.field public J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

.field public J0:I

.field public K:Landroid/view/ViewGroup;

.field public K0:LMm0;

.field public L:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

.field public L0:F

.field public M:Lorg/chromium/chrome/browser/toolbar/HomeButton;

.field public M0:I

.field public N:Landroid/widget/TextView;

.field public N0:Z

.field public O:Landroid/view/View;

.field public O0:Landroid/animation/AnimatorSet;

.field public P:Landroid/widget/ImageView;

.field public P0:Z

.field public Q:Landroid/widget/ImageButton;

.field public Q0:I

.field public R:Landroid/animation/ObjectAnimator;

.field public R0:F

.field public S:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "chrome"
    .end annotation
.end field

.field public S0:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public T:Z

.field public final T0:Landroid/util/Property;

.field public U:Z

.field public final U0:Landroid/util/Property;

.field public V:I

.field public W:LOJ0;

.field public a0:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "chrome"
    .end annotation
.end field

.field public b0:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "chrome"
    .end annotation
.end field

.field public c0:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "chrome"
    .end annotation
.end field

.field public d0:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "chrome"
    .end annotation
.end field

.field public e0:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "chrome"
    .end annotation
.end field

.field public f0:Landroid/animation/AnimatorSet;

.field public g0:Z

.field public h0:Z

.field public i0:Z

.field public j0:I

.field public k0:I

.field public l0:Z

.field public m0:I

.field public n0:F

.field public o0:Landroid/graphics/drawable/ColorDrawable;

.field public p0:Landroid/graphics/drawable/Drawable;

.field public q0:Landroid/graphics/drawable/Drawable;

.field public r0:Z

.field public final s0:I

.field public final t0:I

.field public final u0:Landroid/graphics/Rect;

.field public final v0:Landroid/graphics/Rect;

.field public final w0:Landroid/graphics/Rect;

.field public x0:F

.field public y0:F

.field public final z0:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, p1, p2}, LQK0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xff

    .line 2
    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->m0:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 3
    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->n0:F

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->u0:Landroid/graphics/Rect;

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->v0:Landroid/graphics/Rect;

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->w0:Landroid/graphics/Rect;

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->z0:Landroid/graphics/Rect;

    .line 8
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->A0:Landroid/graphics/Point;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J0:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 10
    iput p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->L0:F

    .line 11
    new-instance p2, LWK0;

    const-string v1, ""

    invoke-direct {p2, p0, v0, v1}, LWK0;-><init>(Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->T0:Landroid/util/Property;

    .line 12
    new-instance p2, LXK0;

    invoke-direct {p2, p0, v0, v1}, LXK0;-><init>(Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;Ljava/lang/Class;Ljava/lang/String;)V

    .line 13
    new-instance p2, LYK0;

    invoke-direct {p2, p0, v0, v1}, LYK0;-><init>(Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->U0:Landroid/util/Property;

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07031b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->B0:I

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, v0}, LAO0;->b(Landroid/content/Context;Z)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    iput p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->s0:I

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, LAO0;->b(Landroid/content/Context;Z)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->t0:I

    return-void
.end method

.method public static a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v0, 0x7f080264

    .line 2
    invoke-static {p0, v0}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const v1, 0x7f060190

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 5
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 6
    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->g(I)V

    return-void
.end method

.method public static i(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, LQK0;->B:LSJ0;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, LSJ0;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    .line 5
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final B()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J0:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->d(I)I

    move-result v0

    .line 2
    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J0:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->e(I)I

    move-result v1

    .line 3
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->k0:I

    sub-int/2addr v1, v0

    .line 4
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->j0:I

    if-eq v0, v1, :cond_0

    .line 5
    iput v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->j0:I

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0, v1}, Lep0;->a(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final C()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->e0:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->K:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->H0:Z

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, LQK0;->B:LSJ0;

    .line 5
    invoke-interface {v1}, LSJ0;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->M:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 7
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->M:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->y()V

    return-void
.end method

.method public final D()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->n0:F

    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->d0:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->e0:F

    .line 2
    iget-object v0, p0, LQK0;->x:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LeL0;

    .line 3
    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->e0:F

    check-cast v1, LcM0;

    .line 4
    iput v2, v1, LcM0;->K:F

    .line 5
    iget-boolean v2, v1, LcM0;->L:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, LcM0;->G:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1, v2}, LcM0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final E()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->w()Z

    .line 2
    invoke-virtual {p0}, LQK0;->k()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, LQK0;->B:LSJ0;

    .line 4
    invoke-interface {v0}, LSJ0;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-boolean v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->D0:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J0:I

    invoke-static {v4}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->i(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->i(I)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->C0:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->C0:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->end()V

    .line 10
    :cond_3
    iget v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J0:I

    if-eq v4, v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 11
    :goto_1
    iget-object v5, p0, LQK0;->B:LSJ0;

    .line 12
    invoke-interface {v5}, LSJ0;->f()I

    move-result v5

    .line 13
    iget-object v6, p0, LQK0;->B:LSJ0;

    .line 14
    invoke-interface {v6}, LSJ0;->f()I

    move-result v6

    .line 15
    iget-object v7, p0, LQK0;->B:LSJ0;

    if-eqz v7, :cond_5

    .line 16
    invoke-interface {v7}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 17
    iget-object v7, p0, LQK0;->B:LSJ0;

    .line 18
    invoke-interface {v7}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 19
    invoke-virtual {p0}, LQK0;->k()Z

    move-result v6

    .line 20
    invoke-virtual {p0, v6}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->c(I)I

    move-result v6

    .line 21
    :cond_5
    iget v7, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J0:I

    if-ne v7, v2, :cond_7

    if-nez v4, :cond_7

    .line 22
    invoke-static {v5}, LAO0;->e(I)Z

    move-result v7

    xor-int/2addr v7, v3

    .line 23
    iget-boolean v8, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->l0:Z

    if-eq v7, v8, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    .line 24
    :cond_6
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->h(I)V

    .line 25
    iget-object v7, p0, LQK0;->D:LqK0;

    .line 26
    invoke-virtual {p0}, LQK0;->k()Z

    move-result v8

    invoke-virtual {v7, v6, v8}, LqK0;->a(IZ)V

    .line 27
    :cond_7
    :goto_2
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J0:I

    .line 28
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->A()V

    .line 29
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->C()V

    .line 30
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J0:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->h(I)V

    if-nez v4, :cond_9

    .line 31
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J0:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    .line 32
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->x()V

    return-void

    .line 33
    :cond_8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->z()V

    const/4 v0, 0x0

    throw v0

    .line 34
    :cond_9
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->l0:Z

    const/16 v0, 0xff

    .line 35
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->m0:I

    .line 36
    iget-object v4, p0, LQK0;->D:LqK0;

    .line 37
    invoke-virtual {p0}, LQK0;->k()Z

    move-result v7

    invoke-virtual {v4, v6, v7}, LqK0;->a(IZ)V

    .line 38
    invoke-virtual {p0}, LQK0;->k()Z

    move-result v4

    const/16 v6, 0x33

    if-eqz v4, :cond_a

    .line 39
    iput v6, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->m0:I

    goto :goto_3

    .line 40
    :cond_a
    iget v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J0:I

    if-ne v4, v2, :cond_c

    .line 41
    invoke-static {v5}, LAO0;->e(I)Z

    move-result v2

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->l0:Z

    if-eqz v2, :cond_b

    const/16 v0, 0x33

    .line 42
    :cond_b
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->m0:I

    .line 43
    :cond_c
    :goto_3
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->f(I)V

    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->k()V

    .line 45
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->w()Z

    .line 46
    iget-object v0, p0, LQK0;->z:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    if-eqz v0, :cond_e

    if-nez v0, :cond_d

    goto :goto_4

    .line 47
    :cond_d
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/MenuButton;->b()V

    .line 48
    :goto_4
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->H0:Z

    if-nez v0, :cond_e

    .line 49
    iget-object v0, p0, LQK0;->z:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :cond_e
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->p0:Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-virtual {p0}, LQK0;->k()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, -0x1

    goto :goto_5

    .line 53
    :cond_f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060190

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 55
    :goto_5
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public final a(I)F
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, LQK0;->B:LSJ0;

    .line 8
    invoke-interface {p1}, LSJ0;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    .line 9
    :cond_1
    iget p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->e0:F

    :goto_1
    return p1
.end method

.method public a()V
    .locals 0

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return-void
.end method

.method public a(IZ)V
    .locals 5

    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->M:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->L:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 44
    iget-object v2, p0, LQK0;->B:LSJ0;

    if-eqz v2, :cond_2

    .line 45
    invoke-interface {v2}, LSJ0;->f()I

    move-result v2

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p0}, LQK0;->k()Z

    move-result v2

    .line 47
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->c(I)I

    move-result v2

    .line 48
    :goto_0
    invoke-static {v2}, LAO0;->d(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 49
    :goto_2
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->W:LOJ0;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->N0:Z

    if-eq v3, v2, :cond_6

    .line 50
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 51
    invoke-static {v3, v2}, LOJ0;->a(Landroid/content/Context;Z)LOJ0;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->W:LOJ0;

    new-array v1, v1, [I

    const v4, 0x101009e

    aput v4, v1, v0

    .line 52
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setState([I)Z

    .line 53
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->N0:Z

    .line 54
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->W:LOJ0;

    if-eqz v0, :cond_7

    .line 55
    invoke-virtual {v0, p1, p2}, LOJ0;->a(IZ)V

    .line 56
    :cond_7
    iget-object p1, p0, LQK0;->B:LSJ0;

    .line 57
    invoke-interface {p1}, LSJ0;->l()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 58
    iget-object p1, p0, LQK0;->B:LSJ0;

    .line 59
    invoke-interface {p1}, LSJ0;->i()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 60
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->N:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public a(LNJ0;)V
    .locals 1

    .line 37
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->I:LNJ0;

    .line 38
    iget-object v0, p1, LNJ0;->a:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->L:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    if-eqz v0, :cond_0

    .line 40
    iput-object p1, v0, Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;->A:LNJ0;

    .line 41
    invoke-virtual {p1, v0}, LNJ0;->a(LMJ0;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;Z)V
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->M:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 31
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->L:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 32
    iget-object p2, v0, Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;->z:LOJ0;

    goto :goto_0

    :cond_1
    iget-object p2, v0, Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;->y:LOJ0;

    .line 33
    :goto_0
    invoke-virtual {v0, p2}, LBe;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->W:LOJ0;

    if-eqz p2, :cond_2

    .line 35
    invoke-virtual {p2, p1}, LOJ0;->a(Landroid/content/res/ColorStateList;)V

    .line 36
    :cond_2
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->k()V

    :cond_3
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->a(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public final a(Landroid/graphics/Rect;I)V
    .locals 5

    .line 10
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->a(I)F

    .line 11
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->a(I)F

    move-result v0

    .line 12
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->d(I)I

    move-result v1

    int-to-float v1, v1

    .line 13
    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->B0:I

    int-to-float v2, v2

    .line 14
    invoke-static {v1, v2, v0}, LEO0;->b(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 15
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P0:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 16
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->s()F

    move-result v1

    iget v3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->R0:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 17
    :cond_0
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->a(I)F

    move-result v1

    .line 18
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->e(I)I

    move-result p2

    int-to-float p2, p2

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iget v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->B0:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 20
    invoke-static {p2, v3, v1}, LEO0;->b(FFF)F

    move-result p2

    float-to-int p2, p2

    .line 21
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P0:Z

    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 23
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->s()F

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->R0:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr p2, v1

    .line 24
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->F0:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    .line 25
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->F0:I

    sub-int/2addr v2, v3

    .line 26
    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;I)V
    .locals 8

    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const v0, 0x7f0b01a7

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 64
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    .line 65
    invoke-virtual {p0}, LQK0;->g()Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 68
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070320

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q0:I

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q0:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q0:I

    goto :goto_1

    .line 70
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P0:Z

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->O0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 72
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    new-instance p1, LRK0;

    invoke-direct {p1, p0}, LRK0;-><init>(Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->S0:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 78
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->c0:Z

    if-nez p1, :cond_5

    .line 79
    iget-boolean p1, p0, LQK0;->E:Z

    if-nez p1, :cond_5

    .line 80
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P0:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->O0:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    .line 81
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 82
    iput p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->R0:F

    .line 83
    iget-object p3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->U0:Landroid/util/Property;

    new-array v0, v2, [F

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 84
    invoke-static {p0, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    const-wide/16 v4, 0xe1

    .line 85
    invoke-virtual {p3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 86
    sget-object v0, Lvd1;->g:Lvd1;

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 87
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    invoke-virtual {p3, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 89
    iget-object p3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v2, [F

    aput p2, v4, v1

    .line 90
    invoke-static {p3, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 91
    sget-object p3, Lvd1;->g:Lvd1;

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x7d

    .line 92
    invoke-virtual {p2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v6, 0x64

    .line 93
    invoke-virtual {p2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 94
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    iget p3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q0:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setTranslationX(F)V

    .line 96
    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v0, v2, [F

    aput v3, v0, v1

    .line 97
    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 98
    sget-object p3, Lvd1;->g:Lvd1;

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    invoke-virtual {p2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 100
    invoke-virtual {p2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 101
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->O0:Landroid/animation/AnimatorSet;

    .line 103
    new-instance p3, LUK0;

    invoke-direct {p3, p0}, LUK0;-><init>(Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 104
    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->O0:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 105
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->O0:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 106
    :cond_5
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 61
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final b(I)I
    .locals 3

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, LQK0;->k()Z

    move-result v1

    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v2, p1, v1}, LAO0;->a(Landroid/content/res/Resources;ZIZ)I

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-super {p0}, LQK0;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->M:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/HomeButton;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->f0:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->f0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->C0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->C0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->O0:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->O0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    return-void
.end method

.method public final c(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const p1, 0x7f06018c

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v1}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result p1

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->e0:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    .line 4
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 5
    invoke-static {p1, v0}, Ln4;->c(II)I

    move-result p1

    return p1

    .line 6
    :cond_1
    iget-object p1, p0, LQK0;->B:LSJ0;

    .line 7
    invoke-interface {p1}, LSJ0;->f()I

    move-result p1

    return p1

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v2}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result p1

    return p1

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v1}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result p1

    return p1
.end method

.method public c()V
    .locals 9

    .line 12
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->c0:Z

    if-nez v0, :cond_2

    .line 14
    iget-boolean v0, p0, LQK0;->E:Z

    if-nez v0, :cond_2

    .line 15
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->O0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 16
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->R0:F

    .line 18
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->U0:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 19
    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v7, 0xe1

    .line 20
    invoke-virtual {v2, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 21
    sget-object v4, Lvd1;->g:Lvd1;

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 24
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v3, [F

    aput v1, v5, v6

    .line 25
    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 26
    sget-object v4, Lvd1;->h:Lvd1;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x64

    .line 27
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setTranslationX(F)V

    .line 30
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v3, [F

    iget v7, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q0:I

    int-to-float v7, v7

    aput v7, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 31
    sget-object v2, Lvd1;->h:Lvd1;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 32
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->O0:Landroid/animation/AnimatorSet;

    .line 35
    new-instance v2, LVK0;

    invoke-direct {v2, p0}, LVK0;-><init>(Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->O0:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 37
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->O0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 38
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->S0:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->E0:Z

    .line 11
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->p()V

    return-void
.end method

.method public final d(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    iget p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->B0:I

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->B0:I

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->K:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->r()I

    move-result p1

    return p1
.end method

.method public d(Z)V
    .locals 11

    .line 5
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->D0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->C0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->o0:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v6

    .line 7
    iget-object v0, p0, LQK0;->B:LSJ0;

    .line 8
    invoke-interface {v0}, LSJ0;->f()I

    move-result v7

    if-ne v6, v7, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-virtual {p0, v6}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->b(I)I

    move-result v8

    .line 10
    invoke-virtual {p0, v7}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->b(I)I

    move-result v9

    .line 11
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J0:I

    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->i(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 12
    invoke-virtual {p0, v7}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->g(I)V

    return-void

    .line 13
    :cond_3
    invoke-static {v7}, LAO0;->e(I)Z

    move-result p1

    .line 14
    iget v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->m0:I

    if-eqz p1, :cond_4

    const/16 p1, 0xff

    const/16 v5, 0xff

    goto :goto_0

    :cond_4
    const/16 p1, 0x33

    const/16 v5, 0x33

    :goto_0
    const/4 p1, 0x1

    if-eq v4, v5, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 15
    fill-array-data v0, :array_0

    .line 16
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->C0:Landroid/animation/ValueAnimator;

    .line 17
    sget-object v1, Lvd1;->g:Lvd1;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 18
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->C0:Landroid/animation/ValueAnimator;

    new-instance v10, LSK0;

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, LSK0;-><init>(Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;ZIIIIII)V

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->C0:Landroid/animation/ValueAnimator;

    new-instance v1, LTK0;

    invoke-direct {v1, p0}, LTK0;-><init>(Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->C0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 21
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->D0:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->S:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->o0:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->o0:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->o0:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->p0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->S:Z

    if-eqz v0, :cond_2

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->u0:Landroid/graphics/Rect;

    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J0:I

    invoke-virtual {p0, v0, v2}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->a(Landroid/graphics/Rect;I)V

    .line 7
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->S:Z

    if-eqz v0, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->R:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 10
    iget v3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->a0:F

    .line 11
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-eqz v0, :cond_4

    .line 12
    iput-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->b0:Landroid/graphics/Rect;

    goto :goto_0

    .line 13
    :cond_4
    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->b0:Landroid/graphics/Rect;

    if-nez v4, :cond_5

    .line 14
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->b0:Landroid/graphics/Rect;

    .line 15
    :cond_5
    :goto_0
    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->b0:Landroid/graphics/Rect;

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v3, v6

    invoke-virtual {v4, v1, v1, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 16
    :cond_7
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 17
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->R:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    .line 18
    iput-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->R:Landroid/animation/ObjectAnimator;

    :cond_8
    :goto_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->S:Z

    .line 2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->S:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->b0:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->b0:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 7
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->b0:Landroid/graphics/Rect;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_2
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v0, :cond_c

    .line 2
    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->p0:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_a

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p2

    cmpl-float p2, p2, v1

    if-gtz p2, :cond_1

    iget-boolean p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->r0:Z

    if-eqz p2, :cond_2

    :cond_1
    iget-boolean p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->S:Z

    if-nez p2, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_4

    .line 5
    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->q0:Landroid/graphics/drawable/Drawable;

    instance-of v0, p2, LaL0;

    if-eqz v0, :cond_3

    .line 6
    check-cast p2, LaL0;

    .line 7
    iput-boolean v2, p2, LaL0;->x:Z

    .line 8
    :cond_3
    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->q0:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->u0:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->w0:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    invoke-virtual {p2, v1, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->q0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10
    :cond_4
    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->u0:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->w0:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    .line 11
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 12
    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 13
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v1

    int-to-float p2, p2

    .line 14
    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->e0:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P0:Z

    if-nez v1, :cond_6

    .line 15
    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->k0:I

    iget v6, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J0:I

    .line 16
    invoke-virtual {p0, v6}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->d(I)I

    move-result v6

    sub-int/2addr v1, v6

    .line 17
    iget v6, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J0:I

    invoke-virtual {p0, v6}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->e(I)I

    move-result v6

    iget v7, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->k0:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->j0:I

    sub-int/2addr v6, v7

    .line 18
    iget v7, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->e0:F

    sub-float/2addr v5, v7

    int-to-float v1, v1

    mul-float v1, v1, v5

    add-float/2addr v0, v1

    int-to-float v1, v6

    mul-float v1, v1, v5

    sub-float/2addr v3, v1

    .line 19
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 20
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    .line 21
    invoke-static {v1}, LA7;->m(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v5

    add-float/2addr v0, v1

    goto :goto_1

    .line 22
    :cond_5
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-static {v1}, LA7;->l(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v5

    sub-float/2addr v3, v1

    .line 23
    :cond_6
    :goto_1
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P0:Z

    if-eqz v1, :cond_8

    .line 24
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 25
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_2

    .line 26
    :cond_7
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    .line 27
    :cond_8
    :goto_2
    invoke-virtual {p0}, LQK0;->k()Z

    move-result v1

    invoke-static {v1}, Lyp0;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 28
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->w()Z

    .line 29
    :cond_9
    invoke-virtual {p1, v0, v4, v3, p2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    .line 30
    :goto_3
    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v2, :cond_b

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    return p2

    .line 32
    :cond_c
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->p0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 34
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 35
    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->u0:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    .line 36
    iget v5, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->e0:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_13

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v4, v5, :cond_13

    .line 37
    iget-object v5, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->M:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    if-eqz v5, :cond_d

    if-ne p2, v5, :cond_d

    const/4 v5, 0x1

    goto :goto_4

    :cond_d
    const/4 v5, 0x0

    :goto_4
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v6

    xor-int/2addr v5, v6

    .line 38
    iget-object v6, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->u0:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v0

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    move v6, v4

    const/4 v0, 0x1

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    :goto_5
    if-eqz v5, :cond_10

    if-eqz v0, :cond_f

    .line 40
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_6

    .line 41
    :cond_f
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->u0:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 42
    :goto_6
    invoke-virtual {p1, v3, v4, v0, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_8

    :cond_10
    if-eqz v0, :cond_11

    goto :goto_7

    .line 43
    :cond_11
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->u0:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 44
    :goto_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1, v3, v4, v0, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_8

    :cond_12
    const/4 v2, 0x0

    .line 45
    :cond_13
    :goto_8
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v2, :cond_14

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_14
    return p2
.end method

.method public final e(I)I
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->B0:I

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->r()I

    move-result v0

    :goto_0
    sub-int/2addr p1, v0

    return p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    .line 5
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->B0:I

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->K:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public e(Z)V
    .locals 2

    .line 6
    iput-boolean p1, p0, LQK0;->E:Z

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->L:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    if-eqz v0, :cond_0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 8
    :cond_0
    iget-object v0, p0, LQK0;->B:LSJ0;

    .line 9
    invoke-interface {v0}, LSJ0;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->N:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    return-void

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->k(Z)V

    return-void
.end method

.method public f()LWo0;
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    return-object v0
.end method

.method public final f(I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->G0:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->G0:I

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->p0:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public f(Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 4
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->U:Z

    invoke-virtual {p0}, LQK0;->q()Z

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    iget-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->I0:Z

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->H0:Z

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->T:Z

    .line 5
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->W:LOJ0;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->L:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    if-eqz v3, :cond_4

    if-nez p1, :cond_2

    .line 6
    iget p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->V:I

    .line 7
    iget v1, v1, LOJ0;->f:I

    if-eq p1, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 8
    :cond_3
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->T:Z

    .line 9
    :cond_4
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->T:Z

    return p1

    .line 10
    :cond_5
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->T:Z

    return v0
.end method

.method public final g(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->o0:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->o0:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 4
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->S:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->t()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->u()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, LQK0;->k()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, LQK0;->B:LSJ0;

    .line 8
    invoke-interface {p1}, LSJ0;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LMm0;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->n0:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->L0:F

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->M0:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 13
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_2
    iget p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->L0:F

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 15
    iget p1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->M0:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 16
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->A()V

    .line 17
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->L0:F

    :goto_1
    return-void
.end method

.method public final h(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->c(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->g(I)V

    return-void
.end method

.method public final k(Z)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->f0:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->f0:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v2, 0x0

    .line 3
    iput-object v2, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->f0:Landroid/animation/AnimatorSet;

    .line 4
    :cond_0
    iget-boolean v2, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P0:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->O0:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    .line 5
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x8

    const-wide/16 v4, 0x64

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const-wide/16 v8, 0xe1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_9

    .line 6
    iget-object v12, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->T0:Landroid/util/Property;

    new-array v13, v11, [F

    aput v6, v13, v10

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 7
    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 8
    sget-object v12, Lvd1;->g:Lvd1;

    invoke-virtual {v6, v12}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 10
    :goto_0
    iget-object v12, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v12

    if-ge v6, v12, :cond_3

    .line 11
    iget-object v12, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v12, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 12
    iget-object v13, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    .line 13
    iget-object v13, v13, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->V:Landroid/view/View;

    if-ne v12, v13, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    sget-object v13, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v14, v11, [F

    aput v7, v14, v10

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 15
    invoke-virtual {v12, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 16
    sget-object v13, Lvd1;->g:Lvd1;

    invoke-virtual {v12, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 17
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 18
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v12

    if-ne v12, v11, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_2
    const/16 v13, 0xa

    if-eqz v12, :cond_5

    const/16 v13, -0xa

    :cond_5
    int-to-float v12, v13

    mul-float v12, v12, v6

    .line 20
    iget-object v6, v0, LQK0;->z:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    if-eqz v6, :cond_6

    .line 21
    iget-boolean v13, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->H0:Z

    if-nez v13, :cond_6

    .line 22
    sget-object v13, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    new-array v14, v11, [F

    aput v12, v14, v10

    invoke-static {v6, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 23
    invoke-virtual {v13, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 24
    sget-object v14, Lvd1;->h:Lvd1;

    invoke-virtual {v13, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 25
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v13, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v14, v11, [F

    aput v7, v14, v10

    invoke-static {v6, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 27
    invoke-virtual {v6, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 28
    sget-object v13, Lvd1;->h:Lvd1;

    invoke-virtual {v6, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 29
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_6
    iget-object v6, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->L:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    if-eqz v6, :cond_7

    iget-boolean v13, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->H0:Z

    if-nez v13, :cond_7

    .line 31
    sget-object v13, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    new-array v14, v11, [F

    aput v12, v14, v10

    invoke-static {v6, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 32
    invoke-virtual {v6, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 33
    sget-object v13, Lvd1;->h:Lvd1;

    invoke-virtual {v6, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 34
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v6, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->L:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    sget-object v13, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v14, v11, [F

    aput v7, v14, v10

    invoke-static {v6, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 36
    invoke-virtual {v6, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 37
    sget-object v13, Lvd1;->h:Lvd1;

    invoke-virtual {v6, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_7
    iget-object v6, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v6

    if-eq v6, v3, :cond_8

    .line 40
    iget-object v3, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    sget-object v6, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    new-array v13, v11, [F

    aput v12, v13, v10

    invoke-static {v3, v6, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 41
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 42
    sget-object v6, Lvd1;->h:Lvd1;

    invoke-virtual {v3, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 43
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v3, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    sget-object v6, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v12, v11, [F

    aput v7, v12, v10

    invoke-static {v3, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 45
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 46
    sget-object v4, Lvd1;->h:Lvd1;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 47
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_8
    iget-object v3, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v5, v11, [F

    aput v7, v5, v10

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 49
    invoke-virtual {v3, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 50
    sget-object v4, Lvd1;->g:Lvd1;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 51
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 52
    :cond_9
    iget-object v12, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->T0:Landroid/util/Property;

    new-array v13, v11, [F

    aput v7, v13, v10

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 53
    invoke-virtual {v12, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 54
    sget-object v13, Lvd1;->g:Lvd1;

    invoke-virtual {v12, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v12, v0, LQK0;->z:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    const-wide/16 v13, 0xfa

    if-eqz v12, :cond_a

    .line 57
    iget-boolean v15, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->H0:Z

    if-nez v15, :cond_a

    .line 58
    sget-object v15, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v11, [F

    aput v7, v8, v10

    invoke-static {v12, v15, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 59
    invoke-virtual {v8, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 60
    invoke-virtual {v8, v13, v14}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 61
    sget-object v9, Lvd1;->g:Lvd1;

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 62
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v8, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v9, v11, [F

    aput v6, v9, v10

    invoke-static {v12, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 64
    invoke-virtual {v8, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 65
    invoke-virtual {v8, v13, v14}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 66
    sget-object v9, Lvd1;->g:Lvd1;

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_a
    iget-object v8, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->L:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    if-eqz v8, :cond_b

    iget-boolean v9, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->H0:Z

    if-nez v9, :cond_b

    .line 69
    sget-object v9, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    new-array v12, v11, [F

    aput v7, v12, v10

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 70
    invoke-virtual {v8, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const-wide/16 v13, 0xc8

    .line 71
    invoke-virtual {v8, v13, v14}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 72
    sget-object v9, Lvd1;->g:Lvd1;

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 73
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v8, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->L:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    sget-object v9, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v12, v11, [F

    aput v6, v12, v10

    invoke-static {v8, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 75
    invoke-virtual {v8, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 76
    invoke-virtual {v8, v13, v14}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 77
    sget-object v9, Lvd1;->g:Lvd1;

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 78
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_b
    iget-object v8, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v8

    if-eq v8, v3, :cond_c

    .line 80
    iget-object v3, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    sget-object v8, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v11, [F

    aput v7, v9, v10

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 81
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const-wide/16 v7, 0x96

    .line 82
    invoke-virtual {v3, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 83
    sget-object v9, Lvd1;->g:Lvd1;

    invoke-virtual {v3, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 84
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v3, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    sget-object v9, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v12, v11, [F

    aput v6, v12, v10

    invoke-static {v3, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 86
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 87
    invoke-virtual {v3, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 88
    sget-object v7, Lvd1;->g:Lvd1;

    invoke-virtual {v3, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const/4 v3, 0x0

    .line 90
    :goto_3
    iget-object v7, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_e

    .line 91
    iget-object v7, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 92
    iget-object v8, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    .line 93
    iget-object v8, v8, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->V:Landroid/view/View;

    if-ne v7, v8, :cond_d

    goto :goto_4

    .line 94
    :cond_d
    sget-object v8, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v9, v11, [F

    aput v6, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 95
    invoke-virtual {v7, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v8, 0xfa

    .line 96
    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 97
    sget-object v12, Lvd1;->g:Lvd1;

    invoke-virtual {v7, v12}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 98
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 99
    :cond_e
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->w()Z

    .line 100
    iget-object v3, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v5, v11, [F

    aput v6, v5, v10

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xe1

    .line 101
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 102
    sget-object v4, Lvd1;->g:Lvd1;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :goto_5
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->f0:Landroid/animation/AnimatorSet;

    .line 105
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 106
    iput-boolean v11, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->c0:Z

    .line 107
    iget-object v2, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->f0:Landroid/animation/AnimatorSet;

    new-instance v3, LZK0;

    invoke-direct {v3, v0, v1}, LZK0;-><init>(Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 108
    iget-object v1, v0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->f0:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public l()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->T:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, LQK0;->E:Z

    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->c0:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-super {p0}, LQK0;->n()V

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->x()V

    .line 3
    iget-object v0, p0, LQK0;->B:LSJ0;

    .line 4
    invoke-interface {v0}, LSJ0;->d()LMm0;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->K0:LMm0;

    .line 5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->E()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, LQK0;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b04a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P:Landroid/widget/ImageView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->M:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    .line 3
    invoke-virtual {p0}, LQK0;->o()V

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    const-string v0, "ToolbarPhone.onFinishInflate"

    .line 1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-super {p0}, LQK0;->onFinishInflate()V

    const v1, 0x7f0b0245

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    const v1, 0x7f0b04a1

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->K:Landroid/view/ViewGroup;

    const v1, 0x7f0b01f9

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/toolbar/HomeButton;

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->M:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    const v1, 0x7f0b04d1

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->N:Landroid/widget/TextView;

    const v1, 0x7f0b04d0

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->O:Landroid/view/View;

    .line 8
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->c(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->o0:Landroid/graphics/drawable/ColorDrawable;

    .line 10
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->v()V

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 12
    iget-object v1, p0, LQK0;->z:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    if-eqz v1, :cond_0

    .line 13
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->H0:Z

    if-nez v1, :cond_0

    .line 14
    iget-object v1, p0, LQK0;->z:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v1, 0x7f0b0463

    .line 16
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    iput-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->L:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    .line 17
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 18
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, v0, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 20
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 21
    :try_start_2
    iget-object v0, v0, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 22
    sget-object v3, LRB;->a:LLB;

    invoke-virtual {v3, v1, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 23
    :cond_2
    :goto_0
    throw v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->n0:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onMeasure(II)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->g0:Z

    if-nez v0, :cond_b

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 4
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    .line 5
    invoke-interface {v1}, LWo0;->c()Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x33

    .line 7
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->B()Z

    move-result v2

    const/4 v3, 0x0

    or-int/2addr v2, v3

    .line 9
    iget-boolean v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->h0:Z

    const/4 v5, 0x1

    if-nez v4, :cond_1

    iget v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J0:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->j0:I

    .line 11
    iget v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->k0:I

    goto :goto_4

    :cond_1
    :goto_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 12
    :goto_1
    iget-object v7, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 13
    iget-object v7, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 14
    iget-object v8, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    .line 15
    iget-object v8, v8, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->V:Landroid/view/View;

    if-ne v7, v8, :cond_2

    goto :goto_3

    .line 16
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v6

    move v6, v7

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 18
    :cond_4
    :goto_3
    iget v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->B0:I

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v0, v7

    add-int/2addr v0, v6

    .line 19
    iget-object v7, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v7

    if-ne v7, v5, :cond_5

    goto :goto_4

    :cond_5
    sub-int/2addr v4, v6

    .line 20
    :goto_4
    iget-boolean v6, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->i0:Z

    if-eqz v6, :cond_7

    .line 21
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->s()F

    move-result v6

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v7

    if-ne v7, v5, :cond_6

    float-to-int v7, v6

    sub-int/2addr v4, v7

    :cond_6
    float-to-int v6, v6

    add-int/2addr v0, v6

    .line 23
    :cond_7
    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v0, v6, :cond_8

    const/4 v6, 0x1

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    :goto_5
    or-int/2addr v2, v6

    .line 24
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 25
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eq v4, v0, :cond_9

    const/4 v3, 0x1

    :cond_9
    or-int v0, v2, v3

    .line 26
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eqz v0, :cond_a

    .line 27
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->y()V

    .line 28
    :cond_a
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->C()V

    if-nez v0, :cond_c

    return-void

    .line 29
    :cond_b
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->B()Z

    .line 30
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->v0:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->A0:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, LQK0;->B:LSJ0;

    .line 3
    invoke-interface {p1}, LSJ0;->d()LMm0;

    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->p()V

    return-void
.end method

.method public p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->M:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->E0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->H0:Z

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->M:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3

    .line 5
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->M:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    .line 6
    iget-boolean v2, p0, LQK0;->E:Z

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x4

    .line 7
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final r()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->B0:I

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->M:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->M:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final s()F
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->Q:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-virtual {p0}, LQK0;->g()Landroid/widget/ImageButton;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageButton;->isShown()Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    .line 4
    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->B0:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final t()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LQK0;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LQK0;->B:LSJ0;

    .line 3
    invoke-interface {v0}, LSJ0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LMm0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-object v0, p0, LQK0;->B:LSJ0;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, LQK0;->B:LSJ0;

    .line 4
    invoke-interface {v0}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, LQK0;->B:LSJ0;

    .line 6
    invoke-interface {v0}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 7
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070194

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->F0:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080264

    .line 4
    invoke-static {v1, v2}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const v3, 0x7f060190

    .line 6
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 7
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 8
    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 9
    iput-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->p0:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f07018a

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 11
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 12
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->p0:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->q0:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->q0:Landroid/graphics/drawable/Drawable;

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

.method public final w()Z
    .locals 1

    .line 1
    iget-object v0, p0, LQK0;->B:LSJ0;

    .line 2
    invoke-interface {v0}, LSJ0;->d()LMm0;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public final x()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->w0:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->p0:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->q0:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->A0:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 5
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->c0:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->K:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->M:Lorg/chromium/chrome/browser/toolbar/HomeButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 8
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->c0:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P:Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->N:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 10
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 11
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->r0:Z

    const/16 v0, 0xff

    .line 12
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->m0:I

    .line 13
    invoke-virtual {p0}, LQK0;->k()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->l0:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->c0:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    .line 14
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/16 v0, 0x33

    .line 15
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->m0:I

    .line 16
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->w()Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 17
    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->n0:F

    .line 18
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->D()V

    return-void
.end method

.method public final y()V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 4
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 5
    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->k0:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 6
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P0:Z

    if-eqz v2, :cond_0

    .line 7
    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J0:I

    .line 8
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->d(I)I

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->k0:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 9
    :cond_0
    iget-object v2, p0, LQK0;->B:LSJ0;

    .line 10
    invoke-interface {v2}, LSJ0;->a()Z

    move-result v2

    .line 11
    invoke-static {v2}, Lyp0;->a(Z)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 12
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasFocus()Z

    if-eqz v3, :cond_1

    int-to-float v3, v5

    add-float/2addr v1, v3

    goto :goto_0

    .line 14
    :cond_1
    throw v4

    .line 15
    :cond_2
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    .line 16
    iget v7, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->j0:I

    sub-int/2addr v7, v0

    int-to-float v0, v7

    add-float/2addr v1, v0

    .line 17
    :cond_4
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P0:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->R0:F

    goto :goto_2

    .line 18
    :cond_5
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->e0:F

    :goto_2
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v0, v7, v0

    mul-float v0, v0, v1

    .line 19
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->w0:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->x0:F

    .line 21
    iput v1, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->y0:F

    .line 22
    iget-object v8, p0, LQK0;->B:LSJ0;

    .line 23
    invoke-interface {v8}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 24
    iget-object v8, p0, LQK0;->B:LSJ0;

    .line 25
    invoke-interface {v8}, LSJ0;->d()LMm0;

    move-result-object v8

    if-nez v8, :cond_6

    .line 26
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->w()Z

    .line 27
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->x()V

    goto :goto_3

    .line 28
    :cond_6
    throw v4

    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    .line 29
    iget v8, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->y0:F

    goto :goto_4

    .line 30
    :cond_8
    iget v8, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->x0:F

    :goto_4
    add-float/2addr v8, v0

    .line 31
    iget-object v9, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 32
    invoke-static {v2}, Lyp0;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 33
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->N:Landroid/widget/TextView;

    iget-object v8, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasFocus()Z

    if-eqz v8, :cond_9

    .line 35
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    goto :goto_5

    .line 36
    :cond_9
    throw v4

    .line 37
    :cond_a
    invoke-static {}, Lyp0;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 38
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->N:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 39
    :cond_b
    :goto_5
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P0:Z

    if-nez v2, :cond_17

    .line 40
    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->O:Landroid/view/View;

    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v8

    if-ne v8, v6, :cond_c

    const/4 v8, 0x1

    goto :goto_6

    :cond_c
    const/4 v8, 0x0

    :goto_6
    if-eqz v3, :cond_e

    if-eqz v8, :cond_d

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    neg-float v0, v0

    :goto_8
    if-eqz v8, :cond_f

    .line 42
    iget v3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->x0:F

    iget v8, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->y0:F

    goto :goto_9

    .line 43
    :cond_f
    iget v3, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->y0:F

    iget v8, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->x0:F

    :goto_9
    sub-float/2addr v3, v8

    add-float/2addr v3, v0

    .line 44
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 45
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    iget v2, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->e0:F

    .line 46
    iput v2, v0, Lep0;->Q:F

    cmpl-float v3, v2, v1

    if-lez v3, :cond_10

    .line 47
    iget-object v3, v0, Lep0;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a

    :cond_10
    if-nez v3, :cond_11

    .line 48
    iget-boolean v3, v0, Lep0;->J:Z

    if-nez v3, :cond_11

    .line 49
    iget-object v3, v0, Lep0;->R:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    :cond_11
    :goto_a
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->w()V

    .line 51
    iget-object v0, v0, Lep0;->F:LNq0;

    .line 52
    iget-object v0, v0, LNq0;->x:LFq0;

    .line 53
    iput v2, v0, LFq0;->x:F

    .line 54
    iget-object v3, v0, LFq0;->r:LEq0;

    iget-object v5, v0, LFq0;->t:LPJ0;

    invoke-interface {v5}, LPJ0;->a()Z

    move-result v5

    if-eqz v3, :cond_16

    .line 55
    invoke-static {v5}, Lyp0;->a(Z)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_c

    .line 56
    :cond_12
    iget v3, v0, LFq0;->x:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_13

    .line 57
    invoke-virtual {v0, v6}, LFq0;->a(Z)V

    .line 58
    :cond_13
    iget-object v3, v0, LFq0;->t:LPJ0;

    invoke-static {v3}, Lyp0;->a(LPJ0;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 59
    iget-boolean v3, v0, LFq0;->c:Z

    if-nez v3, :cond_14

    .line 60
    iget v3, v0, LFq0;->y:F

    sub-float/2addr v2, v3

    iget v3, v0, LFq0;->z:F

    div-float/2addr v2, v3

    invoke-static {v2, v1, v7}, LEO0;->a(FFF)F

    move-result v2

    .line 61
    :cond_14
    iget-object v1, v0, LFq0;->a:Lle1;

    sget-object v3, LGq0;->e:Lie1;

    invoke-virtual {v1, v3, v2}, Lle1;->a(Lie1;F)V

    goto :goto_b

    .line 62
    :cond_15
    iget-object v1, v0, LFq0;->a:Lle1;

    sget-object v2, LGq0;->e:Lie1;

    invoke-virtual {v1, v2, v7}, Lle1;->a(Lie1;F)V

    .line 63
    :goto_b
    invoke-virtual {v0}, LFq0;->b()V

    .line 64
    :goto_c
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->w()Z

    .line 65
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, LQK0;->k()Z

    move-result v1

    invoke-static {v0, v1}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result v0

    .line 66
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->b(I)I

    move-result v1

    .line 67
    iget-object v2, p0, LQK0;->B:LSJ0;

    .line 68
    invoke-interface {v2}, LSJ0;->f()I

    move-result v2

    .line 69
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->b(I)I

    move-result v3

    .line 70
    iget v4, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->d0:F

    invoke-static {v2, v0, v4}, LAO0;->a(IIF)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->g(I)V

    .line 71
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->d0:F

    invoke-static {v3, v1, v0}, LAO0;->a(IIF)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->f(I)V

    goto :goto_d

    .line 72
    :cond_16
    throw v4

    .line 73
    :cond_17
    :goto_d
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->w()Z

    .line 2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->c0:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->N:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->n0:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->P:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5
    :cond_1
    iget-object v0, p0, LQK0;->B:LSJ0;

    .line 6
    invoke-interface {v0}, LSJ0;->d()LMm0;

    const/4 v0, 0x0

    .line 7
    throw v0
.end method
