.class public Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field public w:Landroid/view/GestureDetector;

.field public x:LKd0;

.field public y:Lsd0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object p1, Lxd0;->a:Lsd0;

    iput-object p1, p0, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->y:Lsd0;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->x:LKd0;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->w:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->x:LKd0;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 4
    iget v1, v0, LKd0;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, v0, LKd0;->i:Lde0;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, v0, LKd0;->j:LNd0;

    invoke-interface {v2}, LNd0;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Lde0;->a(Z)V

    .line 6
    iget-object v0, v0, LKd0;->j:LNd0;

    invoke-interface {v0}, LNd0;->b()V

    goto :goto_0

    .line 7
    :cond_0
    iget v1, v0, LKd0;->h:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v0, v0, LKd0;->g:LCd0;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, LCd0;->b()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 9
    throw p1

    .line 10
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->y:Lsd0;

    invoke-interface {v0, p0}, Lsd0;->a(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->x:LKd0;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lzd0;

    invoke-direct {v3, p0, v1}, Lzd0;-><init>(Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;Lyd0;)V

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->w:Landroid/view/GestureDetector;

    .line 5
    new-instance v0, LKd0;

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->y:Lsd0;

    .line 7
    new-instance v3, LEd0;

    invoke-direct {v3, p0}, LEd0;-><init>(Landroid/view/ViewGroup;)V

    .line 8
    invoke-direct {v0, p0, v1, v2, v3}, LKd0;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lsd0;LrU;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->x:LKd0;

    goto :goto_0

    .line 9
    :cond_0
    iput-object v1, p0, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->w:Landroid/view/GestureDetector;

    .line 10
    iget-object v0, p0, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->x:LKd0;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, LKd0;->b()V

    .line 12
    iput-object v1, p0, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->x:LKd0;

    :cond_1
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->x:LKd0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LKd0;->c()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->w:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->x:LKd0;

    .line 2
    iget v0, v0, LKd0;->h:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return v2

    .line 3
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
