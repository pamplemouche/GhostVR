.class public Lorg/chromium/chrome/browser/compositor/CompositorView;
.super Landroid/widget/FrameLayout;
.source "PG"

# interfaces
.implements LJ20;
.implements LYc1;


# instance fields
.field public A:I

.field public B:J

.field public final C:Lu30;

.field public D:I

.field public E:Lorg/chromium/ui/resources/ResourceManager;

.field public F:Lorg/chromium/ui/base/WindowAndroid;

.field public G:Lorg/chromium/chrome/browser/compositor/LayerTitleCache;

.field public H:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

.field public I:Landroid/view/View;

.field public J:Ljava/util/List;

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:LQ20;

.field public final w:Landroid/graphics/Rect;

.field public x:LK20;

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/compositor/CompositorView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lu30;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->w:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->D:I

    .line 4
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->C:Lu30;

    .line 5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->c()V

    return-void
.end method

.method private didSwapBuffers(Z)V
    .locals 5

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->A:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->A:I

    .line 3
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 4
    invoke-static {v0, v1, p0}, LJ/N;->M_Nkznfe(JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->A:I

    .line 6
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    .line 7
    invoke-static {v0, v1, p0}, LJ/N;->MVesqb5U(JLjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->x:LK20;

    check-cast v0, LP20;

    .line 9
    iget-object v1, v0, LP20;->y:LO20;

    if-nez v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, v0, LP20;->w:LO20;

    if-ne v1, v2, :cond_2

    iget-object v2, v0, LP20;->x:LO20;

    .line 11
    :cond_2
    iget-object v1, v0, LP20;->z:LO20;

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v0, v2}, LP20;->b(LO20;)V

    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->d()V

    :cond_5
    return-void
.end method

.method private didSwapFrame(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->C:Lu30;

    invoke-interface {v0, p1}, Lu30;->a(I)V

    return-void
.end method

.method private notifyWillUseSurfaceControl()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->L:Z

    return-void
.end method

.method private onCompositorLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->C:Lu30;

    invoke-interface {v0}, Lu30;->c()V

    return-void
.end method

.method private recreateSurface()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->x:LK20;

    check-cast v0, LP20;

    .line 2
    iget-object v1, v0, LP20;->y:LO20;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, LP20;->B:Landroid/view/ViewGroup;

    new-instance v2, LL20;

    invoke-direct {v2, v0}, LL20;-><init>(LP20;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 20
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    .line 21
    invoke-static {v0, v1, p0}, LJ/N;->MVesqb5U(JLjava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 4

    .line 17
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    .line 19
    invoke-static {v0, v1, p0}, LJ/N;->MyANQhkH(JLjava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/view/Surface;III)V
    .locals 8

    .line 13
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 14
    :cond_0
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->M:Z

    xor-int/lit8 v6, v2, 0x1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p1

    .line 15
    invoke-static/range {v0 .. v7}, LJ/N;->MH1eqy7s(JLjava/lang/Object;IIIZLjava/lang/Object;)V

    .line 16
    iget-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->C:Lu30;

    invoke-interface {p1, p3, p4}, Lu30;->a(II)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 4

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->J:Ljava/util/List;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->J:Ljava/util/List;

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->J:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 11
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    .line 12
    invoke-static {v0, v1, p0}, LJ/N;->M_Nkznfe(JLjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->L:Z

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->M:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->M:Z

    if-eqz p1, :cond_1

    .line 4
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    .line 5
    invoke-static {v0, v1, p0}, LJ/N;->Mlw_qgLA(JLjava/lang/Object;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->x:LK20;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->b()I

    move-result v0

    check-cast p1, LP20;

    invoke-virtual {p1, v0}, LP20;->a(I)V

    :cond_2
    return-void
.end method

.method public final b()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->y:Z

    const/4 v1, -0x3

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->z:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->L:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->M:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public b(Landroid/view/Surface;)V
    .locals 4

    .line 4
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->B:J

    .line 6
    invoke-static {v0, v1, p0}, LJ/N;->MGPC4Ktv(JLjava/lang/Object;)V

    const/4 p1, 0x2

    .line 7
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->A:I

    .line 8
    iget-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->C:Lu30;

    invoke-interface {p1}, Lu30;->b()V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->f()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, LP20;

    invoke-direct {v0, p0, p0}, LP20;-><init>(Landroid/view/ViewGroup;LJ20;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->x:LK20;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, LQ20;

    invoke-direct {v0, p0}, LQ20;-><init>(Lorg/chromium/chrome/browser/compositor/CompositorView;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->N:LQ20;

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAO0;->b(Landroid/content/res/Resources;Z)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 6
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->x:LK20;

    const/4 v1, -0x1

    check-cast v0, LP20;

    invoke-virtual {v0, v1}, LP20;->a(I)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->J:Ljava/util/List;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->J:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->D:I

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->I:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->w:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->w:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 4
    iget v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->D:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iput v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->D:I

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->F:Lorg/chromium/ui/base/WindowAndroid;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_1
    sget-object v4, Lpl0;->y:Lpl0;

    .line 8
    invoke-virtual {v4, v0}, Lpl0;->b(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 9
    sget-object v4, Lpl0;->y:Lpl0;

    .line 10
    invoke-virtual {v4, v0}, Lpl0;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-le v0, v1, :cond_4

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 14
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->F:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/WindowAndroid;->onVisibilityChanged(Z)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/WindowAndroid;->onVisibilityChanged(Z)V

    .line 5
    :cond_2
    :goto_0
    invoke-static {}, LBa0;->a()LBa0;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    iput-object v0, p1, LBa0;->c:[B

    .line 7
    iput-object v0, p1, LBa0;->d:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->x:LK20;

    check-cast v0, LP20;

    .line 3
    iget-object v1, v0, LP20;->w:LO20;

    iget-object v1, v1, LO20;->a:Landroid/view/SurfaceView;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, v0, LP20;->x:LO20;

    iget-object v0, v0, LO20;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->x:LK20;

    check-cast v0, LP20;

    .line 3
    iget-object v1, v0, LP20;->w:LO20;

    iget-object v1, v1, LO20;->a:Landroid/view/SurfaceView;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 4
    iget-object v0, v0, LP20;->x:LO20;

    iget-object v0, v0, LO20;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/CompositorView;->d()V

    :cond_0
    return-void
.end method

.method public setWillNotDraw(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorView;->x:LK20;

    check-cast v0, LP20;

    .line 2
    iget-object v1, v0, LP20;->w:LO20;

    iget-object v1, v1, LO20;->a:Landroid/view/SurfaceView;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 3
    iget-object v0, v0, LP20;->x:LO20;

    iget-object v0, v0, LO20;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    return-void
.end method
