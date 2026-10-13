.class public LTd0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LsQ0;
.implements LNd0;


# instance fields
.field public final b:Landroid/view/View;

.field public final c:Landroid/view/LayoutInflater;

.field public final d:LrU;

.field public final e:LMd0;

.field public final f:LYd0;

.field public final g:LuQ0;

.field public final h:Landroid/os/Handler;

.field public final i:Ljava/lang/Runnable;

.field public final j:F

.field public final k:LQd1;

.field public final l:LTd1;

.field public final m:I

.field public final n:I

.field public final o:Landroid/view/View;

.field public p:Lorg/chromium/chrome/browser/gesturenav/NavigationSheetView;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;LrU;LMd0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LSd0;

    invoke-direct {v0, p0}, LSd0;-><init>(LTd0;)V

    iput-object v0, p0, LTd0;->g:LuQ0;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LTd0;->h:Landroid/os/Handler;

    .line 4
    new-instance v0, LQd1;

    invoke-direct {v0}, LQd1;-><init>()V

    iput-object v0, p0, LTd0;->k:LQd1;

    .line 5
    new-instance v0, LTd1;

    iget-object v1, p0, LTd0;->k:LQd1;

    invoke-direct {v0, v1}, LTd1;-><init>(LQd1;)V

    iput-object v0, p0, LTd0;->l:LTd1;

    .line 6
    iput-object p1, p0, LTd0;->o:Landroid/view/View;

    .line 7
    iput-object p3, p0, LTd0;->d:LrU;

    .line 8
    iput-object p4, p0, LTd0;->e:LMd0;

    .line 9
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iput-object p3, p0, LTd0;->c:Landroid/view/LayoutInflater;

    const p4, 0x7f0e0120

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, LTd0;->b:Landroid/view/View;

    .line 11
    new-instance p3, LYd0;

    iget-object p4, p0, LTd0;->k:LQd1;

    new-instance v0, LOd0;

    invoke-direct {v0, p0}, LOd0;-><init>(LTd0;)V

    invoke-direct {p3, p2, p4, v0}, LYd0;-><init>(Landroid/content/Context;LQd1;LWd0;)V

    iput-object p3, p0, LTd0;->f:LYd0;

    .line 12
    iget-object p3, p0, LTd0;->l:LTd1;

    new-instance p4, LPd0;

    invoke-direct {p4, p0}, LPd0;-><init>(LTd0;)V

    sget-object v0, LQd0;->a:Lne1;

    const/4 v1, 0x0

    invoke-virtual {p3, v1, p4, v0}, LTd1;->a(ILRd1;Lne1;)V

    .line 13
    new-instance p3, LRd0;

    invoke-direct {p3, p0}, LRd0;-><init>(LTd0;)V

    iput-object p3, p0, LTd0;->i:Ljava/lang/Runnable;

    .line 14
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x43600000    # 224.0f

    mul-float p3, p3, p4

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    .line 16
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, LTd0;->j:F

    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0701f7

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 18
    iput p1, p0, LTd0;->m:I

    const p1, 0x7f0701fb

    .line 19
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const p3, 0x7f0701fa

    .line 20
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p1, p3

    const p3, 0x7f0701fc

    .line 21
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    .line 22
    iput p1, p0, LTd0;->n:I

    return-void
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(F)F
    .locals 2

    .line 28
    iget-object v0, p0, LTd0;->l:LTd1;

    invoke-virtual {v0}, LTd1;->getCount()I

    move-result v0

    .line 29
    iget v1, p0, LTd0;->m:I

    mul-int v0, v0, v1

    iget v1, p0, LTd0;->n:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v0, p0, LTd0;->o:Landroid/view/View;

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public a(FFZ)V
    .locals 1

    .line 8
    iget-object v0, p0, LTd0;->d:LrU;

    invoke-interface {v0}, LrU;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v0, p0, LTd0;->r:Z

    if-eqz v0, :cond_1

    return-void

    .line 10
    :cond_1
    iget v0, p0, LTd0;->j:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    const-wide/16 p2, 0x32

    .line 11
    invoke-virtual {p0, p1, p2, p3}, LTd0;->a(FJ)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const-wide/16 p2, 0x190

    .line 12
    invoke-virtual {p0, p1, p2, p3}, LTd0;->a(FJ)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0}, LTd0;->s()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, LTd0;->a(Z)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object p1, p0, LTd0;->h:Landroid/os/Handler;

    iget-object p2, p0, LTd0;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final a(FJ)V
    .locals 1

    .line 16
    invoke-virtual {p0}, LTd0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 17
    iget-object p1, p0, LTd0;->h:Landroid/os/Handler;

    iget-object v0, p0, LTd0;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    iget-object p1, p0, LTd0;->h:Landroid/os/Handler;

    iget-object v0, p0, LTd0;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 19
    iget-object v0, p0, LTd0;->d:LrU;

    invoke-interface {v0}, LrU;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LtQ0;

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {v0, p0, p1}, LtQ0;->a(LsQ0;Z)V

    .line 21
    iget-object p1, v0, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 22
    iget-object v0, p0, LTd0;->g:LuQ0;

    .line 23
    iget-object p1, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {p1, v0}, LWT;->b(Ljava/lang/Object;)Z

    .line 24
    iget-object p1, p0, LTd0;->f:LYd0;

    .line 25
    iget-object p1, p1, LYd0;->e:LQd1;

    invoke-virtual {p1}, LLd1;->clear()V

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 2
    iget-object v0, p0, LTd0;->d:LrU;

    invoke-interface {v0}, LrU;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean p1, p0, LTd0;->q:Z

    .line 4
    iput-boolean p2, p0, LTd0;->r:Z

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, LTd0;->s:Z

    .line 6
    iput-boolean p1, p0, LTd0;->u:Z

    .line 7
    iput-boolean p1, p0, LTd0;->t:Z

    return-void
