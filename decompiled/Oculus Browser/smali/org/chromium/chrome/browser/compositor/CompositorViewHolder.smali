.class public Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;
.super Landroid/widget/FrameLayout;
.source "PG"

# interfaces
.implements Ly30;
.implements Lu30;
.implements La30;
.implements Lad0;
.implements LmZ;


# instance fields
.field public A:Lorg/chromium/chrome/browser/compositor/CompositorView;

.field public B:Z

.field public C:I

.field public final D:Ljava/util/ArrayList;

.field public E:Z

.field public F:Ljava/lang/Runnable;

.field public G:Ljava/util/Set;

.field public H:LnZ;

.field public I:Z

.field public J:Ljava/lang/Runnable;

.field public K:Lorg/chromium/chrome/browser/tab/Tab;

.field public L:Landroid/view/View;

.field public M:LpH0;

.field public final N:Landroid/graphics/Rect;

.field public final O:Landroid/graphics/Point;

.field public P:Z

.field public Q:Z

.field public R:LSS0;

.field public S:Landroid/view/MotionEvent;

.field public w:LIc1;

.field public x:Z

.field public final y:Lb30;

.field public z:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lb30;

    invoke-direct {p1}, Lb30;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->y:Lb30;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->B:Z

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->D:Ljava/util/ArrayList;

    .line 5
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->G:Ljava/util/Set;

    .line 6
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->N:Landroid/graphics/Rect;

    .line 7
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->O:Landroid/graphics/Point;

    .line 8
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->Q:Z

    .line 9
    new-instance p1, LIc1;

    new-instance p2, LS20;

    invoke-direct {p2, p0}, LS20;-><init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V

    invoke-direct {p1, p2}, LIc1;-><init>(LHc1;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->w:LIc1;

    .line 10
    new-instance p1, LU20;

    invoke-direct {p1, p0}, LU20;-><init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->M:LpH0;

    .line 11
    new-instance p1, LV20;

    invoke-direct {p1, p0}, LV20;-><init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 12
    new-instance p1, Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;-><init>(Landroid/content/Context;Lu30;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->A:Lorg/chromium/chrome/browser/compositor/CompositorView;

    .line 13
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 14
    new-instance p1, LW20;

    invoke-direct {p1, p0}, LW20;-><init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 15
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->f()V

    .line 16
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    .line 17
    invoke-static {p0, v0}, LBU;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V
    .locals 0

    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic b(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->f()V

    return-void
.end method

.method public static synthetic c(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    throw v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 23
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->e()Landroid/graphics/Point;

    move-result-object v0

    .line 24
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1, v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->a(Lorg/chromium/content_public/browser/WebContents;Landroid/view/View;II)V

    return-void
.end method

.method public a(I)V
    .locals 2

    const-string v0, "didSwapFrame"

    .line 25
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->b(Ljava/lang/String;)V

    .line 26
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->P:Z

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, LX20;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LX20;-><init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->P:Z

    .line 29
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->C:I

    .line 30
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->E:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->d()V

    .line 31
    :cond_2
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->E:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->E:Z

    return-void
.end method

.method public a(II)V
    .locals 0

    return-void
.end method

.method public a(IIII)V
    .locals 0

    return-void
.end method

.method public a(IIZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 17
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->g()V

    :cond_0
    return-void
.end method

.method public a(LZ20;)V
    .locals 1

    .line 58
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->C:I

    if-gtz v0, :cond_0

    .line 59
    invoke-interface {p1}, LZ20;->a()V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public final a(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->v()Z

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->n()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 34
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->L:Landroid/view/View;

    if-ne v2, v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->b(Z)V

    .line 36
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->K:Lorg/chromium/chrome/browser/tab/Tab;

    if-eq v3, p1, :cond_4

    if-eqz v3, :cond_3

    .line 37
    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->M:LpH0;

    .line 38
    iget-object v3, v3, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v3, v4}, LWT;->b(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 39
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->M:LpH0;

    .line 40
    iget-object v4, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v4, v3}, LWT;->a(Ljava/lang/Object;)Z

    .line 41
    :cond_4
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->K:Lorg/chromium/chrome/browser/tab/Tab;

    .line 42
    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->L:Landroid/view/View;

    .line 43
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->B:Z

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->b(Z)V

    .line 44
    iget-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->K:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz p1, :cond_8

    .line 45
    iget-object v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v1, :cond_5

    .line 46
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->A:Lorg/chromium/chrome/browser/compositor/CompositorView;

    .line 47
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->A:Lorg/chromium/chrome/browser/compositor/CompositorView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    .line 48
    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->A:Lorg/chromium/chrome/browser/compositor/CompositorView;

    if-eqz v5, :cond_5

    .line 49
    iget-wide v3, v5, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    move-object v6, v1

    .line 50
    invoke-static/range {v3 .. v8}, LJ/N;->MzYzRqF3(JLjava/lang/Object;Ljava/lang/Object;II)V

    .line 51
    :cond_5
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->n()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_1

    .line 52
    :cond_6
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->n()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->a(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    .line 53
    :cond_7
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->e()Landroid/graphics/Point;

    move-result-object v3

    .line 54
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->n()Landroid/view/View;

    move-result-object p1

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, p1, v4, v3}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->a(Lorg/chromium/content_public/browser/WebContents;Landroid/view/View;II)V

    .line 55
    :cond_8
    :goto_1
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->Q:Z

    if-eqz p1, :cond_9

    .line 56
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->R:LSS0;

    .line 57
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->Q:Z

    :cond_9
    return-void
.end method

.method public final a(Lorg/chromium/content_public/browser/WebContents;Landroid/view/View;II)V
    .locals 4

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->G:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LY20;

    .line 2
    invoke-interface {v3}, LY20;->a()I

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Multiple CompositorViewResizer with height > 0 are not supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/2addr v2, v1

    .line 4
    invoke-static {p2}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    sub-int/2addr p4, v2

    .line 5
    invoke-interface {p1, p3, p4}, Lorg/chromium/content_public/browser/WebContents;->a(II)V

    goto :goto_2

    .line 6
    :cond_4
    invoke-static {p2}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->a(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_1

    .line 7
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->e()Landroid/graphics/Point;

    move-result-object p3

    .line 8
    iget p4, p3, Landroid/graphics/Point;->x:I

    .line 9
    iget p3, p3, Landroid/graphics/Point;->y:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 10
    invoke-static {p4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    .line 11
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 12
    invoke-virtual {p2, p4, p3}, Landroid/view/View;->measure(II)V

    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p2, v1, v1, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-interface {p1, p3, p2}, Lorg/chromium/content_public/browser/WebContents;->a(II)V

    .line 15
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->g()V

    :cond_6
    :goto_2
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 18
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->A:Lorg/chromium/chrome/browser/compositor/CompositorView;

    if-eqz v0, :cond_0

    .line 19
    iget-wide v1, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    .line 20
    invoke-static {v1, v2, v0, p1}, LJ/N;->M$Spxfoj(JLjava/lang/Object;Z)V

    .line 21
    iput-boolean p1, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->y:Z

    .line 22
    iget-object p1, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->x:LK20;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->b()I

    move-result v0

    check-cast p1, LP20;

    invoke-virtual {p1, v0}, LP20;->a(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->C:I

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->d()V

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->L:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eq p1, p0, :cond_2

    .line 6
    iget-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->L:Landroid/view/View;

    invoke-static {p1}, Lwc1;->a(Landroid/view/View;)V

    .line 7
    iget-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->L:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 8
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 10
    iget-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->L:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_2

    .line 12
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 13
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 14
    iget-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->L:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "CompositorViewHolder:layout"

    .line 2
    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CompositorViewHolder.flushInvalidation"

    .line 2
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZ20;

    invoke-interface {v1}, LZ20;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->w:LIc1;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    .line 2
    iget-object v1, v0, LIc1;->a:LHc1;

    check-cast v1, LS20;

    .line 3
    iget-object v2, v1, LS20;->b:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    .line 4
    iget-object v1, v1, LS20;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    .line 5
    invoke-virtual {v0, v1}, LIc1;->a(F)V

    .line 6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 7
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->w:LIc1;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    if-eqz v1, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 8
    invoke-virtual {v1, p1}, LIc1;->a(F)V

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    .line 9
    throw p1
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 5
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->S:Landroid/view/MotionEvent;

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->S:Landroid/view/MotionEvent;

    .line 9
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final e()Landroid/graphics/Point;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->I:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lrc1;->x:Lrc1;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lrc1;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->N:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->O:Landroid/graphics/Point;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->N:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->N:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->O:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 9
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->O:Landroid/graphics/Point;

    return-object v0
.end method

.method public final f()V
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_1

    .line 1
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    or-int/2addr v2, v3

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-nez v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v1, v2, 0x4

    const/4 v3, 0x1

    if-nez v1, :cond_3

    and-int/lit16 v1, v2, 0x800

    if-nez v1, :cond_3

    and-int/lit16 v1, v2, 0x1000

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    :goto_3
    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    .line 4
    :cond_4
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->I:Z

    if-ne v2, v1, :cond_5

    return-void

    .line 5
    :cond_5
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->I:Z

    .line 6
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->J:Ljava/lang/Runnable;

    if-nez v1, :cond_6

    .line 7
    new-instance v1, LR20;

    invoke-direct {v1, p0}, LR20;-><init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->J:Ljava/lang/Runnable;

    goto :goto_4

    .line 8
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->J:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_4
    if-eqz v0, :cond_7

    const-wide/16 v0, 0x1f4

    goto :goto_5

    :cond_7
    const-wide/16 v0, 0x0

    .line 9
    :goto_5
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->A:Lorg/chromium/chrome/browser/compositor/CompositorView;

    .line 2
    iget-wide v1, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 3
    invoke-static {v1, v2, v0}, LJ/N;->M_Nkznfe(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getOverlayTranslateY()F
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->y:Lb30;

    .line 2
    iput-object p0, v0, Lb30;->a:La30;

    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->d()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->y:Lb30;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lb30;->a:La30;

    .line 4
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->w:LIc1;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, LIc1;->a(Landroid/view/MotionEvent;Z)V

    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    sget-object p1, Lrc1;->x:Lrc1;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lrc1;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->x:Z

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    const/4 v0, 0x0

    if-ge p1, p2, :cond_0

    :cond_0
    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->w:LIc1;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, p1, v2}, LIc1;->a(Landroid/view/MotionEvent;Z)V

    return v0
.end method
