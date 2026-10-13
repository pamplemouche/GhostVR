.class public La00;
.super LFH0;
.source "PG"

# interfaces
.implements Lorg/chromium/ui/OverscrollRefreshHandler;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field public static final I:Ljava/lang/Class;


# instance fields
.field public A:LSG0;

.field public B:Landroid/view/ViewGroup;

.field public C:Ljava/lang/Runnable;

.field public D:Ljava/lang/Runnable;

.field public E:Ljava/lang/String;

.field public F:Lsd0;

.field public G:LKd0;

.field public H:LJd0;

.field public x:I

.field public y:LZb1;

.field public z:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, La00;

    sput-object v0, La00;->I:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, LFH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    sget-object v0, Lxd0;->a:Lsd0;

    iput-object v0, p0, La00;->F:Lsd0;

    .line 3
    iput-object p1, p0, La00;->z:Lorg/chromium/chrome/browser/tab/Tab;

    .line 4
    new-instance v0, LZZ;

    invoke-direct {v0, p0}, LZZ;-><init>(La00;)V

    iput-object v0, p0, La00;->A:LSG0;

    .line 5
    iget-object v1, p0, La00;->z:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    iget-object v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1, v0}, LWT;->a(Ljava/lang/Object;)Z

    const-string v0, "OverscrollHistoryNavigation"

    .line 7
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lwd0;

    invoke-direct {v0, p1}, Lwd0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    sget-object v0, Lxd0;->a:Lsd0;

    .line 11
    :goto_1
    iput-object v0, p0, La00;->F:Lsd0;

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)La00;
    .locals 3

    .line 15
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 16
    sget-object v1, La00;->I:Ljava/lang/Class;

    invoke-virtual {v0, v1}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v0

    check-cast v0, La00;

    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 18
    sget-object v1, La00;->I:Ljava/lang/Class;

    new-instance v2, La00;

    invoke-direct {v2, p0}, La00;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {v0, v1, v2}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    move-result-object p0

    move-object v0, p0

    check-cast v0, La00;

    :cond_0
    return-object v0
.end method

.method public static b(Lorg/chromium/chrome/browser/tab/Tab;)La00;
    .locals 1

    .line 7
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 8
    sget-object v0, La00;->I:Ljava/lang/Class;

    invoke-virtual {p0, v0}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p0

    check-cast p0, La00;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 12
    iget-object v0, p0, La00;->y:LZb1;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, LZb1;->w:LXb1;

    .line 14
    iput-object v1, v0, LZb1;->x:LYb1;

    :cond_0
    return-void
.end method

