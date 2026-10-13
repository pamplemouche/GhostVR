.class public Lbd0;
.super Lkd0;
.source "PG"

# interfaces
.implements LkT;
.implements LpT;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;
.implements LSO0;


# instance fields
.field public final A:Laf1;

.field public B:LDI0;

.field public C:LDJ0;

.field public D:I

.field public E:Z

.field public F:LzI0;

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:F

.field public L:Z

.field public M:Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:LnT0;

.field public final R:Ljava/util/ArrayList;

.field public S:Landroid/animation/ValueAnimator;

.field public T:Z

.field public final U:Ljava/lang/Runnable;

.field public final w:Landroid/app/Activity;

.field public final x:LOc0;

.field public final y:I

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lbd0;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lkd0;-><init>(Landroid/view/Window;)V

    .line 2
    new-instance v0, Laf1;

    new-instance v1, LPc0;

    invoke-direct {v1, p0}, LPc0;-><init>(Lbd0;)V

    invoke-direct {v0, v1}, Laf1;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lbd0;->A:Laf1;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbd0;->R:Ljava/util/ArrayList;

    .line 4
    new-instance v0, LTc0;

    invoke-direct {v0, p0}, LTc0;-><init>(Lbd0;)V

    iput-object v0, p0, Lbd0;->U:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lbd0;->w:Landroid/app/Activity;

    .line 6
    iput p2, p0, Lbd0;->y:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lbd0;->z:Z

    .line 8
    new-instance p1, LOc0;

    new-instance p2, LUc0;

    invoke-direct {p2, p0}, LUc0;-><init>(Lbd0;)V

    new-instance v0, LQc0;

    invoke-direct {v0, p0}, LQc0;-><init>(Lbd0;)V

    invoke-direct {p1, p2, v0}, LOc0;-><init>(Ljava/lang/Runnable;LrU;)V

    iput-object p1, p0, Lbd0;->x:LOc0;

    .line 9
    sget-object p1, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->d:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Lbd0;->b()Z

    return-void
.end method


