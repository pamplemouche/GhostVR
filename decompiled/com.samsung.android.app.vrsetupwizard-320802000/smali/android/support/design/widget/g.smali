.class public abstract Landroid/support/design/widget/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroid/support/design/widget/g<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Landroid/os/Handler;

.field private static final d:Z


# instance fields
.field final b:Landroid/support/design/widget/v;

.field final c:Landroid/support/design/widget/bl;

.field private final e:Landroid/view/ViewGroup;

.field private final f:Landroid/support/design/widget/s;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/design/widget/q<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field private final h:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/g;->d:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/h;

    invoke-direct {v2}, Landroid/support/design/widget/h;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/g;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/g;)Landroid/support/design/widget/s;
    .locals 0

    iget-object p0, p0, Landroid/support/design/widget/g;->f:Landroid/support/design/widget/s;

    return-object p0
.end method

.method private d(I)V
    .locals 4

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    iget-object v2, p0, Landroid/support/design/widget/g;->b:Landroid/support/design/widget/v;

    invoke-virtual {v2}, Landroid/support/design/widget/v;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/p;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/p;-><init>(Landroid/support/design/widget/g;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Landroid/support/design/widget/i;

    invoke-direct {p1, p0}, Landroid/support/design/widget/i;-><init>(Landroid/support/design/widget/g;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 2

    invoke-static {}, Landroid/support/design/widget/bj;->a()Landroid/support/design/widget/bj;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/g;->c:Landroid/support/design/widget/bl;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/bj;->a(Landroid/support/design/widget/bl;I)V

    return-void
.end method

.method public a()Z
    .locals 2

    invoke-static {}, Landroid/support/design/widget/bj;->a()Landroid/support/design/widget/bj;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/g;->c:Landroid/support/design/widget/bl;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/bj;->e(Landroid/support/design/widget/bl;)Z

    move-result v0

    return v0
.end method

.method final b()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/g;->b:Landroid/support/design/widget/v;

    invoke-virtual {v0}, Landroid/support/design/widget/v;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/g;->b:Landroid/support/design/widget/v;

    invoke-virtual {v0}, Landroid/support/design/widget/v;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/support/design/widget/ak;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/design/widget/ak;

    new-instance v1, Landroid/support/design/widget/r;

    invoke-direct {v1, p0}, Landroid/support/design/widget/r;-><init>(Landroid/support/design/widget/g;)V

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Landroid/support/design/widget/r;->a(F)V

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/support/design/widget/r;->b(F)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/r;->a(I)V

    new-instance v2, Landroid/support/design/widget/j;

    invoke-direct {v2, p0}, Landroid/support/design/widget/j;-><init>(Landroid/support/design/widget/g;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/r;->a(Landroid/support/design/widget/br;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ak;->a(Landroid/support/design/widget/ah;)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/support/design/widget/ak;->g:I

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/g;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/g;->b:Landroid/support/design/widget/v;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/g;->b:Landroid/support/design/widget/v;

    new-instance v1, Landroid/support/design/widget/k;

    invoke-direct {v1, p0}, Landroid/support/design/widget/k;-><init>(Landroid/support/design/widget/g;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/v;->setOnAttachStateChangeListener(Landroid/support/design/widget/t;)V

    iget-object v0, p0, Landroid/support/design/widget/g;->b:Landroid/support/design/widget/v;

    invoke-static {v0}, Landroid/support/v4/view/be;->v(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/design/widget/g;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/design/widget/g;->c()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/g;->d()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/g;->b:Landroid/support/design/widget/v;

    new-instance v1, Landroid/support/design/widget/m;

    invoke-direct {v1, p0}, Landroid/support/design/widget/m;-><init>(Landroid/support/design/widget/g;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/v;->setOnLayoutChangeListener(Landroid/support/design/widget/u;)V

    :goto_0
    return-void
.end method

.method final b(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/g;->b:Landroid/support/design/widget/v;

    invoke-virtual {v0}, Landroid/support/design/widget/v;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/design/widget/g;->d(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/g;->c(I)V

    :goto_0
    return-void
.end method

.method c()V
    .locals 5

    iget-object v0, p0, Landroid/support/design/widget/g;->b:Landroid/support/design/widget/v;

    invoke-virtual {v0}, Landroid/support/design/widget/v;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/g;->b:Landroid/support/design/widget/v;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/v;->setTranslationY(F)V

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    sget-object v2, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/support/design/widget/n;

    invoke-direct {v2, p0}, Landroid/support/design/widget/n;-><init>(Landroid/support/design/widget/g;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Landroid/support/design/widget/o;

    invoke-direct {v2, p0, v0}, Landroid/support/design/widget/o;-><init>(Landroid/support/design/widget/g;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method c(I)V
    .locals 2

    invoke-static {}, Landroid/support/design/widget/bj;->a()Landroid/support/design/widget/bj;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/g;->c:Landroid/support/design/widget/bl;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/bj;->a(Landroid/support/design/widget/bl;)V

    iget-object v0, p0, Landroid/support/design/widget/g;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/g;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/q;

    invoke-virtual {v1, p0, p1}, Landroid/support/design/widget/q;->a(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Landroid/support/design/widget/g;->b:Landroid/support/design/widget/v;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/support/design/widget/v;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Landroid/support/design/widget/g;->b:Landroid/support/design/widget/v;

    invoke-virtual {p1}, Landroid/support/design/widget/v;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/design/widget/g;->b:Landroid/support/design/widget/v;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method d()V
    .locals 2

    invoke-static {}, Landroid/support/design/widget/bj;->a()Landroid/support/design/widget/bj;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/g;->c:Landroid/support/design/widget/bl;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/bj;->b(Landroid/support/design/widget/bl;)V

    iget-object v0, p0, Landroid/support/design/widget/g;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/g;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/q;

    invoke-virtual {v1, p0}, Landroid/support/design/widget/q;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method e()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/g;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
