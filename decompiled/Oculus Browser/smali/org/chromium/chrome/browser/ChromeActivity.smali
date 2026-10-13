.class public abstract Lorg/chromium/chrome/browser/ChromeActivity;
.super LBg0;
.source "PG"

# interfaces
.implements LeI0;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.implements Lg50;
.implements LYF0;
.implements Lx30;
.implements LbM0;
.implements LF00;
.implements Lx00;
.implements LwZ;


# instance fields
.field public A0:LG70;

.field public B0:LZF0;

.field public C0:LZF0;

.field public D0:LkK0;

.field public E0:LtQ0;

.field public F0:Lp30;

.field public G0:Leo0;

.field public H0:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

.field public I0:LlQ0;

.field public J0:LcM0;

.field public K0:J

.field public L0:J

.field public M0:I

.field public N0:I

.field public O0:LpY;

.field public P0:Lt70;

.field public Q0:Z

.field public R0:Z

.field public S0:Lc00;

.field public T0:Z

.field public e0:LpI0;

.field public f0:LDI0;

.field public g0:LbI0;

.field public h0:LbI0;

.field public i0:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

.field public j0:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

.field public k0:Lhe0;

.field public l0:Z

.field public m0:LqZ;

.field public n0:Z

.field public o0:Z

.field public p0:Z

.field public q0:Z

.field public r0:Z

.field public s0:Z

.field public t0:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field public u0:LoG0;

.field public v0:Lbd0;

.field public w0:LWi0;

.field public x0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

.field public y0:LnZ;

.field public z0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/ChromeActivity;

    return-void
.end method