# virtual methods
.method public final a()LnT0;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    .line 19
    check-cast v0, LnT0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(LDJ0;LpI0;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbd0;->w:Landroid/app/Activity;

    invoke-static {p0, v0}, Lorg/chromium/base/ApplicationStatus;->a(LkT;Landroid/app/Activity;)V

    .line 2
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->i:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, LVc0;

    invoke-direct {v0, p0, p2, p2}, LVc0;-><init>(Lbd0;LpI0;LpI0;)V

    iput-object v0, p0, Lbd0;->F:LzI0;

    .line 4
    new-instance v0, LXc0;

    invoke-direct {v0, p0, p2}, LXc0;-><init>(Lbd0;LpI0;)V

    iput-object v0, p0, Lbd0;->B:LDI0;

    .line 5
    iput-object p1, p0, Lbd0;->C:LDJ0;

    .line 6
    iget p1, p0, Lbd0;->y:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Lbd0;->K:F

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lbd0;->w:Landroid/app/Activity;

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lbd0;->D:I

    .line 10
    :goto_0
    iget p1, p0, Lbd0;->D:I

    iput p1, p0, Lbd0;->I:I

    .line 11
    invoke-virtual {p0}, Lbd0;->f()V

    .line 12
    invoke-virtual {p0}, Lbd0;->d()V

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 1

    .line 13
    iget-object v0, p0, Lbd0;->w:Landroid/app/Activity;

    if-eq v0, p1, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p2}, Lkd0;->onWindowFocusChanged(Z)V

    .line 15
    sget-object p1, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 16
    iget-boolean p1, p1, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-nez p1, :cond_1

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 23
    iget-object p1, p0, Lbd0;->S:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    invoke-static {p1}, LgH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LgH0;

    .line 25
    iput-boolean v0, p0, Lbd0;->T:Z

    .line 26
    iget p1, p0, Lbd0;->K:F

    .line 27
    iget v2, p0, Lbd0;->D:I

    .line 28
    iget v3, p0, Lbd0;->G:I

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v1

    aput v1, v4, v0

    .line 29
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lbd0;->S:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43480000    # 200.0f

    mul-float p1, p1, v1

    .line 30
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-long v3, p1

    .line 31
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 32
    iget-object p1, p0, Lbd0;->S:Landroid/animation/ValueAnimator;

    new-instance v0, LZc0;

    invoke-direct {v0, p0, v2}, LZc0;-><init>(Lbd0;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 33
    iget-object p1, p0, Lbd0;->S:Landroid/animation/ValueAnimator;

    new-instance v0, LSc0;

    invoke-direct {v0, p0, v2}, LSc0;-><init>(Lbd0;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 34
    iget-object p1, p0, Lbd0;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 35
    :cond_1
    iget p1, p0, Lbd0;->I:I

    .line 36
    invoke-virtual {p0, v0, v1, v1, p1}, Lbd0;->a(ZIII)V

    :goto_0
    return-void
.end method

.method public final a(ZIII)V
    .locals 0

    .line 20
    invoke-virtual {p0}, Lbd0;->b()Z

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p0}, Lbd0;->setPositionsForTabToNonFullscreen()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lbd0;->setPositionsForTab(III)V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    check-cast v0, LKO0;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lbd0;->T:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lbd0;->S:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    :cond_1
    iput-boolean v1, p0, Lbd0;->T:Z

    .line 4
    :goto_0
    invoke-virtual {p0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 5
    invoke-static {v0}, LgH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LgH0;

    move-result-object v2

    .line 6
    iget-boolean v3, v2, LgH0;->E:Z

    if-eqz v3, :cond_2

    .line 7
    iget v3, v2, LgH0;->B:I

    .line 8
    iget v4, v2, LgH0;->C:I

    .line 9
    iget v2, v2, LgH0;->D:I

    .line 10
    invoke-virtual {p0, v1, v3, v4, v2}, Lbd0;->a(ZIII)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0, v1}, Lbd0;->a(Z)V

    .line 12
    :goto_1
    invoke-static {v0}, LgH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public createApiDelegate()Lhd0;
    .locals 1

    .line 1
    new-instance v0, LYc0;

    invoke-direct {v0, p0}, LYc0;-><init>(Lbd0;)V

    return-object v0
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbd0;->C:LDJ0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lbd0;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 3
    :goto_0
    iget-object v1, p0, Lbd0;->C:LDJ0;

    invoke-interface {v1}, LDJ0;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lbd0;->C:LDJ0;

    invoke-interface {v0}, LDJ0;->a()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lbd0;->U:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v0, p0, Lbd0;->C:LDJ0;

    invoke-interface {v0}, LDJ0;->a()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lbd0;->U:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lbd0;->C:LDJ0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lbd0;->A:Laf1;

    invoke-virtual {v0}, Laf1;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-boolean v0, p0, Lbd0;->T:Z

    if-eqz v0, :cond_2

    return v2

    .line 6
    :cond_2
    iget v0, p0, Lbd0;->K:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    .line 7
    invoke-virtual {p0}, Lbd0;->a()LnT0;

    move-result-object v3

    if-nez v3, :cond_4

    return v0

    .line 8
    :cond_4
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 9
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v5, :cond_5

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x30

    .line 12
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x70

    if-ne v5, v4, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    return v0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget v0, p0, Lbd0;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lbd0;->D:I

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lbd0;->K:F

    goto :goto_0

    .line 4
    :cond_1
    iget v1, p0, Lbd0;->G:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 5
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lbd0;->K:F

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbd0;->Q:LnT0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, LnT0;->x:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lbd0;->Q:LnT0;

    .line 4
    iget-object v0, v0, LnT0;->y:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Lbd0;->a()LnT0;

    move-result-object v0

    iput-object v0, p0, Lbd0;->Q:LnT0;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, LnT0;->x:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lbd0;->Q:LnT0;

    .line 8
    iget-object v0, v0, LnT0;->y:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public getBottomControlsHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTopControlsHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lbd0;->D:I

    return v0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lbd0;->O:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lbd0;->P:Z

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget v0, p0, Lbd0;->I:I

    .line 3
    iget v1, p0, Lbd0;->H:I

    if-eqz v0, :cond_1

    .line 4
    iget v2, p0, Lbd0;->D:I

    if-eq v0, v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-gtz v0, :cond_3

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 5
    :goto_1
    iput-boolean v0, p0, Lbd0;->E:Z

    .line 6
    iget-object v0, p0, Lbd0;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad0;

    invoke-interface {v1}, Lad0;->a()V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public final i()V
    .locals 8

    const/4 v0, 0x0

    const-string v1, "FullscreenManager:updateVisuals"

    .line 1
    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v2, p0, Lbd0;->N:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3
    iput-boolean v3, p0, Lbd0;->N:Z

    .line 4
    invoke-virtual {p0}, Lbd0;->d()V

    .line 5
    invoke-virtual {p0}, Lbd0;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lbd0;->C:LDJ0;

    invoke-interface {v2}, LDJ0;->a()Landroid/view/View;

    move-result-object v2

    .line 7
    iget v4, p0, Lbd0;->G:I

    int-to-float v4, v4

    .line 8
    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lbd0;->e()Z

    move-result v2

    const/4 v4, 0x0

    .line 10
    :goto_0
    iget-object v5, p0, Lbd0;->R:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 11
    iget-object v5, p0, Lbd0;->R:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lad0;

    .line 12
    iget v6, p0, Lbd0;->G:I

    .line 13
    iget v7, p0, Lbd0;->H:I

    .line 14
    invoke-interface {v5, v6, v7, v2}, Lad0;->a(IIZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 16
    iget v4, p0, Lbd0;->K:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    .line 17
    iget-boolean v4, p0, Lbd0;->L:Z

    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {p0}, Lkd0;->getHtmlApiHandler()Ljd0;

    move-result-object v4

    iget-object v5, p0, Lbd0;->M:Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

    invoke-interface {v4, v2, v5}, Ljd0;->enterFullscreen(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V

    .line 19
    iput-boolean v3, p0, Lbd0;->L:Z

    .line 20
    iput-object v0, p0, Lbd0;->M:Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

    .line 21
    :cond_3
    invoke-virtual {p0}, Lbd0;->updateContentViewChildrenState()V

    .line 22
    iget v0, p0, Lbd0;->I:I

    .line 23
    iget v2, p0, Lbd0;->J:I

    if-eq v2, v0, :cond_5

    .line 24
    :goto_2
    iget-object v2, p0, Lbd0;->R:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 25
    iget-object v2, p0, Lbd0;->R:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad0;

    invoke-interface {v2, v0}, Lad0;->b(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 26
    :cond_4
    iput v0, p0, Lbd0;->J:I

    .line 27
    :cond_5
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 2

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lbd0;->z:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lkd0;->exitPersistentFullscreenMode()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 3
    sget-object p1, LZ01;->a:LFW;

    new-instance p2, LRc0;

    invoke-direct {p2, p0}, LRc0;-><init>(Lbd0;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, p2, v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    if-ne p2, p1, :cond_2

    .line 4
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->a(LkT;)V

    .line 5
    sget-object p1, Lorg/chromium/base/ApplicationStatus;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lbd0;->F:LzI0;

    invoke-virtual {p1}, LzI0;->destroy()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbd0;->updateContentViewChildrenState()V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbd0;->updateContentViewChildrenState()V

    return-void
.end method

.method public onContentViewScrollingStateChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lbd0;->P:Z

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lbd0;->i()V

    :cond_0
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkd0;->onContentViewSystemUiVisibilityChange(I)V

    return-void
.end method

.method public setOverlayVideoMode(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lkd0;->setOverlayVideoMode(Z)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lbd0;->R:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lbd0;->R:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad0;

    invoke-interface {v1, p1}, Lad0;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPositionsForTab(III)V
    .locals 1

    .line 1
    iget v0, p0, Lbd0;->D:I

    neg-int v0, v0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 4
    iget v0, p0, Lbd0;->D:I

    add-int/2addr v0, p1

    .line 5
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 6
    iget v0, p0, Lbd0;->G:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lbd0;->H:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lbd0;->I:I

    if-ne p3, v0, :cond_0

    return-void

    .line 7
    :cond_0
    iput p1, p0, Lbd0;->G:I

    .line 8
    iput p2, p0, Lbd0;->H:I

    .line 9
    iput p3, p0, Lbd0;->I:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lbd0;->N:Z

    .line 11
    invoke-virtual {p0}, Lbd0;->f()V

    .line 12
    invoke-virtual {p0}, Lbd0;->i()V

    return-void
.end method

.method public setPositionsForTabToNonFullscreen()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 3
    sget-object v2, LgH0;->F:Ljava/lang/Class;

    invoke-virtual {v0, v2}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v0

    check-cast v0, LgH0;

    .line 4
    iget-object v0, v0, LgH0;->z:LQG0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LQG0;->b()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget v0, p0, Lbd0;->D:I

    neg-int v0, v0

    .line 6
    invoke-virtual {p0, v0, v1, v1}, Lbd0;->setPositionsForTab(III)V

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    iget v0, p0, Lbd0;->D:I

    .line 8
    invoke-virtual {p0, v1, v1, v0}, Lbd0;->setPositionsForTab(III)V

    :goto_2
    return-void
.end method

.method public setTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 2
    invoke-super {p0, p1}, Lkd0;->setTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lnd0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Lnd0;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lnd0;->y:Lkd0;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lbd0;->g()V

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lbd0;->x:LOc0;

    invoke-virtual {v0}, LOc0;->e()V

    .line 7
    invoke-virtual {p0}, Lkd0;->getPersistentFullscreenMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lkd0;->updateMultiTouchZoomSupport(Z)V

    .line 8
    invoke-static {p1}, Lnd0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Lnd0;

    move-result-object v0

    .line 9
    iput-object p0, v0, Lnd0;->y:Lkd0;

    .line 10
    invoke-virtual {p0}, Lbd0;->c()V

    :cond_1
    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lbd0;->x:LOc0;

    invoke-virtual {p1}, LOc0;->a()Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {p0}, Lbd0;->setPositionsForTabToNonFullscreen()V

    :cond_2
    return-void
.end method

.method public updateContentViewChildrenState()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lbd0;->a()LnT0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lbd0;->D:I

    .line 3
    iget v2, p0, Lbd0;->G:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 4
    iget v2, p0, Lbd0;->H:I

    const/4 v3, 0x0

    rsub-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    const/4 v4, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 6
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v6, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x30

    .line 9
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v6, v6, 0x70

    if-ne v7, v6, :cond_2

    .line 10
    invoke-virtual {v5, v1}, Landroid/view/View;->setTranslationY(F)V

    const-string v5, "FullscreenManager:child.setTranslationY()"

    .line 11
    invoke-static {v5}, Lorg/chromium/base/TraceEvent;->b(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 13
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v5, :cond_4

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 16
    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    float-to-int v7, v1

    if-ne v6, v7, :cond_5

    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    float-to-int v8, v2

    if-eq v6, v8, :cond_6

    .line 17
    :cond_5
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    float-to-int v6, v2

    .line 18
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 19
    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    const-string v4, "FullscreenManager:child.requestLayout()"

    .line 20
    invoke-static {v4}, Lorg/chromium/base/TraceEvent;->b(Ljava/lang/String;)V

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 21
    :cond_7
    invoke-virtual {p0}, Lbd0;->h()V

    return-void
.end method
