.class Landroid/support/v7/widget/ca;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ft;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/ViewPropertyAnimator;

.field final synthetic d:Landroid/support/v7/widget/bv;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/ft;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ca;->d:Landroid/support/v7/widget/bv;

    iput-object p2, p0, Landroid/support/v7/widget/ca;->a:Landroid/support/v7/widget/ft;

    iput-object p3, p0, Landroid/support/v7/widget/ca;->b:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v7/widget/ca;->c:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/widget/ca;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/widget/ca;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Landroid/support/v7/widget/ca;->d:Landroid/support/v7/widget/bv;

    iget-object v0, p0, Landroid/support/v7/widget/ca;->a:Landroid/support/v7/widget/ft;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/bv;->k(Landroid/support/v7/widget/ft;)V

    iget-object p1, p0, Landroid/support/v7/widget/ca;->d:Landroid/support/v7/widget/bv;

    iget-object p1, p1, Landroid/support/v7/widget/bv;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v7/widget/ca;->a:Landroid/support/v7/widget/ft;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroid/support/v7/widget/ca;->d:Landroid/support/v7/widget/bv;

    invoke-virtual {p1}, Landroid/support/v7/widget/bv;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/widget/ca;->d:Landroid/support/v7/widget/bv;

    iget-object v0, p0, Landroid/support/v7/widget/ca;->a:Landroid/support/v7/widget/ft;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/bv;->n(Landroid/support/v7/widget/ft;)V

    return-void
.end method
