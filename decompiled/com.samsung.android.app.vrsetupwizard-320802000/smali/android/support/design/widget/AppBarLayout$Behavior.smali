.class public Landroid/support/design/widget/AppBarLayout$Behavior;
.super Landroid/support/design/widget/bd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/bd<",
        "Landroid/support/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field private b:I

.field private c:I

.field private d:Landroid/animation/ValueAnimator;

.field private e:I

.field private f:Z

.field private g:F

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/support/design/widget/c;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:Z

.field private s:I

.field private t:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/design/widget/bd;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:Z

    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:Z

    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->m:Z

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->s:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->t:F

    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/bd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:Z

    iput-boolean p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:Z

    iput-boolean p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->m:Z

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->s:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->t:F

    iput-boolean p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->a:Z

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/AppBarLayout$Behavior;)I
    .locals 0

    iget p0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->b:I

    return p0
.end method

.method private a(Landroid/support/design/widget/AppBarLayout;I)I
    .locals 5

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v4, p2

    if-gt v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-lt v2, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private a(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->d()I

    move-result p4

    if-gez p1, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-lez p1, :cond_2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result p1

    neg-int p1, p1

    if-ne p4, p1, :cond_2

    :cond_1
    invoke-static {p3, v0}, Landroid/support/v4/view/be;->c(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V
    .locals 6

    iget p4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->t:F

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/4 v0, 0x0

    const/16 v1, 0xfa

    cmpl-float p4, p4, v0

    if-lez p4, :cond_0

    iget p4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->t:F

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const v2, 0x453b8000    # 3000.0f

    cmpg-float p4, p4, v2

    if-gtz p4, :cond_0

    iget p4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->t:F

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    sub-float/2addr v2, p4

    float-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double v2, v2, v4

    double-to-int p4, v2

    goto :goto_0

    :cond_0
    const/16 p4, 0xfa

    :goto_0
    if-gt p4, v1, :cond_1

    const/16 p4, 0xfa

    :cond_1
    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->a:Z

    if-eqz v2, :cond_2

    const/4 p4, 0x0

    iput-boolean p4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->a:Z

    const/16 p4, 0xfa

    :cond_2
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->t:F

    const/high16 v2, 0x44fa0000    # 2000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V

    :cond_3
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->t:F

    return-void
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v0

    if-ne v0, p3, :cond_1

    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/animation/ValueAnimator;

    sget-object v2, Landroid/support/design/widget/AppBarLayout;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/support/design/widget/b;

    invoke-direct {v2, p0, p1, p2}, Landroid/support/design/widget/b;-><init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/animation/ValueAnimator;

    const/16 p2, 0x2bc

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 p4, 0x0

    aput v0, p2, p4

    const/4 p4, 0x1

    aput p3, p2, p4

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V
    .locals 5

    invoke-static {p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->c(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/e;

    invoke-virtual {v1}, Landroid/support/design/widget/e;->a()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/support/v4/view/be;->i(Landroid/view/View;)I

    move-result v2

    const/4 v4, 0x1

    if-lez p4, :cond_0

    and-int/lit8 p4, v1, 0xc

    if-eqz p4, :cond_0

    neg-int p3, p3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_1

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    and-int/lit8 p4, v1, 0x2

    if-eqz p4, :cond_1

    neg-int p3, p3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->a(Z)Z

    move-result p3

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p4, v0, :cond_3

    if-nez p5, :cond_2

    if-eqz p3, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->jumpDrawablesToCurrentState()V

    :cond_3
    return-void
.end method

.method private static a(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Landroid/support/design/widget/AppBarLayout;I)I
    .locals 8

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/e;

    invoke-virtual {v5}, Landroid/support/design/widget/e;->b()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v0, v7, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    if-gt v0, v7, :cond_2

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/support/design/widget/e;->a()I

    move-result v1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v7, v5, Landroid/support/design/widget/e;->topMargin:I

    add-int/2addr v3, v7

    iget v5, v5, Landroid/support/design/widget/e;->bottomMargin:I

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    invoke-static {v4}, Landroid/support/v4/view/be;->i(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v2, v1

    :cond_0
    invoke-static {v4}, Landroid/support/v4/view/be;->o(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result p1

    sub-int/2addr v2, p1

    :cond_1
    if-lez v2, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v2

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result p2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p1

    mul-int p2, p2, v0

    return p2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method private b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 10

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v0

    invoke-direct {p0, p2, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/AppBarLayout;I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ltz v1, :cond_c

    invoke-virtual {p2, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/e;

    invoke-virtual {v5}, Landroid/support/design/widget/e;->a()I

    move-result v5

    and-int/lit8 v6, v5, 0x64

    const/16 v7, 0x64

    if-ne v6, v7, :cond_0

    return-void

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v2

    if-ne v1, v8, :cond_1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    add-int/2addr v7, v1

    :cond_1
    const/4 v1, 0x2

    invoke-static {v5, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v4}, Landroid/support/v4/view/be;->i(Landroid/view/View;)I

    move-result v1

    add-int/2addr v7, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    invoke-static {v5, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(II)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v4}, Landroid/support/v4/view/be;->i(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v7

    if-ge v0, v1, :cond_3

    move v6, v1

    goto :goto_0

    :cond_3
    move v7, v1

    :cond_4
    :goto_0
    int-to-double v0, v0

    add-int v2, v7, v6

    int-to-double v4, v2

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double v8, v8, v4

    cmpg-double v2, v0, v8

    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->j:Z

    if-eqz v2, :cond_7

    const-wide v8, 0x3fe0a3d70a3d70a4L    # 0.52

    mul-double v4, v4, v8

    cmpl-double v2, v0, v4

    if-ltz v2, :cond_6

    :cond_5
    move v0, v6

    goto :goto_2

    :cond_6
    :goto_1
    move v0, v7

    goto :goto_2

    :cond_7
    const-wide v8, 0x3fdb851eb851eb85L    # 0.43

    mul-double v4, v4, v8

    cmpg-double v2, v0, v4

    if-gez v2, :cond_5

    goto :goto_1

    :goto_2
    invoke-direct {p0, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->c(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:Z

    if-eqz v1, :cond_8

    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:Z

    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:Z

    move v0, v7

    :cond_8
    iget-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:Z

    if-eqz v1, :cond_b

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Landroid/support/design/widget/AppBarLayout;->f()F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_b

    goto :goto_3

    :cond_9
    iget-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:Z

    if-eqz v1, :cond_a

    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:Z

    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:Z

    move v0, v7

    :cond_a
    iget-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:Z

    if-eqz v1, :cond_b

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Landroid/support/design/widget/AppBarLayout;->f()F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_b

    :goto_3
    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:Z

    move v0, v6

    :cond_b
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v2}, Landroid/support/v4/g/a;->b(III)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    :cond_c
    return-void
.end method

.method private static c(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private c(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 3

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v2

    invoke-direct {p0, p1, v2}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/AppBarLayout;I)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/e;

    invoke-virtual {p1}, Landroid/support/design/widget/e;->a()I

    move-result p1

    const/16 v2, 0x128

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private c(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method a()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->d()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I
    .locals 8

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    if-lt v0, p4, :cond_3

    if-gt v0, p5, :cond_3

    invoke-static {p3, p4, p5}, Landroid/support/v4/g/a;->b(III)I

    move-result v5

    if-eq v0, v5, :cond_4

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->b()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p2, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/AppBarLayout;I)I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v5

    :goto_0
    invoke-virtual {p0, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(I)Z

    move-result p4

    sub-int v1, v0, v5

    sub-int p3, v5, p3

    iput p3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->b:I

    if-nez p4, :cond_1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->b()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->d()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/support/design/widget/AppBarLayout;->a(I)V

    if-ge v5, v0, :cond_2

    const/4 p3, -0x1

    const/4 v6, -0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x1

    const/4 v6, 0x1

    :goto_1
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    goto :goto_2

    :cond_3
    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->b:I

    :cond_4
    :goto_2
    return v1
.end method

.method bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    move-result p1

    return p1
.end method

.method synthetic a(Landroid/view/View;)I
    .locals 0

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .locals 7

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/bd;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->d()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v0

    if-gtz v6, :cond_1

    if-ltz v5, :cond_1

    new-instance v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    iput v3, v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->a:I

    invoke-static {v4}, Landroid/support/v4/view/be;->i(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result p2

    add-int/2addr p1, p2

    if-ne v5, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->c:Z

    int-to-float p1, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->b:F

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v0, :cond_0

    check-cast p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-virtual {p3}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/bd;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    iget p1, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->a:I

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:I

    iget p1, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->b:F

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->g:F

    iget-boolean p1, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->c:Z

    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->f:Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/bd;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:I

    :goto_0
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->c()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->c()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->b()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->b()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    :cond_1
    iget p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->c:I

    if-eqz p1, :cond_2

    if-ne p4, v2, :cond_3

    :cond_2
    iget-boolean p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->m:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->m:Z

    :cond_3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIIII)V
    .locals 6

    invoke-direct {p0, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->c(Landroid/support/design/widget/AppBarLayout;)Z

    move-result p4

    if-eqz p4, :cond_1

    if-gez p7, :cond_0

    iget-boolean p4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->m:Z

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-static {p3, p1}, Landroid/support/v4/view/be;->c(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    if-gez p7, :cond_2

    :goto_0
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result p4

    neg-int v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    invoke-direct {p0, p7, p2, p3, p8}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V
    .locals 13

    move-object v6, p0

    move/from16 v7, p5

    if-eqz v7, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-gez v7, :cond_2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v3

    add-int/2addr v3, v2

    iput-boolean v8, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->k:Z

    iput-boolean v1, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->l:Z

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getBottom()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x3fe0a3d70a3d70a4L    # 0.52

    mul-double v9, v9, v11

    cmpl-double v11, v4, v9

    if-ltz v11, :cond_0

    iput-boolean v8, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->a:Z

    :cond_0
    const/16 v4, -0x1e

    if-ge v7, v4, :cond_1

    iput-boolean v8, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->k:Z

    goto :goto_0

    :cond_1
    iput v0, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->t:F

    iput-boolean v1, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->k:Z

    :goto_0
    move v4, v2

    move v5, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v2

    neg-int v2, v2

    iput-boolean v1, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->k:Z

    iput-boolean v8, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->l:Z

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getBottom()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v5

    int-to-double v9, v5

    const-wide v11, 0x3fdb851eb851eb85L    # 0.43

    mul-double v9, v9, v11

    cmpg-double v5, v3, v9

    if-gtz v5, :cond_3

    iput-boolean v8, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->a:Z

    :cond_3
    const/16 v3, 0x1e

    if-le v7, v3, :cond_4

    iput-boolean v8, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->l:Z

    goto :goto_1

    :cond_4
    iput v0, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->t:F

    iput-boolean v1, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->l:Z

    :goto_1
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->d()I

    move-result v0

    if-ne v0, v2, :cond_5

    iput-boolean v8, v6, Landroid/support/design/widget/AppBarLayout$Behavior;->m:Z

    :cond_5
    move v4, v2

    const/4 v5, 0x0

    :goto_2
    if-eq v4, v5, :cond_6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    aput v0, p6, v8

    :cond_6
    move-object v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p7

    invoke-direct {p0, v7, p2, v1, v2}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p8}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public bridge synthetic a(I)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/support/design/widget/bd;->a(I)Z

    move-result p1

    return p1
.end method

.method a(Landroid/support/design/widget/AppBarLayout;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->i:Landroid/support/design/widget/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/c;->a(Landroid/support/design/widget/AppBarLayout;)Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->h:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z
    .locals 7

    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/bd;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p3

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getPendingAction()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:I

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    and-int/lit8 v3, v0, 0x8

    if-nez v3, :cond_1

    invoke-virtual {p2, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    iget-boolean v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->f:Z

    if-eqz v3, :cond_0

    invoke-static {v0}, Landroid/support/v4/view/be;->i(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->g:F

    mul-float v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    invoke-virtual {p0, p1, p2, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->a_(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    and-int/lit8 v4, v0, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2, v0, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a_(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_2

    :cond_4
    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    invoke-direct {p0, p1, p2, v2, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, p2, v2}, Landroid/support/design/widget/AppBarLayout$Behavior;->a_(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    :cond_6
    :goto_2
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->d()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:I

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->d()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v2}, Landroid/support/v4/g/a;->b(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(I)Z

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->d()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->d()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/support/design/widget/AppBarLayout;->a(I)V

    return p3
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z
    .locals 6

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/ak;

    iget v0, v0, Landroid/support/design/widget/ak;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 p5, 0x0

    invoke-static {p5, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;IIII)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/bd;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 5

    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->s:I

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->s:I

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    goto/16 :goto_2

    :cond_1
    if-eqz p3, :cond_2

    const/16 v0, 0x2002

    invoke-static {p3, v0}, Landroid/support/v4/view/s;->e(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->r:Z

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->q:F

    sub-float v3, v0, v2

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_3

    sub-float v1, v0, v2

    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->p:F

    :cond_3
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->p:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->s:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->q:F

    goto :goto_2

    :cond_4
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->p:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x41a80000    # 21.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_6

    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->p:F

    cmpg-float v4, v0, v1

    if-gez v4, :cond_5

    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:Z

    iput-boolean v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:Z

    goto :goto_1

    :cond_5
    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iput-boolean v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:Z

    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:Z

    goto :goto_1

    :cond_6
    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->n:F

    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->o:F

    iput-boolean v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:Z

    iput-boolean v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:Z

    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->q:F

    :cond_7
    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->n:F

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->o:F

    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->o:F

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->q:F

    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->p:F

    :cond_9
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/bd;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FF)Z
    .locals 3

    iput p5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->t:F

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, -0x3c6a0000    # -300.0f

    cmpg-float v2, p5, v2

    if-gez v2, :cond_0

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:Z

    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:Z

    goto :goto_0

    :cond_0
    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v2, p5, v2

    if-lez v2, :cond_1

    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:Z

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:Z

    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/bd;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->t:F

    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->k:Z

    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->l:Z

    return v0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/bd;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    and-int/lit8 p4, p5, 0x2

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->c()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result p4

    if-gt p1, p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getBottom()I

    move-result p4

    if-ne p3, p4, :cond_1

    iget-object p3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getBottom()I

    move-result p3

    int-to-float p3, p3

    invoke-static {}, Landroid/support/design/widget/AppBarLayout;->f()F

    move-result p4

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_2

    iput-boolean p5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->j:Z

    iget-boolean p3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->j:Z

    invoke-static {p2, p3}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/support/design/widget/AppBarLayout;Z)Z

    const/4 p2, 0x0

    iput p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->p:F

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->j:Z

    iget-boolean p3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->j:Z

    invoke-static {p2, p3}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/support/design/widget/AppBarLayout;Z)Z

    :goto_1
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->h:Ljava/lang/ref/WeakReference;

    iput p6, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->c:I

    return p1
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b()I
    .locals 1

    invoke-super {p0}, Landroid/support/design/widget/bd;->b()I

    move-result v0

    return v0
.end method

.method b(Landroid/support/design/widget/AppBarLayout;)I
    .locals 0

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method synthetic b(Landroid/view/View;)Z
    .locals 0

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/AppBarLayout;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic c()I
    .locals 1

    invoke-super {p0}, Landroid/support/design/widget/bd;->c()I

    move-result v0

    return v0
.end method

.method public bridge synthetic d()I
    .locals 1

    invoke-super {p0}, Landroid/support/design/widget/bd;->d()I

    move-result v0

    return v0
.end method
