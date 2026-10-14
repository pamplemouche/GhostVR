.class Landroid/support/v4/view/co;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Landroid/support/v4/view/cr;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/v4/view/cn;


# direct methods
.method constructor <init>(Landroid/support/v4/view/cn;Landroid/support/v4/view/cr;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/co;->c:Landroid/support/v4/view/cn;

    iput-object p2, p0, Landroid/support/v4/view/co;->a:Landroid/support/v4/view/cr;

    iput-object p3, p0, Landroid/support/v4/view/co;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v4/view/co;->a:Landroid/support/v4/view/cr;

    iget-object v0, p0, Landroid/support/v4/view/co;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/support/v4/view/cr;->c(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v4/view/co;->a:Landroid/support/v4/view/cr;

    iget-object v0, p0, Landroid/support/v4/view/co;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/support/v4/view/cr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v4/view/co;->a:Landroid/support/v4/view/cr;

    iget-object v0, p0, Landroid/support/v4/view/co;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/support/v4/view/cr;->a(Landroid/view/View;)V

    return-void
.end method
