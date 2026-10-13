.class public Lzd0;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PG"


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;Lyd0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzd0;->w:Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lzd0;->w:Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->x:LKd0;

    const/4 v0, 0x1

    .line 3
    iput v0, p1, LKd0;->h:I

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lzd0;->w:Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->x:LKd0;

    .line 3
    iget v0, v0, LKd0;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 4
    :cond_1
    iget-object v0, p0, Lzd0;->w:Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;

    .line 5
    iget-object v0, v0, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->x:LKd0;

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 7
    iget v4, v0, LKd0;->h:I

    if-nez v4, :cond_2

    goto/16 :goto_7

    :cond_2
    if-ne v4, v2, :cond_c

    .line 8
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const v5, 0x3fdd70a4    # 1.73f

    mul-float p4, p4, v5

    cmpl-float p4, v4, p4

    if-lez p4, :cond_4

    iget p4, v0, LKd0;->a:F

    cmpg-float p4, p1, p4

    if-ltz p4, :cond_3

    iget-object p4, v0, LKd0;->b:Landroid/view/ViewGroup;

    .line 9
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget v4, v0, LKd0;->a:F

    sub-float/2addr p4, v4

    cmpg-float p1, p4, p1

    if-gez p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_9

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-lez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 10
    :goto_2
    iget-object p4, v0, LKd0;->f:LJd0;

    check-cast p4, Lfe0;

    if-eqz p4, :cond_8

    if-eqz p1, :cond_6

    .line 11
    iget-object p4, p4, Lfe0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p4}, Lorg/chromium/chrome/browser/tab/Tab;->b()Z

    move-result p4

    goto :goto_3

    :cond_6
    const/4 p4, 0x1

    :goto_3
    if-eqz p4, :cond_7

    .line 12
    invoke-virtual {v0, p1}, LKd0;->b(Z)V

    goto :goto_4

    .line 13
    :cond_7
    invoke-virtual {v0, v3, p2}, LKd0;->a(FF)V

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    .line 14
    throw p1

    .line 15
    :cond_9
    :goto_4
    iget p1, v0, LKd0;->h:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_b

    const/4 p2, 0x3

    if-ne p1, p2, :cond_a

    goto :goto_5

    :cond_a
    const/4 p1, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 p1, 0x1

    :goto_6
    if-nez p1, :cond_c

    .line 16
    iput v1, v0, LKd0;->h:I

    :cond_c
    neg-float p1, p3

    .line 17
    invoke-virtual {v0, p1}, LKd0;->a(F)V

    :goto_7
    return v2
.end method
