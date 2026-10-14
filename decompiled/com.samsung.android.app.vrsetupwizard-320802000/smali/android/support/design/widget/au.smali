.class Landroid/support/design/widget/au;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/az;

.field final synthetic c:Landroid/support/design/widget/at;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/support/design/widget/at;ZLandroid/support/design/widget/az;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/au;->c:Landroid/support/design/widget/at;

    iput-boolean p2, p0, Landroid/support/design/widget/au;->a:Z

    iput-object p3, p0, Landroid/support/design/widget/au;->b:Landroid/support/design/widget/az;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/design/widget/au;->d:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroid/support/design/widget/au;->c:Landroid/support/design/widget/at;

    const/4 v0, 0x0

    iput v0, p1, Landroid/support/design/widget/at;->b:I

    iget-boolean v0, p0, Landroid/support/design/widget/au;->d:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Landroid/support/design/widget/at;->n:Landroid/support/design/widget/cf;

    iget-boolean v0, p0, Landroid/support/design/widget/au;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iget-boolean v1, p0, Landroid/support/design/widget/au;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/support/design/widget/cf;->a(IZ)V

    iget-object p1, p0, Landroid/support/design/widget/au;->b:Landroid/support/design/widget/az;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/support/design/widget/az;->b()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroid/support/design/widget/au;->c:Landroid/support/design/widget/at;

    iget-object p1, p1, Landroid/support/design/widget/at;->n:Landroid/support/design/widget/cf;

    iget-boolean v0, p0, Landroid/support/design/widget/au;->a:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/design/widget/cf;->a(IZ)V

    iput-boolean v1, p0, Landroid/support/design/widget/au;->d:Z

    return-void
.end method
