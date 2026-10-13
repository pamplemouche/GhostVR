.class public LZb1;
.super Landroid/view/ViewGroup;
.source "PG"


# static fields
.field public static final W:[I

.field public static a0:I


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public D:Z

.field public E:Z

.field public final F:Landroid/view/animation/DecelerateInterpolator;

.field public G:LMb1;

.field public H:I

.field public I:I

.field public J:I

.field public K:LRb1;

.field public L:Landroid/view/animation/Animation;

.field public M:Landroid/view/animation/Animation$AnimationListener;

.field public N:F

.field public O:Z

.field public P:I

.field public Q:I

.field public R:Z

.field public S:Landroid/view/animation/Animation$AnimationListener;

.field public T:F

.field public final U:Landroid/view/animation/Animation;

.field public final V:Landroid/view/animation/Animation;

.field public w:LXb1;

.field public x:LYb1;

.field public y:Z

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, LZb1;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    .line 2
    sput-object v0, LZb1;->W:[I

    const/4 v0, 0x3

    .line 3
    sput v0, LZb1;->a0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, LZb1;->y:Z

    const/high16 v2, -0x40800000    # -1.0f

    .line 3
    iput v2, p0, LZb1;->z:F

    .line 4
    iput-boolean v1, p0, LZb1;->C:Z

    const/4 v2, -0x1

    .line 5
    iput v2, p0, LZb1;->H:I

    .line 6
    new-instance v2, LSb1;

    invoke-direct {v2, p0}, LSb1;-><init>(LZb1;)V

    iput-object v2, p0, LZb1;->S:Landroid/view/animation/Animation$AnimationListener;

    .line 7
    new-instance v2, LVb1;

    invoke-direct {v2, p0}, LVb1;-><init>(LZb1;)V

    iput-object v2, p0, LZb1;->U:Landroid/view/animation/Animation;

    .line 8
    new-instance v2, LWb1;

    invoke-direct {v2, p0}, LWb1;-><init>(LZb1;)V

    iput-object v2, p0, LZb1;->V:Landroid/view/animation/Animation;

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, LZb1;->A:I

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 11
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, LZb1;->F:Landroid/view/animation/DecelerateInterpolator;

    .line 12
    sget-object v2, LZb1;->W:[I

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 16
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42200000    # 40.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, LZb1;->P:I

    .line 17
    iput v1, p0, LZb1;->Q:I

    .line 18
    new-instance v1, LMb1;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    const v4, -0x50506

    invoke-direct {v1, v2, v4, v3}, LMb1;-><init>(Landroid/content/Context;IF)V

    iput-object v1, p0, LZb1;->G:LMb1;

    .line 19
    new-instance v1, LRb1;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, LRb1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, LZb1;->K:LRb1;

    .line 20
    iget-object v2, v1, LRb1;->y:LQb1;

    .line 21
    iput v4, v2, LQb1;->w:I

    .line 22
    iget-object v2, p0, LZb1;->G:LMb1;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    iget-object v1, p0, LZb1;->G:LMb1;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object v1, p0, LZb1;->G:LMb1;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    const/high16 v0, 0x42800000    # 64.0f

    .line 26
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    iput p1, p0, LZb1;->N:F

    .line 27
    iput p1, p0, LZb1;->z:F

    return-void
.end method

.method public static synthetic a(LZb1;F)V
    .locals 2

    .line 41
    iget v0, p0, LZb1;->I:I

    iget v1, p0, LZb1;->J:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    .line 42
    iget-object p1, p0, LZb1;->G:LMb1;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, v0, p1}, LZb1;->a(IZ)V

    return-void
.end method

.method public static synthetic b(LZb1;F)V
    .locals 1

    .line 1
    iget-object v0, p0, LZb1;->G:LMb1;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2
    iget-object p0, p0, LZb1;->G:LMb1;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, LZb1;->D:Z

    .line 28
    invoke-virtual {p0, v0, v0}, LZb1;->a(ZZ)V

    .line 29
    iget-object v0, p0, LZb1;->K:LRb1;

    invoke-virtual {v0}, LRb1;->stop()V

    .line 30
    iget-object v0, p0, LZb1;->G:LMb1;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0xff

    .line 31
    invoke-virtual {p0, v0}, LZb1;->a(I)V

    .line 32
    iget v0, p0, LZb1;->J:I

    iget v1, p0, LZb1;->B:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LZb1;->a(IZ)V

    .line 33
    iget-object v0, p0, LZb1;->G:LMb1;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    iput v0, p0, LZb1;->B:I

    .line 34
    iget-object v0, p0, LZb1;->x:LYb1;

    if-eqz v0, :cond_1

    .line 35
    check-cast v0, LVZ;

    .line 36
    iget-object v0, v0, LVZ;->a:La00;

    .line 37
    iget-object v1, v0, La00;->D:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, LYZ;

    invoke-direct {v1, v0}, LYZ;-><init>(La00;)V

    iput-object v1, v0, La00;->D:Ljava/lang/Runnable;

    .line 39
    sget-object v0, LZ01;->a:LFW;

    const-wide/16 v2, 0x0

    .line 40
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LZb1;->G:LMb1;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2
    iget-object v0, p0, LZb1;->K:LRb1;

    .line 3
    iget-object v0, v0, LRb1;->y:LQb1;

    .line 4
    iget v1, v0, LQb1;->u:I

    if-eq v1, p1, :cond_0

    .line 5
    iput p1, v0, LQb1;->u:I

    .line 6
    invoke-virtual {v0}, LQb1;->a()V

    :cond_0
    return-void
.end method

.method public final a(IZ)V
    .locals 1

    .line 44
    iget-object v0, p0, LZb1;->G:LMb1;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 45
    iget-object v0, p0, LZb1;->G:LMb1;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 46
    iget-object p1, p0, LZb1;->G:LMb1;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    iput p1, p0, LZb1;->B:I

    return-void
.end method

.method public final a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 20
    iget-object v0, p0, LZb1;->L:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, LTb1;

    invoke-direct {v0, p0}, LTb1;-><init>(LZb1;)V

    iput-object v0, p0, LZb1;->L:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 23
    :cond_0
    iget-object v0, p0, LZb1;->G:LMb1;

    .line 24
    iput-object p1, v0, LMb1;->w:Landroid/view/animation/Animation$AnimationListener;

    .line 25
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 26
    iget-object p1, p0, LZb1;->G:LMb1;

    iget-object v0, p0, LZb1;->L:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final a(ZZ)V
    .locals 2

    .line 7
    iget-boolean v0, p0, LZb1;->y:Z

    if-eq v0, p1, :cond_2

    .line 8
    iput-boolean p2, p0, LZb1;->O:Z

    .line 9
    iput-boolean p1, p0, LZb1;->y:Z

    if-eqz p1, :cond_1

    .line 10
    iget p1, p0, LZb1;->B:I

    iget-object p2, p0, LZb1;->S:Landroid/view/animation/Animation$AnimationListener;

    .line 11
    iput p1, p0, LZb1;->I:I

    .line 12
    iget-object p1, p0, LZb1;->U:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 13
    iget-object p1, p0, LZb1;->U:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 14
    iget-object p1, p0, LZb1;->U:Landroid/view/animation/Animation;

    iget-object v0, p0, LZb1;->F:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_0

    .line 15
    iget-object p1, p0, LZb1;->G:LMb1;

    .line 16
    iput-object p2, p1, LMb1;->w:Landroid/view/animation/Animation$AnimationListener;

    .line 17
    :cond_0
    iget-object p1, p0, LZb1;->G:LMb1;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 18
    iget-object p1, p0, LZb1;->G:LMb1;

    iget-object p2, p0, LZb1;->U:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, LZb1;->S:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, p1}, LZb1;->a(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getChildDrawingOrder(II)I
    .locals 1

    .line 1
    iget v0, p0, LZb1;->H:I

    if-gez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    return p2
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, LZb1;->G:LMb1;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    .line 4
    iget-object p3, p0, LZb1;->G:LMb1;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p3

    .line 5
    iget-object p4, p0, LZb1;->G:LMb1;

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x2

    sub-int p5, p1, p2

    iget v0, p0, LZb1;->B:I

    add-int/2addr p1, p2

    add-int/2addr p3, v0

    invoke-virtual {p4, p5, v0, p1, p3}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    iget-object p1, p0, LZb1;->G:LMb1;

    iget p2, p0, LZb1;->P:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, LZb1;->Q:I

    .line 3
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 5
    iget-boolean p1, p0, LZb1;->C:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, LZb1;->C:Z

    .line 7
    iget-object p1, p0, LZb1;->G:LMb1;

    .line 8
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const p2, 0x3f866666    # 1.05f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, LZb1;->J:I

    iput p1, p0, LZb1;->B:I

    :cond_0
    const/4 p1, -0x1

    .line 9
    iput p1, p0, LZb1;->H:I

    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, LZb1;->G:LMb1;

    if-ne p2, v0, :cond_1

    .line 12
    iput p1, p0, LZb1;->H:I

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