.method public static a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 130
    :cond_0
    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 131
    :cond_1
    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 132
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-nez p0, :cond_3

    return-object v0

    .line 133
    :cond_3
    instance-of v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;

    if-nez v1, :cond_4

    return-object v0

    .line 134
    :cond_4
    check-cast p0, Lorg/chromium/chrome/browser/ChromeActivity;

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 18
    :try_start_0
    iget-object p1, p1, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p1, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {p0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static r1()I
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f14025d

    goto :goto_1

    :cond_1
    const v0, 0x7f14025c

    :goto_1
    return v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public A0()Lbd0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->v0:Lbd0;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, LBg0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->f0()Lbd0;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->v0:Lbd0;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->v0:Lbd0;

    return-object v0
.end method

.method public B0()LnZ;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->y0:LnZ;

    return-object v0
.end method

.method public C()LZF0;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->E0:LtQ0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 3
    iget-boolean v3, v0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->U:Z

    if-eqz v3, :cond_1

    .line 4
    iget-object v3, v0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->E:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    iget v0, v0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->K:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->C0:LZF0;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->B0:LZF0;

    :goto_2
    return-object v0
.end method

.method public C0()LQT;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public D0()V
    .locals 0

    return-void
.end method

.method public E0()LwZ;
    .locals 0

    return-object p0
.end method

.method public F0()J
    .locals 2

    .line 1
    iget-wide v0, p0, LBg0;->P:J

    return-wide v0
.end method

.method public G0()V
    .locals 0

    return-void
.end method

.method public H0()LQT;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public I0()LG70;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->A0:LG70;

    return-object v0
.end method

.method public J()LBd1;
    .locals 3

    .line 1
    new-instance v0, LBd1;

    new-instance v1, Lbl0;

    invoke-direct {v1, p0}, Lbl0;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LBd1;-><init>(LAd1;I)V

    return-object v0
.end method

.method public J0()LCT;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public K()LDc1;
    .locals 1

    .line 1
    new-instance v0, LXY;

    invoke-direct {v0, p0}, LXY;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    return-object v0
.end method

.method public K0()LlQ0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->I0:LlQ0;

    return-object v0
.end method

.method public final L0()LcM0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->J0:LcM0;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, LcM0;

    invoke-direct {v0, p0}, LcM0;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public M0()Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->i0:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    return-object v0
.end method

.method public N0()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public O0()LkK0;
    .locals 1

    .line 1
    invoke-virtual {p0}, LBg0;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->s0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->s0:Z

    .line 4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->T0()V

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->D0:LkK0;

    return-object v0
.end method

.method public P()Landroid/view/View;
    .locals 1

    const v0, 0x7f0b0117

    .line 1
    invoke-virtual {p0, v0}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x1020002

    .line 2
    invoke-virtual {p0, v0}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public abstract P0()Z
.end method

.method public Q0()V
    .locals 3

    .line 1
    sget-object v0, LdZ;->a:LeZ;

    .line 2
    new-instance v1, LyY;

    invoke-direct {v1, p0}, LyY;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, LdZ;->a:LeZ;

    .line 4
    new-instance v1, LzY;

    invoke-direct {v1, p0}, LzY;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 5
    const-class v0, Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v1, LdZ;->a:LeZ;

    .line 7
    new-instance v2, LAY;

    invoke-direct {v2, p0, v0}, LAY;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, LdZ;->a:LeZ;

    .line 9
    new-instance v1, LBY;

    invoke-direct {v1, p0}, LBY;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 10
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p0}, LBg0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    sget-object v0, LdZ;->a:LeZ;

    .line 13
    new-instance v1, LCY;

    invoke-direct {v1, p0}, LCY;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public R0()V
    .locals 8

    const v0, 0x7f0b0121

    .line 1
    invoke-virtual {p0, v0}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0048

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0b007a

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->H0:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->l0()V

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->A0()Lbd0;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {p0}, LBg0;->Q()LDc1;

    move-result-object v4

    invoke-virtual {v4}, LDc1;->getKeyboardDelegate()LCc1;

    move-result-object v4

    const/4 v5, 0x0

    .line 6
    iput-object v5, v1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->L:LrU;

    .line 7
    iput-object v2, v1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->M:Lbd0;

    const v2, 0x7f0b007f

    .line 8
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/widget/bottomsheet/TouchRestrictingFrameLayout;

    iput-object v2, v1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->R:Lorg/chromium/chrome/browser/widget/bottomsheet/TouchRestrictingFrameLayout;

    const v6, 0x7f0802e9

    .line 9
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 10
    iget-object v2, v1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->R:Lorg/chromium/chrome/browser/widget/bottomsheet/TouchRestrictingFrameLayout;

    const v7, 0x7f0b007e

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->S:Landroid/view/View;

    .line 11
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v7, -0x1

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v2, 0x7f0b007b

    .line 12
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/widget/bottomsheet/TouchRestrictingFrameLayout;

    iput-object v2, v1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->P:Lorg/chromium/chrome/browser/widget/bottomsheet/TouchRestrictingFrameLayout;

    .line 13
    iput-object v1, v2, Lorg/chromium/chrome/browser/widget/bottomsheet/TouchRestrictingFrameLayout;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 14
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->F:I

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->G:I

    .line 17
    new-instance v2, LnQ0;

    invoke-direct {v2, v1, v3, v4}, LnQ0;-><init>(Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;Landroid/view/Window;Lrc1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 18
    iget-object v0, v1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->R:Lorg/chromium/chrome/browser/widget/bottomsheet/TouchRestrictingFrameLayout;

    new-instance v2, LoQ0;

    invoke-direct {v2, v1}, LoQ0;-><init>(Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 19
    iget-object v0, v1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->M:Lbd0;

    new-instance v2, LpQ0;

    invoke-direct {v2, v1}, LpQ0;-><init>(Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;)V

    .line 20
    iget-object v3, v0, Lbd0;->R:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, v0, Lbd0;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->C:Landroid/view/ViewGroup;

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    new-instance v0, LZF0;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->H0:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    const v2, 0x7f0b007d

    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, p0, v1}, LZF0;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->C0:LZF0;

    .line 25
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->H0:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    new-instance v1, LDY;

    invoke-direct {v1, p0}, LDY;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 26
    iget-object v0, v0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {v0, v1}, LWT;->a(Ljava/lang/Object;)Z

    const v0, 0x7f0b0072

    .line 27
    invoke-virtual {p0, v0}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/snackbar/BottomContainer;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->H0:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    if-eqz v0, :cond_2

    .line 28
    new-instance v2, LTF0;

    invoke-direct {v2, v0, v1}, LTF0;-><init>(Lorg/chromium/chrome/browser/snackbar/BottomContainer;Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;)V

    .line 29
    iget-object v0, v1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {v0, v2}, LWT;->a(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {p0}, LBg0;->M()Lqi0;

    .line 31
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->r0()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v5

    .line 32
    :cond_1
    throw v5

    .line 33
    :cond_2
    throw v5
.end method

.method public final S0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->p0:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->i0()LpI0;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->e0:LpI0;

    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public T()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->L0:J

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->L0()LcM0;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, LcM0;->b()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LcM0;->a(IZ)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0b00df

    .line 5
    invoke-virtual {p0, v1}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->x0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    .line 6
    iget-object v1, v1, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->A:Lorg/chromium/chrome/browser/compositor/CompositorView;

    .line 7
    iget-object v2, v1, Lorg/chromium/chrome/browser/compositor/CompositorView;->x:LK20;

    if-nez v2, :cond_0

    .line 8
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 9
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/CompositorView;->c()V

    .line 10
    :cond_0
    iput-object v0, v1, Lorg/chromium/chrome/browser/compositor/CompositorView;->I:Landroid/view/View;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 12
    invoke-static {p0}, LnZ;->a(Landroid/content/Context;)LnZ;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/chrome/browser/ChromeActivity;->y0:LnZ;

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 14
    invoke-super {p0}, LBg0;->T()V

    return-void
.end method

.method public T0()V
    .locals 8

    const-string v0, "ChromeActivity.initializeToolbar"

    .line 1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    const v1, 0x7f0b0117

    .line 2
    :try_start_0
    invoke-virtual {p0, v1}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3
    move-object v4, v1

    check-cast v4, Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer;

    .line 4
    new-instance v6, LwY;

    invoke-direct {v6, p0}, LwY;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 5
    new-instance v1, LkK0;

    .line 6
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->r0()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v2

    .line 7
    iget-object v5, v2, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->y:Lb30;

    .line 8
    iget-object v7, p0, Lorg/chromium/chrome/browser/ChromeActivity;->S0:Lc00;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, LkK0;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer;Lb30;Lorg/chromium/base/Callback;Lf00;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->D0:LkK0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 9
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 11
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_1
    throw v2
.end method

.method public U()V
    .locals 6

    const-string v0, "ChromeActivity.performPostInflationStartup"

    .line 1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-super {p0}, LBg0;->U()V

    const v1, 0x7f0b0121

    .line 3
    invoke-virtual {p0, v1}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4
    new-instance v2, LlQ0;

    .line 5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->L0()LcM0;

    move-result-object v3

    .line 6
    iget-object v3, v3, LcM0;->A:LkQ0;

    .line 7
    invoke-direct {v2, p0, v3, v1}, LlQ0;-><init>(Landroid/content/Context;LkQ0;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/ChromeActivity;->I0:LlQ0;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p0}, LBg0;->O()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    .line 10
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v3

    check-cast v3, LKO0;

    if-eqz v3, :cond_0

    .line 11
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->c()LPO0;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, LPO0;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    goto :goto_0

    :cond_0
    throw v2

    .line 12
    :cond_1
    :goto_0
    new-instance v1, LZF0;

    invoke-direct {v1, p0, v2}, LZF0;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->B0:LZF0;

    .line 13
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->d0()LpY;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->O0:LpY;

    if-eqz v1, :cond_3

    .line 14
    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeActivity;->e0:LpI0;

    if-eqz v3, :cond_2

    .line 15
    iget-object v3, p0, Lorg/chromium/chrome/browser/ChromeActivity;->e0:LpI0;

    invoke-virtual {v1, v3}, LpY;->a(LpI0;)V

    .line 16
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->O0:LpY;

    invoke-virtual {v1}, LpY;->b()V

    .line 17
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "accessibility"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 18
    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 19
    new-instance v3, LvY;

    invoke-direct {v3, p0}, LvY;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    iput-object v3, p0, Lorg/chromium/chrome/browser/ChromeActivity;->t0:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 20
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 21
    invoke-static {}, Lorg/chromium/policy/CombinedPolicyProvider;->a()Lorg/chromium/policy/CombinedPolicyProvider;

    move-result-object v1

    .line 22
    iget-object v1, v1, Lorg/chromium/policy/CombinedPolicyProvider;->e:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->R0:Z

    .line 24
    invoke-virtual {p0}, LBg0;->Q()LDc1;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/ChromeActivity;->x0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    .line 25
    iget-object v4, v4, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->A:Lorg/chromium/chrome/browser/compositor/CompositorView;

    .line 26
    invoke-virtual {v3, v4}, Lorg/chromium/ui/base/WindowAndroid;->setAnimationPlaceholderView(Landroid/view/View;)V

    .line 27
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->S0()V

    .line 28
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/ChromeActivity;->s0:Z

    if-nez v3, :cond_4

    .line 29
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->s0:Z

    .line 30
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->T0()V

    .line 31
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->A0()Lbd0;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 32
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->A0()Lbd0;

    move-result-object v1

    const v3, 0x7f0b0117

    .line 33
    invoke-virtual {p0, v3}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, LDJ0;

    .line 34
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object v4

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->u0()I

    move-result v5

    .line 35
    invoke-virtual {v1, v3, v4, v5}, Lbd0;->a(LDJ0;LpI0;I)V

    :cond_5
    const v1, 0x7f0b0072

    .line 36
    invoke-virtual {p0, v1}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/snackbar/BottomContainer;

    .line 37
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    .line 38
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_6

    .line 39
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_6
    throw v2
.end method

.method public U0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public V()V
    .locals 5

    .line 1
    new-instance v0, LP60;

    invoke-virtual {p0}, LBg0;->M()Lqi0;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LP60;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Lqi0;)V

    .line 2
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(LP60;)LQ60;

    .line 3
    invoke-super {p0}, LBg0;->V()V

    .line 4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->h0()LYL0;

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    invoke-virtual {p0}, LBg0;->O()Landroid/os/Bundle;

    check-cast v0, LKO0;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->c()LPO0;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 8
    invoke-virtual {v0, p0, v1}, LPO0;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 9
    sget-boolean v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 10
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->l0:Z

    .line 11
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v2, "disable-fullscreen"

    .line 12
    invoke-virtual {v0, v2}, LwT;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 13
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 14
    invoke-virtual {p0}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070331

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 15
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "top-controls-show-threshold"

    .line 16
    invoke-virtual {v0, v4, v3}, LwT;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070330

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 18
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "top-controls-hide-threshold"

    .line 19
    invoke-virtual {v0, v2, v1}, LwT;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->o0()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 21
    throw v0
.end method

.method public V0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->m0()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public W0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public X0()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public final Y()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->K0:J

    const-string v0, "ChromeActivity.triggerLayoutInflation"

    .line 2
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    sput-boolean v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->b0:Z

    .line 4
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 6
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->Q0:Z

    .line 7
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/ChromeActivity;->r1()I

    move-result v2

    const v3, 0x7f14025d

    if-ne v2, v3, :cond_1

    .line 8
    invoke-virtual {p0, v3}, LOY;->setTheme(I)V

    .line 9
    :cond_1
    invoke-static {}, Li00;->a()Li00;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->v0()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 11
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 12
    iget-object v5, v2, Li00;->d:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget v5, v2, Li00;->c:I

    if-ne v5, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 13
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p0, v1}, LQ8;->setContentView(Landroid/view/View;)V

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 16
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 17
    iget-object v5, v2, Li00;->d:Landroid/view/ViewGroup;

    .line 18
    iput-object v4, v2, Li00;->d:Landroid/view/ViewGroup;

    if-nez v5, :cond_3

    goto :goto_2

    .line 19
    :cond_3
    :goto_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 20
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 21
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 23
    :cond_4
    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->T()V

    goto :goto_3

    .line 25
    :cond_5
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 26
    iput-object v4, v2, Li00;->d:Landroid/view/ViewGroup;

    .line 27
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->j0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-eqz v0, :cond_6

    .line 28
    invoke-static {v4, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_6
    return-void

    .line 29
    :cond_7
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 30
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_8

    .line 31
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_8
    throw v2
.end method

.method public final synthetic Y0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->e0()V

    return-void
.end method

.method public Z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->p0:Z

    return v0
.end method

.method public final synthetic Z0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, LBg0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, LUn0;

    invoke-direct {v0, p0}, LUn0;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->G0:Leo0;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Leo0;

    invoke-direct {v0, p0}, Leo0;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->G0:Leo0;

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->G0:Leo0;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v3, "org.chromium.chrome.browser.omaha.inline_update_notification_received_extra"

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Leo0;->y:Z

    .line 7
    invoke-virtual {v0}, Leo0;->b()V

    .line 8
    invoke-static {}, Lao0;->c()Lao0;

    move-result-object v0

    invoke-virtual {v0, v2}, Lao0;->a(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_2
    throw v2
.end method

.method public a(LP60;)LQ60;
    .locals 2

    .line 21
    invoke-static {}, LKY;->c()LR60;

    move-result-object v0

    check-cast v0, LY60;

    if-eqz v0, :cond_0

    .line 22
    new-instance v1, LW60;

    invoke-direct {v1, v0, p1}, LW60;-><init>(LY60;LP60;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public a()V
    .locals 4

    .line 24
    invoke-super {p0}, LBg0;->a()V

    .line 25
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->i1()V

    const-string v0, "MobileComeToForeground"

    .line 26
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 29
    sget-object v2, LHk0;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 30
    sget-object v2, LHk0;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 31
    invoke-static {}, LeV;->a()V

    if-eqz v0, :cond_1

    .line 32
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->L()V

    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGk0;

    .line 34
    throw v1

    .line 35
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->V0()Z

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->b(Z)V

    .line 36
    sget-object v0, Lpl0;->y:Lpl0;

    .line 37
    invoke-virtual {v0, p0}, Lpl0;->a(Landroid/app/Activity;)Z

    move-result v0

    .line 38
    invoke-static {v0}, LJ/N;->MpbvUTVJ(Z)V

    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->w0:LWi0;

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {v0, p0}, LWi0;->b(Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 41
    :cond_2
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    check-cast v0, LKO0;

    if-eqz v0, :cond_3

    .line 42
    invoke-static {}, LIO0;->a()V

    .line 43
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->D0()V

    throw v1

    .line 44
    :cond_3
    throw v1
.end method

.method public a(J)V
    .locals 1

    const-string v0, "MobileStartup.IntentToCreationTime"

    .line 110
    invoke-static {v0, p1, p2}, LfV;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 45
    iget-object v1, v0, Lorg/chromium/chrome/browser/ChromeActivity;->w0:LWi0;

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v1, v0}, LWi0;->b(Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 47
    :cond_0
    invoke-static/range {p1 .. p1}, LqZ;->l(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 48
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v1

    check-cast v1, LKO0;

    const/4 v10, 0x0

    if-eqz v1, :cond_20

    .line 49
    iget-object v1, v0, Lorg/chromium/chrome/browser/ChromeActivity;->m0:LqZ;

    if-eqz v1, :cond_1f

    .line 50
    sget-object v2, LqZ;->i:LgZ;

    if-eqz v2, :cond_2

    .line 51
    invoke-virtual {v2, v10}, LgZ;->a(Landroid/content/Intent;)V

    .line 52
    :cond_2
    invoke-static/range {p1 .. p1}, LqZ;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {}, LBa0;->a()LBa0;

    move-result-object v3

    .line 54
    iget-object v4, v3, LBa0;->c:[B

    const/4 v5, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_5

    iget-object v4, v3, LBa0;->d:Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v4, "org.chromium.chrome.browser.user_gesture_token"

    .line 55
    :try_start_0
    invoke-virtual {v9, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getByteArrayExtra failed on intent "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "IntentUtils"

    invoke-static {v7, v4, v6}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v10

    :goto_0
    if-eqz v4, :cond_4

    .line 57
    iget-object v6, v3, LBa0;->c:[B

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, LBa0;->d:Ljava/lang/String;

    .line 58
    invoke-static/range {p1 .. p1}, LqZ;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 59
    :goto_1
    iput-object v10, v3, LBa0;->c:[B

    .line 60
    iput-object v10, v3, LBa0;->d:Ljava/lang/String;

    move v7, v4

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v7, 0x0

    :goto_3
    const-string v3, "REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB"

    .line 61
    invoke-static {v9, v3, v11}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "com.android.browser.application_id"

    const-string v6, "BRING_TAB_TO_FRONT"

    const/4 v8, -0x1

    const/4 v12, 0x5

    if-eqz v3, :cond_6

    const/4 v13, 0x1

    goto :goto_5

    :cond_6
    const-string v3, "com.google.android.apps.chrome.EXTRA_OPEN_NEW_INCOGNITO_TAB"

    .line 62
    invoke-static {v9, v3, v11}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v13, 0x5

    goto :goto_5

    .line 63
    :cond_7
    invoke-static {v9, v6, v8}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v8, :cond_8

    const/4 v3, 0x4

    const/4 v13, 0x4

    goto :goto_5

    .line 64
    :cond_8
    invoke-static {v9, v4}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    const-string v13, "create_new_tab"

    .line 65
    invoke-static {v9, v13, v11}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_4

    :cond_9
    const-string v13, "REUSE_TAB_MATCHING_ID"

    .line 66
    invoke-static {v9, v13, v8}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v13

    if-eq v13, v8, :cond_a

    const/4 v3, 0x6

    const/4 v13, 0x6

    goto :goto_5

    .line 67
    :cond_a
    iget-object v13, v1, LqZ;->b:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x3

    const/4 v13, 0x3

    goto :goto_5

    :cond_b
    const/4 v3, 0x2

    const/4 v13, 0x2

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v13, 0x0

    .line 68
    :goto_5
    invoke-static {v9, v6, v8}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v6

    if-nez v2, :cond_12

    if-ne v6, v8, :cond_12

    if-eq v13, v12, :cond_12

    if-nez v9, :cond_d

    goto/16 :goto_b

    .line 69
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEARCH"

    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "query"

    if-nez v3, :cond_f

    const-string v3, "android.intent.action.MEDIA_SEARCH"

    .line 71
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_6

    :cond_e
    move-object v2, v10

    goto :goto_7

    .line 72
    :cond_f
    :goto_6
    invoke-static {v9, v4}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_7
    if-eqz v2, :cond_1c

    .line 73
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_b

    .line 74
    :cond_10
    iget-object v1, v1, LqZ;->a:LpZ;

    check-cast v1, LFY;

    if-eqz v1, :cond_11

    .line 75
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.WEB_SEARCH"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    new-instance v2, LEY;

    invoke-direct {v2, v1, v3}, LEY;-><init>(LFY;Landroid/content/Intent;)V

    .line 78
    invoke-static {}, Lorg/chromium/chrome/browser/locale/LocaleManager;->getInstance()Lorg/chromium/chrome/browser/locale/LocaleManager;

    move-result-object v3

    iget-object v1, v1, LFY;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v3, v1, v2}, Lorg/chromium/chrome/browser/locale/LocaleManager;->a(Landroid/app/Activity;Lorg/chromium/base/Callback;)V

    goto/16 :goto_b

    .line 79
    :cond_11
    throw v10

    .line 80
    :cond_12
    invoke-static/range {p1 .. p1}, LqZ;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {v9, v5}, LqZ;->a(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v8

    .line 82
    invoke-static/range {p1 .. p1}, LqZ;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_13

    goto :goto_9

    .line 83
    :cond_13
    invoke-static {v12}, LqZ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "content"

    .line 84
    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    const-string v5, "file"

    .line 85
    invoke-static {v14, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v15, :cond_14

    if-nez v5, :cond_14

    goto :goto_9

    .line 86
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_15

    .line 87
    invoke-static {v14}, LqZ;->f(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_15

    goto :goto_8

    :cond_15
    if-eqz v5, :cond_18

    .line 88
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    const-string v5, "application/octet-stream"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_9

    .line 89
    :cond_16
    invoke-static {v12}, LFT;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v12, "mhtml"

    .line 90
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    const-string v12, "mht"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    :goto_8
    const/16 v16, 0x1

    goto :goto_a

    :cond_18
    :goto_9
    const/16 v16, 0x0

    :goto_a
    if-eqz v16, :cond_1b

    if-nez v13, :cond_1b

    if-nez v3, :cond_1b

    if-nez v8, :cond_1b

    .line 91
    new-instance v3, LoZ;

    invoke-direct {v3, v1, v9}, LoZ;-><init>(LqZ;Landroid/content/Intent;)V

    .line 92
    invoke-static {}, Lmn0;->a()Lkn0;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v4

    check-cast v1, Lln0;

    if-eqz v1, :cond_1a

    .line 93
    invoke-static {v4}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v1

    if-nez v1, :cond_19

    .line 94
    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 95
    invoke-direct {v1, v2, v11}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 96
    invoke-interface {v3, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_b

    .line 97
    :cond_19
    iget-wide v4, v1, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a:J

    .line 98
    invoke-static {v4, v5, v1, v2, v3}, LJ/N;->MRrUWI5B(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b

    .line 99
    :cond_1a
    throw v10

    .line 100
    :cond_1b
    invoke-static {v9, v4}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-object v4, v8

    move v5, v13

    move-object/from16 v8, p1

    .line 101
    invoke-virtual/range {v1 .. v8}, LqZ;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/content/Intent;)V

    .line 102
    :cond_1c
    :goto_b
    iget-object v1, v0, Lorg/chromium/chrome/browser/ChromeActivity;->G0:Leo0;

    if-nez v1, :cond_1d

    .line 103
    new-instance v1, Leo0;

    invoke-direct {v1, v0}, Leo0;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    iput-object v1, v0, Lorg/chromium/chrome/browser/ChromeActivity;->G0:Leo0;

    .line 104
    :cond_1d
    iget-object v1, v0, Lorg/chromium/chrome/browser/ChromeActivity;->G0:Leo0;

    if-eqz v1, :cond_1e

    const-string v2, "org.chromium.chrome.browser.omaha.inline_update_notification_received_extra"

    .line 105
    invoke-virtual {v9, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Leo0;->y:Z

    .line 106
    invoke-virtual {v1}, Leo0;->b()V

    return-void

    .line 107
    :cond_1e
    throw v10

    .line 108
    :cond_1f
    throw v10

    .line 109
    :cond_20
    throw v10
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 129
    throw p1
.end method

.method public final synthetic a(Ljava/lang/Boolean;)V
    .locals 0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->m1()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->w0()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0}, LdI0;->a()Z

    move-result v0

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f13032f

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "chrome-native://bookmarks/"

    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f13032b

    .line 118
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "chrome://history/"

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f130330

    .line 120
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_2
    invoke-static {p1}, LJ/N;->MCF9pcXT(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f130339

    .line 122
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const v0, 0x7f130331

    .line 123
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "chrome-native://newtab/"

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f130333

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const v0, 0x7f13033d

    .line 126
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    invoke-static {}, Lue0;->a()Lue0;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p3, p1}, Lue0;->a(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    .line 128
    invoke-static {p2}, LhV;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(LvZ;)V
    .locals 0

    const/4 p1, 0x0

    .line 112
    throw p1
.end method

.method public a(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    .line 1
    sput-boolean v0, LNf0;->I:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->D0:LkK0;

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, v0, LkK0;->A:LfL0;

    .line 4
    iget-object v1, v0, LfL0;->a:LQK0;

    invoke-virtual {v1, p1}, LQK0;->b(Z)V

    .line 5
    iget-object v0, v0, LfL0;->b:LIK0;

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, v0, LIK0;->w:Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;

    if-eqz v0, :cond_3

    .line 7
    iget-object v1, v0, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->B:Lorg/chromium/chrome/browser/toolbar/NewTabButton;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/toolbar/NewTabButton;->b()V

    :cond_0
    const-string v1, "HorizontalTabSwitcherAndroid"

    .line 9
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    invoke-static {v1}, LJ/N;->MXdDobzR(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    xor-int/lit8 v1, p1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->b(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 13
    throw p1

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->c()V

    .line 15
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->z0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    if-eqz v0, :cond_4

    .line 16
    iput-boolean p1, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->n:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 17
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->a(I)V

    :cond_4
    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 0

    .line 135
    invoke-super {p0, p1, p2, p3}, LBg0;->a(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 136
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object p1

    check-cast p1, LKO0;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 137
    throw p1
.end method

.method public a(ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p2, 0x1

    .line 111
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/ChromeActivity;->a(IZ)Z

    move-result p1

    return p1
.end method

.method public a(IZ)Z
    .locals 0

    const/4 p1, 0x0

    .line 113
    throw p1
.end method

.method public a0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic a1()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isUserInteractable()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public b(LvZ;)V
    .locals 0

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "Android.MultiWindowMode.Enter"

    .line 1
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Android.MultiWindowMode.Exit"

    .line 2
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic b1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, LBg0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, LuY;

    invoke-direct {v0, p0}, LuY;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 3
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const-string v4, "android.permission.NFC"

    .line 5
    invoke-static {p0, v4, v2, v3}, LdT;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    :try_start_0
    new-instance v2, Lyl0;

    invoke-direct {v2, p0, v0}, Lyl0;-><init>(Landroid/app/Activity;Lzl0;)V

    const/4 v0, 0x0

    new-array v3, v0, [Landroid/app/Activity;

    .line 7
    invoke-virtual {v1, v2, p0, v3}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    new-array v0, v0, [Landroid/app/Activity;

    .line 8
    invoke-virtual {v1, v2, p0, v0}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "BeamController"

    const-string v1, "NFC registration failure. Can\'t retry, giving up."

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "MobileGoToBackground"

    .line 1
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->M0()Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->D0()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final synthetic c(Ljava/lang/String;)V
    .locals 5

    .line 5
    invoke-virtual {p0}, LBg0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->D0:LkK0;

    if-eqz v0, :cond_1

    const-string v0, "MobileStartup.ToolbarInflationTime."

    .line 7
    invoke-static {v0, p1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->L0:J

    iget-wide v3, p0, Lorg/chromium/chrome/browser/ChromeActivity;->K0:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, LfV;->c(Ljava/lang/String;J)V

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->D0:LkK0;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->F0()J

    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2, p1}, LkK0;->a(JLjava/lang/String;)V

    .line 10
    iget-object p1, v0, LkK0;->J:LWo0;

    invoke-interface {p1}, LWo0;->n()V

    .line 11
    :cond_1
    sget-object p1, Lpl0;->y:Lpl0;

    .line 12
    invoke-virtual {p1, p0}, Lpl0;->a(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->k1()V

    .line 14
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, LqZ;->g(Landroid/content/Intent;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->F0()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/chrome/browser/ChromeActivity;->a(J)V

    .line 16
    :cond_3
    invoke-static {p0}, Lcd1;->a(Landroid/content/Context;)Lcd1;

    move-result-object p1

    .line 17
    iget-object v0, p1, Lcd1;->c:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    .line 18
    iget p1, p1, Lcd1;->d:F

    div-float/2addr v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 19
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    add-float/2addr v0, v2

    float-to-int p1, v0

    if-le v1, p1, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, p1

    :goto_0
    if-ge v1, p1, :cond_5

    move p1, v1

    :cond_5
    const/4 v1, 0x0

    const/16 v2, 0x3e8

    .line 20
    invoke-static {p1, v1, v2}, LEO0;->a(III)I

    move-result p1

    const-string v1, "Android.DeviceSize.SmallestDisplaySize"

    .line 21
    invoke-static {v1, p1}, LfV;->e(Ljava/lang/String;I)V

    const/16 p1, 0xc8

    const/16 v1, 0x4b0

    .line 22
    invoke-static {v0, p1, v1}, LEO0;->a(III)I

    move-result p1

    const-string v0, "Android.DeviceSize.LargestDisplaySize"

    .line 23
    invoke-static {v0, p1}, LfV;->e(Ljava/lang/String;I)V

    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 24
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->x0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->A:Lorg/chromium/chrome/browser/compositor/CompositorView;

    if-eqz v0, :cond_0

    .line 26
    iget-wide v1, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    .line 27
    invoke-static {v1, v2, v0, p1}, LJ/N;->M$Spxfoj(JLjava/lang/Object;Z)V

    .line 28
    iput-boolean p1, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->y:Z

    .line 29
    iget-object p1, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->x:LK20;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->b()I

    move-result v0

    check-cast p1, LP20;

    invoke-virtual {p1, v0}, LP20;->a(I)V

    :cond_0
    return-void
.end method

.method public final c0()V
    .locals 1

    .line 1
    invoke-static {}, LuO0;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Z)V

    return-void
.end method

.method public final synthetic c1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, LBg0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    .line 3
    iget-wide v0, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->a:J

    .line 4
    invoke-static {v0, v1}, LJ/N;->MPGEx92r(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lja0;->a:Lja0;

    .line 6
    new-instance v1, Lla0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lla0;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {v0, v1}, Lja0;->a(Lna0;)Z

    :cond_1
    return-void
.end method

.method public d0()LpY;
    .locals 1

    .line 1
    new-instance v0, LpY;

    invoke-direct {v0, p0}, LpY;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final synthetic d1()V
    .locals 3

    .line 1
    invoke-static {p0}, Lse0;->a(Landroid/content/Context;)Lse0;

    move-result-object v0

    invoke-virtual {v0}, Lse0;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-static {v1}, Lhe0;->a(I)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lle0;->d:Lle0;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 5
    new-instance v2, Lle0;

    invoke-direct {v2, v0}, Lle0;-><init>(Landroid/content/Context;)V

    sput-object v2, Lle0;->d:Lle0;

    .line 6
    :cond_1
    sget-object v0, Lle0;->d:Lle0;

    .line 7
    iget-object v2, v0, Lle0;->b:Lre0;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lre0;->a()Z

    .line 8
    :cond_2
    iget v2, v0, Lle0;->a:I

    add-int/2addr v2, v1

    iput v2, v0, Lle0;->a:I

    .line 9
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->e0()V

    return-void
.end method

.method public e()V
    .locals 12

    .line 1
    invoke-super {p0}, LBg0;->e()V

    .line 2
    invoke-static {}, Lao0;->c()Lao0;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lao0;->c:Llo0;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lao0;->b()V

    .line 4
    :cond_0
    invoke-static {}, LHY;->a()LHY;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 5
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 6
    iget-boolean v2, v0, LHY;->d:Z

    if-eqz v2, :cond_1

    goto/16 :goto_14

    :cond_1
    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v0, LHY;->d:Z

    .line 8
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/UmaUtils;->b()V

    .line 9
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_password"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 11
    :goto_0
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 12
    invoke-static {v5}, LJ/N;->MOTegY_c(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v5

    if-eqz v5, :cond_2d

    .line 14
    invoke-static {v5, v3}, LJ/N;->MEnH0Z3M(Ljava/lang/Object;Z)V

    .line 15
    :goto_1
    invoke-static {}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->d()Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->c()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_4

    .line 17
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->b()F

    move-result v6

    mul-float v6, v6, v5

    invoke-virtual {v3, v6}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->a(F)V

    .line 18
    :cond_4
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 19
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f130267

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-static {v3}, Lorg/chromium/base/LocaleUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/base/LocaleUtils;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/base/LocaleUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "Android.Language.UiIsSystemLanguage"

    .line 23
    invoke-static {v6, v3}, LfV;->a(Ljava/lang/String;Z)V

    .line 24
    sget-object v6, Lorg/chromium/ui/base/ResourceBundle;->a:[Ljava/lang/String;

    .line 25
    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_6

    aget-object v9, v6, v8

    .line 26
    invoke-static {v9}, Lorg/chromium/base/LocaleUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-nez v3, :cond_7

    if-eqz v5, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    const-string v5, "Android.Language.WrongLanguageAfterResume"

    .line 27
    invoke-static {v5, v3}, LfV;->a(Ljava/lang/String;Z)V

    .line 28
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v3, v5, :cond_a

    .line 29
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v3

    .line 30
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 31
    :goto_5
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 32
    invoke-virtual {v3, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    .line 33
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 34
    invoke-static {v8}, Lorg/chromium/base/LocaleUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 35
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_6

    .line 36
    :cond_8
    new-instance v8, Ljava/util/Locale$Builder;

    invoke-direct {v8}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v7

    .line 37
    :goto_6
    invoke-static {v7}, Lorg/chromium/base/LocaleUtils;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    const-string v3, ","

    .line 38
    invoke-static {v3, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 39
    :cond_a
    invoke-static {}, Lorg/chromium/base/LocaleUtils;->getDefaultLocaleString()Ljava/lang/String;

    move-result-object v3

    .line 40
    :goto_7
    sget-object v5, LyT;->a:Landroid/content/SharedPreferences;

    const-string v6, "locale"

    .line 41
    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 43
    sget-object v7, LyT;->a:Landroid/content/SharedPreferences;

    .line 44
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 45
    invoke-interface {v7, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 48
    invoke-static {v6, v3}, LJ/N;->McqLioL4(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_c

    const/4 v3, 0x1

    goto :goto_8

    :cond_b
    throw v1

    :cond_c
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_d

    .line 49
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->a()Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;

    move-result-object v3

    new-array v5, v2, [I

    aput v2, v5, v4

    const/4 v6, 0x4

    invoke-virtual {v3, v1, v5, v6}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->a(LHA0;[II)V

    .line 50
    :cond_d
    iget-object v3, v0, LHY;->b:LWk0;

    .line 51
    iget-boolean v5, v3, LWk0;->a:Z

    if-eqz v5, :cond_e

    iget-object v5, v3, LWk0;->b:Ljava/lang/String;

    if-nez v5, :cond_e

    goto :goto_9

    .line 52
    :cond_e
    iput-boolean v2, v3, LWk0;->a:Z

    .line 53
    new-instance v5, LUk0;

    invoke-direct {v5, v3}, LUk0;-><init>(LWk0;)V

    .line 54
    iget-object v6, v3, LWk0;->b:Ljava/lang/String;

    if-eqz v6, :cond_f

    .line 55
    invoke-interface {v5, v6}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_9

    .line 56
    :cond_f
    new-instance v6, LVk0;

    invoke-direct {v6, v3, v5}, LVk0;-><init>(LWk0;Lorg/chromium/base/Callback;)V

    const-string v3, ""

    .line 57
    invoke-interface {v6, v3}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 58
    :goto_9
    iget-object v3, v0, LHY;->a:LFZ;

    if-eqz v3, :cond_2c

    .line 59
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 60
    iget-object v5, v3, LFZ;->b:LDZ;

    if-eqz v5, :cond_2b

    .line 61
    invoke-static {}, LdT;->b()Z

    move-result v5

    const-wide/16 v6, 0x1388

    if-eqz v5, :cond_11

    .line 62
    iget-object v3, v3, LFZ;->c:LEZ;

    .line 63
    iget v5, v3, LEZ;->x:I

    if-ne v5, v2, :cond_10

    goto :goto_a

    .line 64
    :cond_10
    iput v2, v3, LEZ;->x:I

    .line 65
    iget-object v5, v3, LEZ;->w:Landroid/os/Handler;

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a

    .line 66
    :cond_11
    iget-object v5, v3, LFZ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_a

    .line 67
    :cond_12
    sget-object v5, LzT;->a:Landroid/content/Context;

    .line 68
    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    :goto_a
    sget-object v3, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->f:Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;

    if-nez v3, :cond_13

    goto :goto_b

    .line 70
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 71
    sget-object v3, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->f:Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;

    iget-wide v10, v3, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->c:J

    sub-long/2addr v8, v10

    cmp-long v3, v8, v6

    if-gez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v3, 0x0

    :goto_c
    const-string v5, "Startup.BringToForegroundReason"

    .line 72
    invoke-static {v5, v3}, LfV;->a(Ljava/lang/String;Z)V

    .line 73
    iget-boolean v3, v0, LHY;->e:Z

    if-eqz v3, :cond_15

    goto/16 :goto_14

    :cond_15
    const-string v3, "command_line_on_non_rooted_enabled"

    const-string v5, "CommandLineOnNonRooted"

    .line 74
    invoke-static {v3, v5}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v3, LyT;->a:Landroid/content/SharedPreferences;

    .line 76
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v5

    const-string v6, "first_run_tos_accepted"

    .line 77
    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v5, :cond_2a

    .line 78
    invoke-static {v5}, LJ/N;->MXtGABIP(Ljava/lang/Object;)Z

    move-result v1

    .line 79
    invoke-static {}, LMc0;->a()Z

    .line 80
    invoke-static {}, LFc0;->a()Z

    move-result v8

    if-nez v7, :cond_16

    if-nez v1, :cond_16

    if-eqz v8, :cond_18

    :cond_16
    if-nez v7, :cond_17

    .line 81
    invoke-static {v3, v6, v2}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    :cond_17
    if-nez v1, :cond_18

    .line 82
    invoke-static {v5}, LJ/N;->MWguRfrK(Ljava/lang/Object;)V

    :cond_18
    const-string v1, "bottom_toolbar_enabled"

    const-string v3, "ChromeDuet"

    .line 83
    invoke-static {v1, v3}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adaptive_toolbar_enabled"

    const-string v3, "ChromeDuetAdaptive"

    .line 84
    invoke-static {v1, v3}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "labeled_bottom_toolbar_enabled"

    const-string v3, "ChromeDuetLabeled"

    .line 85
    invoke-static {v1, v3}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AndroidNightMode"

    .line 86
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 87
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "AndroidNightModeForQ"

    .line 88
    invoke-static {v3}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_d

    :cond_19
    const/4 v3, 0x0

    goto :goto_e

    :cond_1a
    :goto_d
    const/4 v3, 0x1

    .line 89
    :goto_e
    sget-object v5, Lay0;->a:Lcy0;

    .line 90
    iget-object v5, v5, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "night_mode_available"

    .line 91
    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 94
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_f

    :cond_1b
    const-string v3, "default_light_theme"

    .line 95
    invoke-static {v1, v3, v4}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 96
    sget-object v3, Lay0;->a:Lcy0;

    .line 97
    iget-object v3, v3, Lcy0;->a:Landroid/content/SharedPreferences;

    const-string v5, "night_mode_default_to_light"

    invoke-static {v3, v5, v1}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    :cond_1c
    :goto_f
    const-string v1, "night_mode_cct_available"

    const-string v3, "AndroidNightModeCCT"

    .line 98
    invoke-static {v1, v3}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "download_auto_resumption_in_native"

    const-string v3, "DownloadsAutoResumptionNative"

    .line 99
    invoke-static {v1, v3}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "prioritize_bootstrap_tasks"

    const-string v3, "PrioritizeBootstrapTasks"

    .line 100
    invoke-static {v1, v3}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "interest_feed_content_suggestions"

    const-string v3, "InterestFeedContentSuggestions"

    .line 101
    invoke-static {v1, v3}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v1, Lay0;->a:Lcy0;

    .line 103
    invoke-static {}, LJ/N;->M8H1SB2U()Z

    move-result v3

    .line 104
    iget-object v1, v1, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "network_service_warm_up_enabled"

    .line 105
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "immersive_ui_mode_enabled"

    const-string v3, "ImmersiveUiMode"

    .line 107
    invoke-static {v1, v3}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "swap_pixel_format_to_fix_convert_from_translucent"

    const-string v3, "SwapPixelFormatToFixConvertFromTranslucent"

    .line 108
    invoke-static {v1, v3}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v1, Lorg/chromium/chrome/browser/util/FeatureUtilities;->c:Ljava/lang/String;

    if-nez v1, :cond_1d

    .line 110
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->getReachedCodeProfilerTrialGroup()Ljava/lang/String;

    .line 111
    :cond_1d
    sget-object v1, Lay0;->a:Lcy0;

    const-string v3, "ReachedCodeProfiler"

    .line 112
    invoke-static {v3}, LJ/N;->MdC43qwX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    iget-object v1, v1, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "reached_code_profiler_group"

    .line 114
    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "start_surface_enabled"

    const-string v5, "StartSurfaceAndroid"

    .line 116
    invoke-static {v1, v5}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "click_to_call_open_dialer_directly"

    const-string v5, "ClickToCallOpenDialerDirectly"

    .line 117
    invoke-static {v1, v5}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->e()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 119
    sget-object v1, Lay0;->a:Lcy0;

    .line 120
    invoke-static {}, LZ60;->a()Z

    move-result v5

    const-string v6, "DownloadTabManagementModule"

    if-nez v5, :cond_1f

    .line 121
    invoke-static {v6}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v5

    const-string v7, "TabGridLayoutAndroid"

    if-nez v5, :cond_1e

    .line 122
    invoke-static {v7}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 123
    :cond_1e
    invoke-static {}, LvJ0;->a()LtJ0;

    move-result-object v5

    if-eqz v5, :cond_1f

    .line 124
    invoke-static {v7}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v5, 0x1

    goto :goto_10

    :cond_1f
    const/4 v5, 0x0

    .line 125
    :goto_10
    iget-object v1, v1, Lcy0;->a:Landroid/content/SharedPreferences;

    const-string v7, "grid_tab_switcher_enabled"

    invoke-static {v1, v7, v5}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 126
    sget-object v1, Lay0;->a:Lcy0;

    .line 127
    invoke-static {}, LZ60;->a()Z

    move-result v5

    if-nez v5, :cond_21

    .line 128
    invoke-static {v6}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "TabGroupsAndroid"

    if-nez v5, :cond_20

    .line 129
    invoke-static {v6}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 130
    :cond_20
    invoke-static {}, LvJ0;->a()LtJ0;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 131
    invoke-static {v6}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 132
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->e()Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v5, 0x1

    goto :goto_11

    :cond_21
    const/4 v5, 0x0

    .line 133
    :goto_11
    iget-object v1, v1, Lcy0;->a:Landroid/content/SharedPreferences;

    const-string v6, "tab_group_android_enabled"

    invoke-static {v1, v6, v5}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 134
    sget-object v1, Lay0;->a:Lcy0;

    const-string v5, "Chrome.Flags.DuetTabstripIntegrationEnabled"

    .line 135
    invoke-static {}, LZ60;->a()Z

    move-result v6

    xor-int/2addr v6, v2

    if-nez v6, :cond_22

    .line 136
    iget-object v1, v1, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-static {v1, v5, v4}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    goto :goto_13

    :cond_22
    const-string v6, "DuetTabStripIntegrationAndroid"

    .line 137
    invoke-static {v6}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 138
    invoke-static {}, LvJ0;->a()LtJ0;

    move-result-object v6

    if-eqz v6, :cond_23

    const/4 v6, 0x1

    goto :goto_12

    :cond_23
    const/4 v6, 0x0

    :goto_12
    if-eqz v6, :cond_24

    const/4 v4, 0x1

    .line 139
    :cond_24
    iget-object v1, v1, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-static {v1, v5, v4}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 140
    :cond_25
    :goto_13
    invoke-static {v3}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    .line 141
    invoke-static {v1}, Lorg/chromium/base/library_loader/LibraryLoader;->a(Z)V

    .line 142
    iput-boolean v2, v0, LHY;->e:Z

    :goto_14
    const-string v0, "OfflineIndicator"

    .line 143
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_15

    .line 144
    :cond_26
    sget-object v0, Lyn0;->i:Lyn0;

    if-nez v0, :cond_27

    .line 145
    new-instance v0, Lyn0;

    invoke-direct {v0}, Lyn0;-><init>()V

    sput-object v0, Lyn0;->i:Lyn0;

    .line 146
    :cond_27
    :goto_15
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->n0:Z

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->s()Z

    move-result v0

    if-nez v0, :cond_29

    .line 147
    :cond_28
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->n1()V

    :cond_29
    return-void

    .line 148
    :cond_2a
    throw v1

    .line 149
    :cond_2b
    throw v1

    .line 150
    :cond_2c
    throw v1

    .line 151
    :cond_2d
    throw v1

    .line 152
    :cond_2e
    throw v1

    .line 153
    :cond_2f
    throw v1
.end method

.method public final e0()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->T0:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, LsG0;->c()LsG0;

    move-result-object v0

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xa

    if-eqz v0, :cond_5

    .line 5
    iget-object v4, v0, LsG0;->w:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, LsG0;->w:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 6
    iget-wide v5, v4, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 7
    invoke-static {v5, v6, v4}, LJ/N;->Mb40kbdU(JLjava/lang/Object;)[I

    move-result-object v4

    .line 8
    invoke-static {v4}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a([I)Ljava/util/Set;

    move-result-object v4

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v0, LsG0;->w:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 10
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->c()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 11
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iput-object v2, p0, Lorg/chromium/chrome/browser/ChromeActivity;->k0:Lhe0;

    .line 12
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->u0:LoG0;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b(LoG0;)V

    .line 14
    iput-object v2, p0, Lorg/chromium/chrome/browser/ChromeActivity;->u0:LoG0;

    :cond_3
    return-void

    .line 15
    :cond_4
    throw v2

    :cond_5
    if-eqz v1, :cond_9

    .line 16
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->f()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 17
    :cond_6
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x3

    .line 18
    invoke-static {v0}, Lhe0;->a(I)V

    goto :goto_2

    .line 19
    :cond_7
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->c()I

    move-result v0

    if-eq v0, v2, :cond_8

    const/4 v0, 0x4

    .line 20
    invoke-static {v0}, Lhe0;->a(I)V

    goto :goto_2

    :cond_8
    const/4 v0, 0x5

    .line 21
    invoke-static {v0}, Lhe0;->a(I)V

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v0, 0x2

    .line 22
    invoke-static {v0}, Lhe0;->a(I)V

    .line 23
    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->u0:LoG0;

    if-nez v0, :cond_a

    if-eqz v1, :cond_a

    .line 24
    new-instance v0, LxY;

    invoke-direct {v0, p0}, LxY;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->u0:LoG0;

    .line 25
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a(LoG0;)V

    :cond_a
    return-void
.end method

.method public final synthetic e1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LBg0;->W()V

    return-void
.end method

.method public f0()Lbd0;
    .locals 2

    .line 1
    new-instance v0, Lbd0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbd0;-><init>(Landroid/app/Activity;I)V

    return-object v0
.end method

.method public final synthetic f1()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->isIncognitoDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->q1()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v1

    check-cast v1, LKO0;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->b(I)V

    goto :goto_0

    .line 5
    :cond_0
    throw v2

    .line 6
    :cond_1
    :goto_0
    invoke-static {p0}, Lse0;->a(Landroid/content/Context;)Lse0;

    move-result-object v0

    invoke-virtual {v0}, Lse0;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    sget-object v0, Lle0;->d:Lle0;

    if-nez v0, :cond_2

    .line 8
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 9
    new-instance v1, Lle0;

    invoke-direct {v1, v0}, Lle0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lle0;->d:Lle0;

    .line 10
    :cond_2
    sget-object v0, Lle0;->d:Lle0;

    .line 11
    iget v1, v0, Lle0;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lle0;->a:I

    .line 12
    iget-object v0, v0, Lle0;->b:Lre0;

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lre0;->b()V

    .line 13
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->u0:LoG0;

    if-eqz v0, :cond_5

    .line 14
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->u0:LoG0;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b(LoG0;)V

    .line 16
    :cond_4
    iput-object v2, p0, Lorg/chromium/chrome/browser/ChromeActivity;->u0:LoG0;

    .line 17
    :cond_5
    invoke-super {p0}, LBg0;->g()V

    return-void
.end method

.method public g0()LpZ;
    .locals 1

    .line 1
    new-instance v0, LFY;

    invoke-direct {v0, p0}, LFY;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    return-object v0
.end method

.method public final synthetic g1()V
    .locals 0

    .line 1
    invoke-static {}, LuO0;->b()V

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->c0()V

    return-void
.end method

.method public getTabCreator(Z)LbI0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->p0:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->h0:LbI0;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->g0:LbI0;

    :goto_0
    return-object p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to access TabCreator before initialization"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTabModelSelector()LpI0;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->p0:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->e0:LpI0;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to access TabModelSelector before initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h0()LYL0;
    .locals 1

    .line 1
    new-instance v0, LYL0;

    invoke-direct {v0, p0}, LYL0;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    return-object v0
.end method

.method public final h1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->j0:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->a:LpI0;

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->c:Landroid/content/Context;

    iget-object v2, v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->d:Landroid/content/ComponentCallbacks;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 4
    iget-object v1, v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->b:LDI0;

    invoke-virtual {v1}, LDI0;->destroy()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->a:LpI0;

    .line 6
    :cond_1
    sget-wide v1, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->f:J

    .line 7
    invoke-static {v1, v2, v0}, LJ/N;->MAKAEiev(JLjava/lang/Object;)V

    return-void
.end method

.method public i()LK00;
    .locals 9

    .line 1
    new-instance v8, LN00;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->l0()V

    .line 2
    invoke-virtual {p0}, LBg0;->N()Lnl0;

    move-result-object v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->O0()LkK0;

    move-result-object v4

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->O0()LkK0;

    move-result-object v0

    .line 4
    iget-object v7, v0, LkK0;->G:LST;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    .line 5
    invoke-direct/range {v0 .. v7}, LN00;-><init>(Landroid/content/Context;Lnl0;LpI0;LkK0;Landroid/view/View;LQT;LQT;)V

    return-object v8
.end method

.method public abstract i0()LpI0;
.end method

.method public final i1()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->j0:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->j0:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    .line 3
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->b()V

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->j0:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 5
    sget-wide v2, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->f:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 6
    invoke-static {}, LJ/N;->MU4tSmY3()J

    move-result-wide v2

    .line 7
    sput-wide v2, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->f:J

    .line 8
    :cond_1
    iput-object v1, v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->a:LpI0;

    if-eqz v1, :cond_3

    .line 9
    new-instance v1, LSk0;

    invoke-direct {v1, v0}, LSk0;-><init>(Lorg/chromium/chrome/browser/metrics/UmaSessionStats;)V

    iput-object v1, v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->d:Landroid/content/ComponentCallbacks;

    .line 10
    iget-object v2, v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->c:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 11
    iget-object v1, v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->e:Z

    .line 12
    new-instance v1, LTk0;

    iget-object v2, v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->a:LpI0;

    invoke-direct {v1, v0, v2}, LTk0;-><init>(Lorg/chromium/chrome/browser/metrics/UmaSessionStats;LpI0;)V

    iput-object v1, v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->b:LDI0;

    .line 13
    :cond_3
    sget-wide v1, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->f:J

    .line 14
    invoke-static {v1, v2, v0}, LJ/N;->M950EFso(JLjava/lang/Object;)V

    .line 15
    invoke-static {}, LeB0;->d()LeB0;

    move-result-object v0

    .line 16
    invoke-static {}, LJ/N;->MGJFzlge()Z

    move-result v1

    .line 17
    iget-object v2, v0, LeB0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "in_metrics_sample"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    invoke-virtual {v0}, LeB0;->c()V

    .line 19
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->b()V

    .line 20
    invoke-static {}, LbZ;->b()V

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 21
    throw v0
.end method

.method public j0()V
    .locals 7

    const-string v0, "toolbarContainerStub.inflate"

    const-string v1, "setContentView(R.layout.main)"

    const-string v2, "ChromeActivity.doLayoutInflation"

    .line 1
    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v2

    .line 2
    :try_start_0
    invoke-static {}, LqU;->e()LqU;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v4, 0x0

    .line 3
    :try_start_1
    invoke-static {v1, v4}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f0e00ff

    .line 4
    invoke-virtual {p0, v5}, LQ8;->setContentView(I)V

    .line 5
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->v0()I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    const v1, 0x7f0b0118

    .line 7
    invoke-virtual {p0, v1}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->v0()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 9
    invoke-static {v0, v4}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 11
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f0b0117

    .line 12
    invoke-virtual {p0, v0}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, LDJ0;

    if-nez v0, :cond_1

    const v1, 0x7f0b02f7

    .line 13
    invoke-virtual {p0, v1}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lwc1;->a(Landroid/view/View;)V

    .line 14
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->N0()I

    move-result v1

    if-eq v1, v5, :cond_2

    if-eqz v0, :cond_2

    .line 15
    invoke-interface {v0, v1}, LDJ0;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :cond_2
    :try_start_2
    invoke-virtual {v3}, LqU;->close()V

    .line 17
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->T()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v2, :cond_3

    .line 18
    invoke-static {v4, v2}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 19
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 20
    :try_start_4
    invoke-virtual {v3}, LqU;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    .line 21
    :try_start_5
    sget-object v4, LRB;->a:LLB;

    invoke-virtual {v4, v0, v3}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 22
    :goto_0
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    .line 23
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz v2, :cond_4

    .line 24
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_4
    throw v1
.end method

.method public final j1()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->r0:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->q0:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 5
    invoke-virtual {p0}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060158

    .line 6
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 7
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 10
    new-instance v1, LtY;

    invoke-direct {v1, p0}, LtY;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->r0:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public k()V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "ChromeActivity:CompositorInitialization"

    .line 1
    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v2, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->s0()Ly30;

    move-result-object v3

    .line 4
    invoke-static {}, LZ60;->b()LZ60;

    move-result-object v4

    iget-boolean v4, v4, LZ60;->a:Z

    .line 5
    invoke-direct {v2, p0, v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;-><init>(Landroid/content/Context;Ly30;Z)V

    .line 6
    iput-object v2, p0, Lorg/chromium/chrome/browser/ChromeActivity;->i0:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object v3

    .line 8
    new-instance v4, LA30;

    invoke-direct {v4, v2, v3}, LA30;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;LpI0;)V

    .line 9
    iget-object v2, p0, Lorg/chromium/chrome/browser/ChromeActivity;->x0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {p0}, LBg0;->Q()LDc1;

    move-result-object v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->M0()Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    move-result-object v4

    if-eqz v2, :cond_6

    .line 10
    invoke-static {}, LZ60;->b()LZ60;

    move-result-object v0

    iget-boolean v0, v0, LZ60;->b:Z

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->z:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    .line 12
    :cond_0
    iget-object v0, v2, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->A:Lorg/chromium/chrome/browser/compositor/CompositorView;

    .line 13
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v5

    iget-object v6, v2, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->z:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    .line 14
    iput-object v3, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->F:Lorg/chromium/ui/base/WindowAndroid;

    .line 15
    invoke-virtual {v3, v0}, Lorg/chromium/ui/base/WindowAndroid;->addSelectionHandlesObserver(LYc1;)V

    .line 16
    iput-object v6, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->G:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    .line 17
    iput-object v4, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->H:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 18
    invoke-static {v0, v5, v3, v6, v4}, LJ/N;->M1onz6N$(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v3

    .line 19
    iput-wide v3, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    .line 20
    iput-boolean v5, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->z:Z

    .line 21
    iget-object v3, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->x:LK20;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->b()I

    move-result v4

    check-cast v3, LP20;

    invoke-virtual {v3, v4}, LP20;->a(I)V

    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/compositor/CompositorView;->setVisibility(I)V

    .line 23
    iget-wide v4, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    .line 24
    invoke-static {v4, v5, v0}, LJ/N;->MKvVEaSX(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/ui/resources/ResourceManager;

    .line 25
    iput-object v4, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->E:Lorg/chromium/ui/resources/ResourceManager;

    .line 26
    iget-wide v4, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    .line 27
    invoke-static {v4, v5, v0}, LJ/N;->M_Nkznfe(JLjava/lang/Object;)V

    .line 28
    iget-object v0, v2, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->z:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    if-eqz v0, :cond_1

    .line 29
    iget-object v2, v2, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->A:Lorg/chromium/chrome/browser/compositor/CompositorView;

    .line 30
    iget-object v2, v2, Lorg/chromium/chrome/browser/compositor/CompositorView;->E:Lorg/chromium/ui/resources/ResourceManager;

    .line 31
    iput-object v2, v0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->e:Lorg/chromium/ui/resources/ResourceManager;

    .line 32
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->U0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, LP40;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    new-instance v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-direct {v0, p0, p0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;Lg50;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->z0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 34
    :cond_2
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v2, "enable-dom-distiller"

    invoke-virtual {v0, v2}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 35
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v4, "disable-reader-mode-bottom-bar"

    invoke-virtual {v0, v4}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 36
    invoke-static {}, LC70;->a()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 37
    new-instance v0, LG70;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object v2

    invoke-direct {v0, v2, p0}, LG70;-><init>(LpI0;Lorg/chromium/chrome/browser/ChromeActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->A0:LG70;

    .line 38
    :cond_5
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    .line 39
    :cond_6
    throw v0
.end method

.method public k0()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->p0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->w0()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-static {v0}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method public k1()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->b(Z)V

    return-void
.end method

.method public l()V
    .locals 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->q0:Z

    .line 2
    invoke-static {}, Lca0;->a()Lba0;

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->j1()V

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v1

    .line 5
    iget-boolean v2, v1, Lorg/chromium/chrome/browser/download/DownloadManagerService;->O:Z

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Lu80;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu80;-><init>(Z)V

    iput-object v2, v1, Lorg/chromium/chrome/browser/download/DownloadManagerService;->I:Lu80;

    .line 7
    new-instance v2, Lu80;

    invoke-direct {v2, v0}, Lu80;-><init>(Z)V

    iput-object v2, v1, Lorg/chromium/chrome/browser/download/DownloadManagerService;->J:Lu80;

    .line 8
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    .line 9
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "ResumptionAttemptLeft"

    .line 10
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b()J

    move-result-wide v4

    .line 14
    invoke-static {v4, v5, v2, v3}, LJ/N;->MQ35Y$D$(JLjava/lang/Object;Z)V

    .line 15
    iput-boolean v0, v1, Lorg/chromium/chrome/browser/download/DownloadManagerService;->O:Z

    .line 16
    :cond_0
    sget-object v0, LUT0;->g:Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 18
    invoke-static {v2}, LUT0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_2
    sput-object v1, LUT0;->g:Ljava/util/Set;

    .line 20
    :goto_1
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->d()V

    .line 21
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    check-cast v0, LKO0;

    if-eqz v0, :cond_5

    .line 22
    invoke-static {}, LIO0;->a()V

    .line 23
    invoke-virtual {p0}, LBg0;->O()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 24
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    check-cast v0, LKO0;

    if-eqz v0, :cond_3

    goto :goto_2

    .line 25
    :cond_3
    throw v1

    .line 26
    :cond_4
    :goto_2
    invoke-super {p0}, LBg0;->l()V

    .line 27
    invoke-virtual {p0}, LBg0;->Q()LDc1;

    const v0, 0x7f0b0227

    .line 28
    invoke-virtual {p0, v0}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const v0, 0x7f0b0226

    .line 29
    invoke-virtual {p0, v0}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 30
    throw v1

    .line 31
    :cond_5
    throw v1
.end method

.method public l0()V
    .locals 0

    return-void
.end method

.method public l1()V
    .locals 0

    return-void
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m1()V
    .locals 0

    return-void
.end method

.method public n0()LpY;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->O0:LpY;

    return-object v0
.end method

.method public final n1()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->q0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->n0:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->n0:Z

    .line 4
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->o0:Z

    if-nez v0, :cond_1

    .line 5
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->o0:Z

    .line 6
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->Q0()V

    .line 7
    invoke-static {}, LHh0;->f()LHh0;

    move-result-object v0

    invoke-virtual {v0}, LHh0;->b()V

    .line 8
    sget-object v0, LdZ;->a:LeZ;

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, v0, LeZ;->c:J

    .line 10
    iput-wide v1, v0, LeZ;->b:J

    .line 11
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    new-instance v2, LcZ;

    invoke-direct {v2, v0}, LcZ;-><init>(LeZ;)V

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_1
    return-void
.end method

.method public o0()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 2
    invoke-virtual {p0}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ef

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public o1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->N0()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onAccessibilityStateChanged(Z)V
    .locals 0

    .line 1
    invoke-static {}, LuO0;->b()V

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->c0()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->Q0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->Q0:Z

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 8
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->q0:Z

    if-eqz v0, :cond_0

    const-string v0, "SystemBack"

    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, LoN0;->c()V

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    check-cast v0, LKO0;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 4
    invoke-static {}, LIO0;->a()V

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->x0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    throw v1

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->x0()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    .line 9
    invoke-interface {v1}, LX01;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {v1}, LX01;->f()V

    return-void

    .line 11
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->P0()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 12
    :cond_5
    invoke-super {p0}, LD2;->onBackPressed()V

    return-void

    .line 13
    :cond_6
    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, LBg0;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->M0:I

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    and-int/lit8 v0, v0, 0xf

    const/4 v4, 0x7

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, v1, 0xf

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_5

    iget v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->M0:I

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    and-int/lit8 v1, v1, 0x30

    if-eq v0, v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_5

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void

    .line 4
    :cond_5
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->M0:I

    .line 5
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->N0:I

    if-eq v0, v1, :cond_7

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    check-cast v0, LKO0;

    if-eqz v0, :cond_6

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void

    :cond_6
    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_7
    return-void
.end method

.method public final onDestroy()V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->A0:LG70;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, LG70;->destroy()V

    .line 3
    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->A0:LG70;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->z0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    if-eqz v0, :cond_1

    .line 5
    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->z0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->f0:LDI0;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, LDI0;->destroy()V

    .line 8
    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->f0:LDI0;

    .line 9
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->x0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_8

    .line 10
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 11
    iget-object v4, v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->z:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

    if-eqz v4, :cond_4

    .line 12
    iget-wide v5, v4, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->d:J

    cmp-long v7, v5, v2

    if-nez v7, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {v5, v6}, LJ/N;->M4YKMV3h(J)V

    .line 14
    iput-wide v2, v4, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->d:J

    .line 15
    :cond_4
    :goto_0
    iget-object v4, v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->A:Lorg/chromium/chrome/browser/compositor/CompositorView;

    .line 16
    iget-object v5, v4, Lorg/chromium/chrome/browser/compositor/CompositorView;->x:LK20;

    check-cast v5, LP20;

    invoke-virtual {v5}, LP20;->a()V

    .line 17
    iget-object v5, v4, Lorg/chromium/chrome/browser/compositor/CompositorView;->N:LQ20;

    if-eqz v5, :cond_5

    .line 18
    iget-object v6, v5, LQ20;->a:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    :cond_5
    iget-wide v5, v4, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    cmp-long v7, v5, v2

    if-eqz v7, :cond_6

    .line 20
    invoke-static {v5, v6, v4}, LJ/N;->MsBICFNS(JLjava/lang/Object;)V

    .line 21
    :cond_6
    iput-wide v2, v4, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    .line 22
    iget-object v4, v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->H:LnZ;

    if-eqz v4, :cond_7

    .line 23
    iget-object v4, v4, LnZ;->x:LWT;

    invoke-virtual {v4, v0}, LWT;->b(Ljava/lang/Object;)Z

    .line 24
    iput-object v1, v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->H:LnZ;

    .line 25
    :cond_7
    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->x0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    .line 26
    :cond_8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->l1()V

    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->D0:LkK0;

    if-eqz v0, :cond_25

    .line 28
    iget-object v4, v0, LkK0;->H:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    if-eqz v4, :cond_9

    .line 29
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->a()V

    .line 30
    iput-object v1, v0, LkK0;->H:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    .line 31
    iget-object v4, v0, LkK0;->G:LST;

    invoke-virtual {v4, v1}, LST;->a(Ljava/lang/Object;)V

    .line 32
    :cond_9
    iget-object v4, v0, LkK0;->I:LlU0;

    if-eqz v4, :cond_a

    .line 33
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v4

    iget-object v5, v0, LkK0;->I:LlU0;

    .line 34
    iget-object v4, v4, Lorg/chromium/components/search_engines/TemplateUrlService;->b:LWT;

    invoke-virtual {v4, v5}, LWT;->b(Ljava/lang/Object;)Z

    .line 35
    iput-object v1, v0, LkK0;->I:LlU0;

    .line 36
    :cond_a
    iget-object v4, v0, LkK0;->l0:LLk0;

    if-eqz v4, :cond_b

    .line 37
    invoke-virtual {v4}, LLk0;->a()V

    .line 38
    iput-object v1, v0, LkK0;->l0:LLk0;

    .line 39
    :cond_b
    iget-object v4, v0, LkK0;->J:LWo0;

    if-eqz v4, :cond_c

    .line 40
    invoke-interface {v4, v0}, LGm0;->b(LVp0;)V

    .line 41
    :cond_c
    iget-object v4, v0, LkK0;->A:LfL0;

    iget-object v5, v0, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/ChromeActivity;->L0()LcM0;

    move-result-object v5

    .line 42
    iget-object v4, v4, LfL0;->a:LQK0;

    .line 43
    iget-object v4, v4, LQK0;->x:LWT;

    invoke-virtual {v4, v5}, LWT;->b(Ljava/lang/Object;)Z

    .line 44
    iget-object v4, v0, LkK0;->A:LfL0;

    if-eqz v4, :cond_24

    .line 45
    invoke-static {}, Lpt0;->f()Lpt0;

    move-result-object v5

    iget-object v6, v4, LfL0;->c:Lot0;

    .line 46
    iget-object v5, v5, Lpt0;->b:LWT;

    invoke-virtual {v5, v6}, LWT;->b(Ljava/lang/Object;)Z

    .line 47
    iget-object v5, v4, LfL0;->a:LQK0;

    invoke-virtual {v5}, LQK0;->b()V

    .line 48
    iget-object v4, v4, LfL0;->b:LIK0;

    if-eqz v4, :cond_17

    .line 49
    iget-object v5, v4, LIK0;->w:Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;

    if-eqz v5, :cond_16

    .line 50
    iget-object v6, v5, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->y:LJJ0;

    if-eqz v6, :cond_d

    .line 51
    iget-object v6, v6, LJJ0;->a:LWT;

    invoke-virtual {v6, v5}, LWT;->b(Ljava/lang/Object;)Z

    .line 52
    iput-object v1, v5, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->y:LJJ0;

    .line 53
    :cond_d
    iget-object v6, v5, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->B:Lorg/chromium/chrome/browser/toolbar/NewTabButton;

    if-eqz v6, :cond_f

    .line 54
    iget-object v7, v6, Lorg/chromium/chrome/browser/toolbar/NewTabButton;->B:LJJ0;

    if-eqz v7, :cond_e

    .line 55
    iget-object v7, v7, LJJ0;->a:LWT;

    invoke-virtual {v7, v6}, LWT;->b(Ljava/lang/Object;)Z

    .line 56
    iput-object v1, v6, Lorg/chromium/chrome/browser/toolbar/NewTabButton;->B:LJJ0;

    .line 57
    :cond_e
    iput-object v1, v5, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->B:Lorg/chromium/chrome/browser/toolbar/NewTabButton;

    .line 58
    :cond_f
    iget-object v6, v5, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->D:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    if-eqz v6, :cond_11

    .line 59
    iget-object v7, v6, Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;->A:LNJ0;

    if-eqz v7, :cond_10

    .line 60
    iget-object v7, v7, LNJ0;->a:LWT;

    invoke-virtual {v7, v6}, LWT;->b(Ljava/lang/Object;)Z

    .line 61
    :cond_10
    iput-object v1, v5, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->D:Lorg/chromium/chrome/browser/toolbar/top/ToggleTabStackButton;

    .line 62
    :cond_11
    iget-object v6, v5, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->z:Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;

    if-eqz v6, :cond_14

    .line 63
    iget-object v7, v6, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->w0:LpI0;

    if-eqz v7, :cond_12

    iget-object v8, v6, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->y0:LxI0;

    check-cast v7, LrI0;

    .line 64
    iget-object v7, v7, LrI0;->d:LWT;

    invoke-virtual {v7, v8}, LWT;->b(Ljava/lang/Object;)Z

    .line 65
    :cond_12
    iget-object v7, v6, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->x0:LNJ0;

    if-eqz v7, :cond_13

    .line 66
    iget-object v7, v7, LNJ0;->a:LWT;

    invoke-virtual {v7, v6}, LWT;->b(Ljava/lang/Object;)Z

    .line 67
    :cond_13
    iput-object v1, v5, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->z:Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;

    .line 68
    :cond_14
    iget-object v6, v5, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->C:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    if-eqz v6, :cond_15

    .line 69
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/toolbar/MenuButton;->a()V

    .line 70
    iput-object v1, v5, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->C:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    .line 71
    :cond_15
    iput-object v1, v4, LIK0;->w:Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;

    .line 72
    :cond_16
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->i()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 73
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v5

    .line 74
    iget-object v5, v5, Lorg/chromium/components/search_engines/TemplateUrlService;->b:LWT;

    invoke-virtual {v5, v4}, LWT;->b(Ljava/lang/Object;)Z

    .line 75
    :cond_17
    iget-object v4, v0, LkK0;->N:LpH0;

    if-eqz v4, :cond_19

    .line 76
    iget-object v4, v0, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 77
    iget-object v5, v0, LkK0;->N:LpH0;

    .line 78
    iget-object v4, v4, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v4, v5}, LWT;->b(Ljava/lang/Object;)Z

    .line 79
    :cond_18
    iput-object v1, v0, LkK0;->N:LpH0;

    .line 80
    :cond_19
    iget-object v4, v0, LkK0;->w:LJJ0;

    .line 81
    iget-object v5, v4, LJJ0;->c:LpI0;

    if-eqz v5, :cond_1a

    .line 82
    iget-object v6, v4, LJJ0;->b:LxI0;

    check-cast v5, LrI0;

    .line 83
    iget-object v5, v5, LrI0;->d:LWT;

    invoke-virtual {v5, v6}, LWT;->b(Ljava/lang/Object;)Z

    .line 84
    iput-object v1, v4, LJJ0;->c:LpI0;

    .line 85
    :cond_1a
    iget-object v4, v4, LJJ0;->a:LWT;

    invoke-virtual {v4}, LWT;->clear()V

    .line 86
    iget-object v4, v0, LkK0;->x:LNJ0;

    .line 87
    iget-object v5, v4, LNJ0;->b:LpI0;

    if-eqz v5, :cond_1b

    .line 88
    check-cast v5, LrI0;

    .line 89
    iget-object v5, v5, LrI0;->d:LWT;

    invoke-virtual {v5, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 90
    iput-object v1, v4, LNJ0;->b:LpI0;

    .line 91
    :cond_1b
    iget-object v4, v4, LNJ0;->a:LWT;

    invoke-virtual {v4}, LWT;->clear()V

    .line 92
    iget-object v4, v0, LkK0;->M:LGJ0;

    .line 93
    iget-object v5, v4, LGJ0;->y:Lqi0;

    if-eqz v5, :cond_1c

    .line 94
    check-cast v5, Lqg0;

    invoke-virtual {v5, v4}, Lqg0;->b(Lvi0;)V

    .line 95
    iput-object v1, v4, LGJ0;->y:Lqi0;

    .line 96
    :cond_1c
    iget-object v5, v4, LGJ0;->B:LKE0;

    if-eqz v5, :cond_1d

    .line 97
    invoke-virtual {v5, v4}, LKE0;->b(LJE0;)V

    .line 98
    iput-object v1, v4, LGJ0;->B:LKE0;

    .line 99
    :cond_1d
    iget-object v5, v4, LGJ0;->z:Lorg/chromium/chrome/browser/signin/SigninManager;

    if-eqz v5, :cond_1e

    .line 100
    iget-object v5, v5, Lorg/chromium/chrome/browser/signin/SigninManager;->f:LWT;

    invoke-virtual {v5, v4}, LWT;->b(Ljava/lang/Object;)Z

    .line 101
    iput-object v1, v4, LGJ0;->z:Lorg/chromium/chrome/browser/signin/SigninManager;

    .line 102
    :cond_1e
    iget-object v5, v4, LGJ0;->A:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    if-eqz v5, :cond_1f

    .line 103
    invoke-virtual {v5, v4}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b(LoG0;)V

    .line 104
    iput-object v1, v4, LGJ0;->A:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 105
    :cond_1f
    iget-object v4, v0, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    .line 106
    iget-wide v5, v4, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->f:J

    cmp-long v7, v5, v2

    if-nez v7, :cond_20

    goto :goto_1

    .line 107
    :cond_20
    invoke-static {v5, v6, v4}, LJ/N;->MltVHpYK(JLjava/lang/Object;)V

    .line 108
    iput-wide v2, v4, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->f:J

    .line 109
    :goto_1
    iget-object v4, v0, LkK0;->X:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 110
    iget-object v4, v0, LkK0;->J:LWo0;

    if-eqz v4, :cond_21

    .line 111
    iget-object v5, v0, LkK0;->Z:LVp0;

    invoke-interface {v4, v5}, LGm0;->b(LVp0;)V

    .line 112
    iput-object v1, v0, LkK0;->Z:LVp0;

    .line 113
    :cond_21
    iget-object v4, v0, LkK0;->y:Lf00;

    if-eqz v4, :cond_22

    .line 114
    iget-object v4, v4, Lf00;->A:LWT;

    invoke-virtual {v4, v0}, LWT;->b(Ljava/lang/Object;)Z

    .line 115
    :cond_22
    iget-object v0, v0, LkK0;->z:LCJ0;

    if-eqz v0, :cond_23

    .line 116
    iget-object v4, v0, Lf00;->A:LWT;

    invoke-virtual {v4}, LWT;->clear()V

    .line 117
    iget-object v4, v0, Lf00;->B:LWT;

    invoke-virtual {v4}, LWT;->clear()V

    .line 118
    iget-object v4, v0, LCJ0;->E:LJJ0;

    if-eqz v4, :cond_23

    .line 119
    iget-object v4, v4, LJJ0;->a:LWT;

    invoke-virtual {v4, v0}, LWT;->b(Ljava/lang/Object;)Z

    .line 120
    iput-object v1, v0, LCJ0;->E:LJJ0;

    .line 121
    :cond_23
    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->D0:LkK0;

    goto :goto_2

    .line 122
    :cond_24
    throw v1

    .line 123
    :cond_25
    :goto_2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->R0:Z

    if-eqz v0, :cond_26

    .line 124
    invoke-static {}, Lorg/chromium/policy/CombinedPolicyProvider;->a()Lorg/chromium/policy/CombinedPolicyProvider;

    move-result-object v0

    .line 125
    iget-object v0, v0, Lorg/chromium/policy/CombinedPolicyProvider;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->R0:Z

    .line 127
    :cond_26
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->i0:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    if-eqz v0, :cond_28

    .line 128
    iget-wide v4, v0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->d:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_27

    .line 129
    invoke-static {v4, v5}, LJ/N;->MKivVmLp(J)V

    .line 130
    iput-wide v2, v0, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->d:J

    .line 131
    :cond_27
    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->i0:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 132
    :cond_28
    throw v1
.end method

.method public onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->P0:Lt70;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->q0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->b(Z)V

    if-nez p1, :cond_0

    .line 3
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->a(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->h1()V

    .line 5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->i1()V

    .line 6
    sget-object v0, Lpl0;->y:Lpl0;

    .line 7
    invoke-virtual {v0, p0}, Lpl0;->a(Landroid/app/Activity;)Z

    move-result v0

    .line 8
    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->c(Z)V

    .line 9
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    check-cast v0, LKO0;

    if-eqz v0, :cond_1

    .line 10
    invoke-super {p0, p1}, LBg0;->onMultiWindowModeChanged(Z)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 11
    throw p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    check-cast v0, LKO0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->c()LPO0;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, LPO0;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 3
    invoke-super {p0, p1}, LBg0;->onNewIntent(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->a(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->P0:Lt70;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->n0()LpY;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->n0()LpY;

    move-result-object v0

    invoke-virtual {v0}, LpY;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->W0()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/assist/AssistContent;->setWebUri(Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, LBg0;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object p1

    check-cast p1, LKO0;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public onStart()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    sget-object v2, LOH0;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 2
    sget-object v2, LOH0;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LLH0;

    check-cast v2, LhJ0;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    throw v3

    .line 4
    :cond_1
    invoke-super {p0}, LBg0;->onStart()V

    .line 5
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->l0:Z

    if-eqz v1, :cond_4

    .line 6
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->l0:Z

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v4, 0x2710

    .line 8
    sput-boolean v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->d:Z

    .line 9
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    new-instance v0, Ltt0;

    invoke-direct {v0}, Ltt0;-><init>()V

    .line 11
    new-instance v2, Lrt0;

    invoke-direct {v2, v0, v1}, Lrt0;-><init>(Lst0;Landroid/content/Context;)V

    .line 12
    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    .line 13
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, Lqt0;

    invoke-direct {v1, v2}, Lqt0;-><init>(LkW;)V

    invoke-static {v0, v1, v4, v5}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    .line 14
    new-instance v0, LsY;

    invoke-direct {v0, p0}, LsY;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 15
    sget-boolean v1, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->d:Z

    if-eqz v1, :cond_2

    .line 16
    sget-object v1, LZ01;->a:LFW;

    const-wide/16 v2, 0x0

    .line 17
    invoke-static {v1, v0, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 18
    :cond_2
    sget-object v1, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_3
    throw v3

    .line 20
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->x0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->g()V

    .line 22
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->c0()V

    .line 23
    invoke-virtual {p0}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 24
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;->M0:I

    .line 25
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->N0:I

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->T0:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, LBg0;->onStop()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->l0:Z

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->x0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->T0:Z

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 2
    invoke-static {p1}, LKY;->b(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public onUserLeaveHint()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->w0:LWi0;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, LWi0;

    invoke-direct {v0}, LWi0;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->w0:LWi0;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->w0:LWi0;

    invoke-virtual {v0, p0}, LWi0;->a(Lorg/chromium/chrome/browser/ChromeActivity;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, LBg0;->onWindowFocusChanged(Z)V

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->j1()V

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v2, v0, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    .line 5
    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/tab/Tab;->d(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->v()Z

    .line 7
    :goto_0
    invoke-static {v0}, LgH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 8
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    check-cast v0, LKO0;

    if-eqz v0, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    throw v1

    .line 10
    :cond_3
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->a(Landroid/app/Activity;)I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    .line 11
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v2

    check-cast v2, LKO0;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/tab/Tab;->b(I)V

    goto :goto_2

    .line 13
    :cond_5
    throw v1

    .line 14
    :cond_6
    :goto_2
    invoke-static {}, Lorg/chromium/ui/base/Clipboard;->getInstance()Lorg/chromium/ui/base/Clipboard;

    move-result-object v0

    .line 15
    iget-wide v1, v0, Lorg/chromium/ui/base/Clipboard;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_9

    if-eqz p1, :cond_9

    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_3

    .line 16
    :cond_7
    iget-object p1, v0, Lorg/chromium/ui/base/Clipboard;->b:Landroid/content/ClipboardManager;

    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_3

    .line 17
    :cond_8
    invoke-static {p1}, LBU;->a(Landroid/content/ClipDescription;)J

    move-result-wide v1

    .line 18
    iget-wide v3, v0, Lorg/chromium/ui/base/Clipboard;->c:J

    .line 19
    invoke-static {v3, v4, v0, v1, v2}, LJ/N;->MWrNP8sy(JLjava/lang/Object;J)V

    :cond_9
    :goto_3
    return-void
.end method

.method public p0()Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->H0:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    return-object v0
.end method

.method public p1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q0()LtQ0;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->E0:LtQ0;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->R0()V

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->E0:LtQ0;

    return-object v0
.end method

.method public q1()V
    .locals 0

    return-void
.end method

.method public r0()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->x0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    return-object v0
.end method

.method public s0()Ly30;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->x0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    return-object v0
.end method

.method public showIncognitoNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    check-cast v0, LKO0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    check-cast v0, LKO0;

    if-eqz v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    .line 5
    :cond_0
    throw v1

    .line 6
    :cond_1
    throw v1
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    check-cast v0, LKO0;

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1, p2, p3}, LD2;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/ChromeActivity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 1

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    check-cast v0, LKO0;

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public supportsMediaSession()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public t0()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->z0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    return-object v0
.end method

.method public u0()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public v()V
    .locals 3

    .line 1
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "enable-test-intents"

    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    .line 2
    sput-boolean v0, LqZ;->h:Z

    .line 3
    new-instance v0, LqZ;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->g0()LpZ;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LqZ;-><init>(LpZ;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->m0:LqZ;

    return-void
.end method

.method public v0()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public w0()Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LQH0;->a:LRH0;

    return-object v0

    .line 3
    :cond_0
    check-cast v0, LrI0;

    invoke-virtual {v0}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    return-object v0
.end method

.method public x0()Lorg/chromium/content_public/browser/WebContents;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->p0:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->w0()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 3
    invoke-static {v0}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    :goto_0
    return-object v1
.end method

.method public y()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y0()Lp30;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity;->F0:Lp30;

    return-object v0
.end method

.method public z()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, LBg0;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->a(Landroid/app/Activity;)I

    move-result v0

    .line 3
    sget-object v2, Lpl0;->y:Lpl0;

    .line 4
    invoke-virtual {v2, p0}, Lpl0;->a(Landroid/app/Activity;)Z

    move-result v2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public z0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->r0()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