.method public a(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    .line 1
    iget-object p1, p0, La00;->y:LZb1;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, La00;->d()V

    .line 2
    :cond_0
    iget-object p1, p0, La00;->B:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 3
    iget-object p1, p0, La00;->F:Lsd0;

    iget-object v0, p0, La00;->B:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lsd0;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4
    iput-object v1, p0, La00;->B:Landroid/view/ViewGroup;

    .line 5
    iget-object p1, p0, La00;->G:LKd0;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, LKd0;->b()V

    .line 7
    iput-object v1, p0, La00;->G:LKd0;

    .line 8
    iput-object v1, p0, La00;->H:LJd0;

    .line 9
    :cond_1
    invoke-virtual {p0}, La00;->b()V

    .line 10
    iget-object p1, p0, La00;->y:LZb1;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, LZb1;->a()V

    .line 11
    :cond_2
    iget-object p1, p0, La00;->G:LKd0;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, LKd0;->c()V

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 2

    .line 9
    iget-object v0, p0, La00;->C:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 10
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, La00;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    .line 1
    invoke-interface {p1, p0}, Lorg/chromium/content_public/browser/WebContents;->a(Lorg/chromium/ui/OverscrollRefreshHandler;)V

    .line 2
    iget-object p1, p0, La00;->z:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    .line 4
    iput-object p1, p0, La00;->B:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 6
    iget-object p1, p0, La00;->F:Lsd0;

    iget-object v0, p0, La00;->B:Landroid/view/ViewGroup;

    new-instance v1, LWZ;

    invoke-direct {v1, p0}, LWZ;-><init>(La00;)V

    invoke-interface {p1, v0, v1}, Lsd0;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, La00;->D:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, La00;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, La00;->D:Ljava/lang/Runnable;

    .line 4
    :cond_0
    iget-object v0, p0, La00;->y:LZb1;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, La00;->B:Landroid/view/ViewGroup;

    iget-object v1, p0, La00;->y:LZb1;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, La00;->F:Lsd0;

    iget-object v1, p0, La00;->B:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lsd0;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, La00;->G:LKd0;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, La00;->F:Lsd0;

    invoke-interface {v0}, Lsd0;->c()LJd0;

    move-result-object v0

    iput-object v0, p0, La00;->H:LJd0;

    .line 4
    new-instance v0, LKd0;

    iget-object v1, p0, La00;->B:Landroid/view/ViewGroup;

    iget-object v2, p0, La00;->z:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->g()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, La00;->F:Lsd0;

    iget-object v4, p0, La00;->B:Landroid/view/ViewGroup;

    iget-object v5, p0, La00;->z:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    iget-object v5, v5, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 6
    new-instance v6, LDd0;

    invoke-direct {v6, v4, v5}, LDd0;-><init>(Landroid/view/ViewGroup;Lorg/chromium/content_public/browser/WebContents;)V

    .line 7
    invoke-direct {v0, v1, v2, v3, v6}, LKd0;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lsd0;LrU;)V

    iput-object v0, p0, La00;->G:LKd0;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, La00;->G:LKd0;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, LKd0;->b()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, La00;->G:LKd0;

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, La00;->e()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public pull(FF)V
    .locals 13

    const/4 v0, 0x0

    const-string v1, "SwipeRefreshHandler.pull"

    .line 1
    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, La00;->x:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 3
    iget-object p1, p0, La00;->y:LZb1;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p1, LZb1;->D:Z

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p2, p2, v0

    .line 6
    iget v3, p1, LZb1;->z:F

    sget v4, LZb1;->a0:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    neg-float v4, v3

    .line 7
    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 8
    iget v3, p1, LZb1;->T:F

    add-float/2addr v3, p2

    iput v3, p1, LZb1;->T:F

    .line 9
    iget-object p2, p1, LZb1;->K:LRb1;

    .line 10
    iget-object p2, p2, LRb1;->y:LQb1;

    .line 11
    iget-boolean v4, p2, LQb1;->o:Z

    if-eq v4, v2, :cond_2

    .line 12
    iput-boolean v2, p2, LQb1;->o:Z

    .line 13
    invoke-virtual {p2}, LQb1;->a()V

    .line 14
    :cond_2
    iget p2, p1, LZb1;->z:F

    div-float p2, v3, p2

    const/4 v4, 0x0

    cmpg-float v5, p2, v4

    if-gez v5, :cond_3

    goto/16 :goto_0

    .line 15
    :cond_3
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-double v6, p2

    const-wide v8, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v6, v8

    const-wide/16 v8, 0x0

    .line 16
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-float v6, v6

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float v6, v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    .line 17
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v7, p1, LZb1;->z:F

    sub-float/2addr v3, v7

    .line 18
    iget v7, p1, LZb1;->N:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v9, v7, v8

    .line 19
    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v7

    .line 20
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v3, v9

    float-to-double v9, v3

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 21
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    sub-double/2addr v9, v11

    double-to-float v3, v9

    mul-float v3, v3, v8

    mul-float v9, v7, v3

    mul-float v9, v9, v8

    .line 22
    iget v10, p1, LZb1;->J:I

    mul-float v7, v7, p2

    add-float/2addr v7, v9

    float-to-int v7, v7

    add-int/2addr v10, v7

    .line 23
    iget-object v7, p1, LZb1;->G:LMb1;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_4

    .line 24
    iget-object v7, p1, LZb1;->G:LMb1;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    :cond_4
    iget-object v7, p1, LZb1;->G:LMb1;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 26
    iget-object v7, p1, LZb1;->G:LMb1;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 27
    iget v7, p1, LZb1;->z:F

    const v7, 0x3f4ccccd    # 0.8f

    mul-float v9, v6, v7

    .line 28
    iget-object v11, p1, LZb1;->K:LRb1;

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 29
    iget-object v9, v11, LRb1;->y:LQb1;

    .line 30
    iput v4, v9, LQb1;->e:F

    .line 31
    invoke-virtual {v9}, LQb1;->a()V

    .line 32
    iget-object v9, v11, LRb1;->y:LQb1;

    .line 33
    iput v7, v9, LQb1;->f:F

    .line 34
    invoke-virtual {v9}, LQb1;->a()V

    .line 35
    iget-object v7, p1, LZb1;->K:LRb1;

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 36
    iget-object v7, v7, LRb1;->y:LQb1;

    .line 37
    iget v11, v7, LQb1;->q:F

    cmpl-float v11, v9, v11

    if-eqz v11, :cond_5

    .line 38
    iput v9, v7, LQb1;->q:F

    .line 39
    invoke-virtual {v7}, LQb1;->a()V

    :cond_5
    const v7, 0x3f666666    # 0.9f

    sub-float/2addr p2, v7

    const v7, 0x3dcccccd    # 0.1f

    div-float/2addr p2, v7

    .line 40
    invoke-static {v5, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/high16 v4, 0x43330000    # 179.0f

    mul-float p2, p2, v4

    float-to-int p2, p2

    add-int/lit8 p2, p2, 0x4c

    .line 41
    iget-object v4, p1, LZb1;->K:LRb1;

    invoke-virtual {v4, p2}, LRb1;->setAlpha(I)V

    const/high16 p2, -0x41800000    # -0.25f

    const v4, 0x3ecccccd    # 0.4f

    mul-float v6, v6, v4

    add-float/2addr v6, p2

    mul-float v3, v3, v8

    add-float/2addr v3, v6

    mul-float v3, v3, v0

    .line 42
    iget-object p2, p1, LZb1;->K:LRb1;

    .line 43
    iget-object p2, p2, LRb1;->y:LQb1;

    .line 44
    iput v3, p2, LQb1;->g:F

    .line 45
    invoke-virtual {p2}, LQb1;->a()V

    .line 46
    iget p2, p1, LZb1;->B:I

    sub-int/2addr v10, p2

    invoke-virtual {p1, v10, v2}, LZb1;->a(IZ)V

    goto :goto_0

    :cond_6
    const/4 p2, 0x2

    if-ne v0, p2, :cond_7

    .line 47
    iget-object p2, p0, La00;->G:LKd0;

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, LKd0;->a(F)V

    .line 48
    :cond_7
    :goto_0
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void
.end method

.method public release(Z)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "SwipeRefreshHandler.release"

    .line 1
    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, La00;->x:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 3
    iget-object v0, p0, La00;->y:LZb1;

    .line 4
    iget-boolean v3, v0, LZb1;->D:Z

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    iput-boolean v3, v0, LZb1;->D:Z

    .line 6
    iget v4, v0, LZb1;->T:F

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    iget p1, v0, LZb1;->z:F

    cmpl-float p1, v4, p1

    if-lez p1, :cond_1

    .line 8
    invoke-virtual {v0, v2, v2}, LZb1;->a(ZZ)V

    goto :goto_0

    .line 9
    :cond_1
    iput-boolean v3, v0, LZb1;->y:Z

    .line 10
    iget-object p1, v0, LZb1;->K:LRb1;

    .line 11
    iget-object v2, p1, LRb1;->y:LQb1;

    const/4 v4, 0x0

    .line 12
    iput v4, v2, LQb1;->e:F

    .line 13
    invoke-virtual {v2}, LQb1;->a()V

    .line 14
    iget-object p1, p1, LRb1;->y:LQb1;

    .line 15
    iput v4, p1, LQb1;->f:F

    .line 16
    invoke-virtual {p1}, LQb1;->a()V

    .line 17
    iget-object p1, v0, LZb1;->M:Landroid/view/animation/Animation$AnimationListener;

    if-nez p1, :cond_2

    .line 18
    new-instance p1, LUb1;

    invoke-direct {p1, v0}, LUb1;-><init>(LZb1;)V

    iput-object p1, v0, LZb1;->M:Landroid/view/animation/Animation$AnimationListener;

    .line 19
    :cond_2
    iget-object p1, v0, LZb1;->M:Landroid/view/animation/Animation$AnimationListener;

    .line 20
    iget v2, v0, LZb1;->B:I

    .line 21
    iput v2, v0, LZb1;->I:I

    .line 22
    iget-object v2, v0, LZb1;->V:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->reset()V

    .line 23
    iget-object v2, v0, LZb1;->V:Landroid/view/animation/Animation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 24
    iget-object v2, v0, LZb1;->V:Landroid/view/animation/Animation;

    iget-object v4, v0, LZb1;->F:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p1, :cond_3

    .line 25
    iget-object v2, v0, LZb1;->G:LMb1;

    .line 26
    iput-object p1, v2, LMb1;->w:Landroid/view/animation/Animation$AnimationListener;

    .line 27
    :cond_3
    iget-object p1, v0, LZb1;->G:LMb1;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 28
    iget-object p1, v0, LZb1;->G:LMb1;

    iget-object v2, v0, LZb1;->V:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 29
    iget-object p1, v0, LZb1;->K:LRb1;

    .line 30
    iget-object p1, p1, LRb1;->y:LQb1;

    .line 31
    iget-boolean v0, p1, LQb1;->o:Z

    if-eqz v0, :cond_5

    .line 32
    iput-boolean v3, p1, LQb1;->o:Z

    .line 33
    invoke-virtual {p1}, LQb1;->a()V

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 34
    iget-object v0, p0, La00;->G:LKd0;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, LKd0;->a(Z)V

    .line 35
    :cond_5
    :goto_0
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    invoke-virtual {p0}, La00;->b()V

    .line 2
    iget-object v0, p0, La00;->y:LZb1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LZb1;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, La00;->G:LKd0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LKd0;->c()V

    :cond_1
    return-void
.end method

.method public start(IFFZ)Z
    .locals 6

    .line 1
    iget-object v0, p0, La00;->z:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La00;->z:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->p0()Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-static {v0}, LJa0;->a(Lorg/chromium/chrome/browser/profiles/Profile;)LoT0;

    move-result-object v0

    const-string v1, "pull_to_refresh"

    .line 3
    invoke-interface {v0, v1}, LoT0;->c(Ljava/lang/String;)V

    .line 4
    :cond_0
    iput p1, p0, La00;->x:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_8

    .line 5
    iget-object p1, p0, La00;->y:LZb1;

    if-nez p1, :cond_3

    iget-object p1, p0, La00;->z:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->g()Landroid/content/Context;

    move-result-object p1

    .line 6
    new-instance p2, LZb1;

    invoke-direct {p2, p1}, LZb1;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, La00;->y:LZb1;

    .line 7
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object p2, p0, La00;->y:LZb1;

    .line 9
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f060071

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 10
    iget-object p4, p2, LZb1;->G:LMb1;

    invoke-virtual {p4, p3}, LMb1;->setBackgroundColor(I)V

    .line 11
    iget-object p2, p2, LZb1;->K:LRb1;

    .line 12
    iget-object p2, p2, LRb1;->y:LQb1;

    .line 13
    iput p3, p2, LQb1;->w:I

    .line 14
    iget-object p2, p0, La00;->y:LZb1;

    new-array p3, v2, [I

    const p4, 0x7f0600ee

    aput p4, p3, v1

    .line 15
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 16
    aget v5, p3, v4

    invoke-virtual {p4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17
    :cond_1
    iget-object p2, p2, LZb1;->K:LRb1;

    .line 18
    iget-object p3, p2, LRb1;->y:LQb1;

    .line 19
    iput-object v3, p3, LQb1;->j:[I

    .line 20
    invoke-virtual {p3, v1}, LQb1;->a(I)V

    .line 21
    iget-object p2, p2, LRb1;->y:LQb1;

    invoke-virtual {p2, v1}, LQb1;->a(I)V

    .line 22
    iget-object p2, p0, La00;->B:Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    iget-object p2, p0, La00;->y:LZb1;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 23
    :cond_2
    iget-object p2, p0, La00;->y:LZb1;

    new-instance p3, LUZ;

    invoke-direct {p3, p0, p1}, LUZ;-><init>(La00;Landroid/content/Context;)V

    .line 24
    iput-object p3, p2, LZb1;->w:LXb1;

    .line 25
    iget-object p1, p0, La00;->y:LZb1;

    new-instance p2, LVZ;

    invoke-direct {p2, p0}, LVZ;-><init>(La00;)V

    .line 26
    iput-object p2, p1, LZb1;->x:LYb1;

    .line 27
    :cond_3
    iget-object p1, p0, La00;->D:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    .line 28
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->d()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, La00;->D:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    iput-object v0, p0, La00;->D:Ljava/lang/Runnable;

    .line 30
    :cond_4
    iget-object p1, p0, La00;->y:LZb1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_5

    .line 31
    iget-object p1, p0, La00;->B:Landroid/view/ViewGroup;

    iget-object p2, p0, La00;->y:LZb1;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 32
    :cond_5
    iget-object p1, p0, La00;->y:LZb1;

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_1

    .line 34
    :cond_6
    iget-boolean p2, p1, LZb1;->y:Z

    if-eqz p2, :cond_7

    goto :goto_1

    .line 35
    :cond_7
    iget-object p2, p1, LZb1;->G:LMb1;

    invoke-virtual {p2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 36
    iget-object p2, p1, LZb1;->K:LRb1;

    invoke-virtual {p2}, LRb1;->stop()V

    .line 37
    iget p2, p1, LZb1;->J:I

    iget-object p3, p1, LZb1;->G:LMb1;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2, v2}, LZb1;->a(IZ)V

    const/4 p2, 0x0

    .line 38
    iput p2, p1, LZb1;->T:F

    .line 39
    iput-boolean v2, p1, LZb1;->D:Z

    .line 40
    iget-object p1, p1, LZb1;->K:LRb1;

    const/16 p2, 0x4c

    invoke-virtual {p1, p2}, LRb1;->setAlpha(I)V

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_8
    const/4 v3, 0x2

    if-ne p1, v3, :cond_10

    .line 41
    iget-object p1, p0, La00;->G:LKd0;

    if-eqz p1, :cond_10

    .line 42
    iget-object p1, p0, La00;->H:LJd0;

    check-cast p1, Lfe0;

    if-eqz p1, :cond_f

    if-eqz p4, :cond_9

    .line 43
    iget-object p1, p1, Lfe0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->b()Z

    move-result p1

    goto :goto_2

    :cond_9
    const/4 p1, 0x1

    :goto_2
    if-eqz p4, :cond_a

    .line 44
    iget-object v0, p0, La00;->z:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->b()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    .line 45
    :goto_3
    iget-object v3, p0, La00;->G:LKd0;

    .line 46
    iput v2, v3, LKd0;->h:I

    if-eqz p1, :cond_b

    .line 47
    invoke-virtual {v3, p4}, LKd0;->b(Z)V

    goto :goto_4

    :cond_b
    if-eqz v0, :cond_c

    .line 48
    invoke-virtual {v3, p2, p3}, LKd0;->a(FF)V

    :cond_c
    :goto_4
    if-nez p1, :cond_d

    if-eqz v0, :cond_e

    :cond_d
    const/4 v1, 0x1

    :cond_e
    return v1

    .line 49
    :cond_f
    throw v0

    .line 50
    :cond_10
    iput v1, p0, La00;->x:I

    return v1
.end method