.end method

.method public a()Z
    .locals 2

    .line 26
    iget-object v0, p0, LTd0;->d:LrU;

    invoke-interface {v0}, LrU;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 27
    :cond_0
    invoke-virtual {p0}, LTd0;->r()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, LTd0;->d:LrU;

    invoke-interface {v0}, LrU;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LTd0;->h:Landroid/os/Handler;

    iget-object v1, p0, LTd0;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-boolean v0, p0, LTd0;->s:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, LTd0;->q:Z

    const-string v2, "GestureNavigation.Sheet.Peeked"

    .line 5
    invoke-static {v2, v0, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 6
    :cond_1
    invoke-virtual {p0}, LTd0;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, LTd0;->d:LrU;

    invoke-interface {v0}, LrU;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LtQ0;

    invoke-virtual {v0}, LtQ0;->b()V

    .line 8
    iget-boolean v0, p0, LTd0;->q:Z

    const-string v2, "GestureNavigation.Sheet.Viewed"

    .line 9
    invoke-static {v2, v0, v1}, LfV;->a(Ljava/lang/String;II)V

    :cond_2
    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .locals 3

    .line 1
    iget-object v0, p0, LTd0;->p:Lorg/chromium/chrome/browser/gesturenav/NavigationSheetView;

    .line 2
    iget-object v1, v0, Lorg/chromium/chrome/browser/gesturenav/NavigationSheetView;->w:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v0, v0, Lorg/chromium/chrome/browser/gesturenav/NavigationSheetView;->w:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    sub-int/2addr v1, v0

    neg-int v2, v1

    :goto_0
    return v2
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, LTd0;->b:Landroid/view/View;

    return-object v0
.end method

.method public f()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, LTd0;->p:Lorg/chromium/chrome/browser/gesturenav/NavigationSheetView;

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x7f130464

    return v0
.end method

.method public h()I
    .locals 1

    const v0, 0x7f130462

    return v0
.end method

.method public i()F
    .locals 2

    .line 1
    iget-boolean v0, p0, LTd0;->t:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 2
    :cond_0
    iget-boolean v0, p0, LTd0;->u:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LTd0;->m()F

    move-result v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, LTd0;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, LTd0;->m:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {p0, v0}, LTd0;->a(F)F

    move-result v0

    :goto_0
    return v0
.end method

.method public j()I
    .locals 1

    const v0, 0x7f130461

    return v0
.end method

.method public k()I
    .locals 1

    const v0, 0x7f130463

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LTd0;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m()F
    .locals 1

    .line 1
    iget-object v0, p0, LTd0;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, LTd0;->a(F)F

    move-result v0

    return v0
.end method

.method public n()I
    .locals 2

    .line 1
    iget-boolean v0, p0, LTd0;->t:Z

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, LTd0;->d:LrU;

    invoke-interface {v0}, LrU;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LtQ0;

    .line 3
    iget-object v0, v0, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 4
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->U:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, LTd0;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0701fd

    invoke-static {v0, v1}, LTd0;->a(Landroid/content/Context;I)I

    move-result v1

    :cond_1
    return v1
.end method

.method public o()Z
    .locals 3

    .line 1
    iget-object v0, p0, LTd0;->d:LrU;

    invoke-interface {v0}, LrU;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, LTd0;->r()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final r()I
    .locals 3

    .line 1
    iget-object v0, p0, LTd0;->d:LrU;

    invoke-interface {v0}, LrU;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LtQ0;

    .line 2
    iget-object v0, v0, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v2, v0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->K:I

    if-eq v2, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v2, v0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->J:I

    :goto_0
    return v2
.end method

.method public final s()Z
    .locals 3

    .line 1
    iget-object v0, p0, LTd0;->d:LrU;

    invoke-interface {v0}, LrU;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, LTd0;->r()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
