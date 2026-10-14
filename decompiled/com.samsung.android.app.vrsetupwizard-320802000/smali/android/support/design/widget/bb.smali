.class abstract Landroid/support/design/widget/bb;
.super Landroid/animation/AnimatorListenerAdapter;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private a:Z

.field final synthetic b:Landroid/support/design/widget/at;

.field private c:F

.field private d:F


# direct methods
.method private constructor <init>(Landroid/support/design/widget/at;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/bb;->b:Landroid/support/design/widget/at;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/at;Landroid/support/design/widget/au;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/bb;-><init>(Landroid/support/design/widget/at;)V

    return-void
.end method


# virtual methods
.method protected abstract a()F
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/support/design/widget/bb;->b:Landroid/support/design/widget/at;

    iget-object p1, p1, Landroid/support/design/widget/at;->c:Landroid/support/design/widget/bh;

    iget v0, p0, Landroid/support/design/widget/bb;->d:F

    invoke-virtual {p1, v0}, Landroid/support/design/widget/bh;->b(F)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/design/widget/bb;->a:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/design/widget/bb;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bb;->b:Landroid/support/design/widget/at;

    iget-object v0, v0, Landroid/support/design/widget/at;->c:Landroid/support/design/widget/bh;

    invoke-virtual {v0}, Landroid/support/design/widget/bh;->a()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/bb;->c:F

    invoke-virtual {p0}, Landroid/support/design/widget/bb;->a()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/bb;->d:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/bb;->a:Z

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/bb;->b:Landroid/support/design/widget/at;

    iget-object v0, v0, Landroid/support/design/widget/at;->c:Landroid/support/design/widget/bh;

    iget v1, p0, Landroid/support/design/widget/bb;->c:F

    iget v2, p0, Landroid/support/design/widget/bb;->d:F

    sub-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/design/widget/bh;->b(F)V

    return-void
.end method
