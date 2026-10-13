.class public Lde0;
.super Landroid/view/ViewGroup;
.source "PG"


# static fields
.field public static R:J

.field public static S:Z


# instance fields
.field public A:Lce0;

.field public B:Z

.field public C:I

.field public D:F

.field public E:Z

.field public F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

.field public G:I

.field public H:I

.field public I:I

.field public J:Landroid/view/animation/AnimationSet;

.field public K:I

.field public L:Z

.field public M:I

.field public N:Z

.field public O:Z

.field public final P:Landroid/view/animation/Animation$AnimationListener;

.field public final Q:Landroid/view/animation/Animation;

.field public final w:Landroid/view/animation/DecelerateInterpolator;

.field public final x:F

.field public final y:I

.field public z:Lbe0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, LZd0;

    invoke-direct {p1, p0}, LZd0;-><init>(Lde0;)V

    iput-object p1, p0, Lde0;->P:Landroid/view/animation/Animation$AnimationListener;

    .line 3
    new-instance p1, Lae0;

    invoke-direct {p1, p0}, Lae0;-><init>(Lde0;)V

    iput-object p1, p0, Lde0;->Q:Landroid/view/animation/Animation;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 6
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lde0;->w:Landroid/view/animation/DecelerateInterpolator;

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lde0;->y:I

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e011d

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    iput-object v0, p0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    .line 10
    iget-object v0, v0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->C:Landroid/widget/TextView;

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13045f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f13014c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget p1, p0, Lde0;->y:I

    iput p1, p0, Lde0;->G:I

    .line 16
    iget-object p1, p0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/high16 p1, 0x42000000    # 32.0f

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    iput v0, p0, Lde0;->x:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lde0;->L:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lde0;->D:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lde0;->D:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_0
    return v0
.end method

.method public final a(I)V
    .locals 1

    .line 18
    iget-object v0, p0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->offsetLeftAndRight(I)V

    .line 19
    iget-object p1, p0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p1

    iput p1, p0, Lde0;->C:I

    return-void
.end method

.method public final a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lde0;->J:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    iget v0, p0, Lde0;->K:I

    iget v1, p0, Lde0;->G:I

    if-eq v0, v1, :cond_1

    .line 3
    :cond_0
    iget v0, p0, Lde0;->G:I

    iput v0, p0, Lde0;->K:I

    .line 4
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iget v1, p0, Lde0;->G:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    iget-object v1, p0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    .line 5
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v7, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 6
    sget-object v1, LNM0;->d:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x190

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 8
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 9
    iget-object v4, p0, Lde0;->w:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 10
    invoke-virtual {v3, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 11
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lde0;->J:Landroid/view/animation/AnimationSet;

    .line 12
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 13
    iget-object v1, p0, Lde0;->J:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 14
    :cond_1
    iget-object v0, p0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    .line 15
    iput-object p1, v0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->E:Landroid/view/animation/Animation$AnimationListener;

    .line 16
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 17
    iget-object p1, p0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    iget-object v0, p0, Lde0;->J:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public a(Z)V
    .locals 7

    .line 20
    iget-boolean v0, p0, Lde0;->E:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lde0;->E:Z

    .line 22
    iget-boolean v1, p0, Lde0;->L:Z

    const/4 v2, 0x2

    const-string v3, "GestureNavigation.Triggered"

    .line 23
    invoke-static {v3, v1, v2}, LfV;->a(Ljava/lang/String;II)V

    .line 24
    iget-boolean v1, p0, Lde0;->O:Z

    if-eqz v1, :cond_1

    .line 25
    iget-boolean v1, p0, Lde0;->L:Z

    const-string v3, "GestureNavigation.SwipedOverThreshold"

    .line 26
    invoke-static {v3, v1, v2}, LfV;->a(Ljava/lang/String;II)V

    .line 27
    iput-boolean v0, p0, Lde0;->O:Z

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lde0;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Lde0;->b(Z)V

    .line 30
    iget-boolean p1, p0, Lde0;->L:Z

    const-string v0, "GestureNavigation.Completed"

    .line 31
    invoke-static {v0, p1, v2}, LfV;->a(Ljava/lang/String;II)V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 33
    sget-wide v3, Lde0;->R:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    sub-long v3, v0, v3

    const-wide/16 v5, 0xbb8

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    iget-boolean p1, p0, Lde0;->L:Z

    sget-boolean v3, Lde0;->S:Z

    if-eq p1, v3, :cond_2

    const-string v3, "GestureNavigation.Reversed"

    .line 34
    invoke-static {v3, p1, v2}, LfV;->a(Ljava/lang/String;II)V

    .line 35
    :cond_2
    sput-wide v0, Lde0;->R:J

    .line 36
    iget-boolean p1, p0, Lde0;->L:Z

    sput-boolean p1, Lde0;->S:Z

    goto :goto_0

    .line 37
    :cond_3
    iput-boolean v0, p0, Lde0;->B:Z

    .line 38
    iget-object p1, p0, Lde0;->P:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, p1}, Lde0;->a(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    return-void

    .line 39
    :cond_4
    iput-boolean v0, p0, Lde0;->B:Z

    .line 40
    iget p1, p0, Lde0;->C:I

    iput p1, p0, Lde0;->H:I

    .line 41
    iget-object p1, p0, Lde0;->Q:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 42
    iget-object p1, p0, Lde0;->Q:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 43
    iget-object p1, p0, Lde0;->Q:Landroid/view/animation/Animation;

    iget-object v0, p0, Lde0;->w:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 44
    iget-object p1, p0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 45
    iget-object p1, p0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    iget-object v0, p0, Lde0;->Q:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 46
    iget-boolean p1, p0, Lde0;->L:Z

    const-string v0, "GestureNavigation.Abandoned"

    .line 47
    invoke-static {v0, p1, v2}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 4
    iget-object v0, p0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->a(I)V

    .line 5
    iget v0, p0, Lde0;->y:I

    iput v0, p0, Lde0;->G:I

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lde0;->B:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lde0;->B:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lde0;->P:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, p1}, Lde0;->a(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lde0;->E:Z

    .line 2
    invoke-virtual {p0, v0}, Lde0;->b(Z)V

    .line 3
    invoke-virtual {p0}, Lde0;->b()V

    .line 4
    iget v0, p0, Lde0;->I:I

    iget v1, p0, Lde0;->C:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lde0;->a(I)V

    .line 5
    iget-object v0, p0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    iput v0, p0, Lde0;->C:I

    .line 6
    iget-object v0, p0, Lde0;->A:Lce0;

    if-eqz v0, :cond_1

    check-cast v0, LGd0;

    .line 7
    iget-object v0, v0, LGd0;->a:LKd0;

    .line 8
    iget-object v1, v0, LKd0;->l:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, LId0;

    invoke-direct {v1, v0}, LId0;-><init>(LKd0;)V

    iput-object v1, v0, LKd0;->l:Ljava/lang/Runnable;

    .line 10
    iget-object v0, v0, LKd0;->i:Lde0;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lde0;->a()F

    move-result v0

    iget v1, p0, Lde0;->x:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    .line 3
    iget-object p2, p0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    .line 4
    iget-object p3, p0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    .line 5
    iget-object p4, p0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    iget p5, p0, Lde0;->C:I

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p3, p3, 0x2

    sub-int v0, p1, p3

    add-int/2addr p2, p5

    add-int/2addr p1, p3

    invoke-virtual {p4, p5, v0, p2, p1}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lde0;->F:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    iget p2, p0, Lde0;->G:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Lde0;->y:I

    .line 3
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->measure(II)V

    return-void
.end method
