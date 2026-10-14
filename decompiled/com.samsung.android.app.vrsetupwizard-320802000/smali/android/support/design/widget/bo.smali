.class Landroid/support/design/widget/bo;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Landroid/support/design/widget/bn;


# direct methods
.method constructor <init>(Landroid/support/design/widget/bn;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/bo;->a:Landroid/support/design/widget/bn;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/bo;->a:Landroid/support/design/widget/bn;

    iget-object v0, v0, Landroid/support/design/widget/bn;->a:Landroid/animation/ValueAnimator;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/bo;->a:Landroid/support/design/widget/bn;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/design/widget/bn;->a:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
