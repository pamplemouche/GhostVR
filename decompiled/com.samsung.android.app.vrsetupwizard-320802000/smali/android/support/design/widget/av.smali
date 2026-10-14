.class Landroid/support/design/widget/av;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/az;

.field final synthetic c:Landroid/support/design/widget/at;


# direct methods
.method constructor <init>(Landroid/support/design/widget/at;ZLandroid/support/design/widget/az;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/av;->c:Landroid/support/design/widget/at;

    iput-boolean p2, p0, Landroid/support/design/widget/av;->a:Z

    iput-object p3, p0, Landroid/support/design/widget/av;->b:Landroid/support/design/widget/az;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/support/design/widget/av;->c:Landroid/support/design/widget/at;

    const/4 v0, 0x0

    iput v0, p1, Landroid/support/design/widget/at;->b:I

    iget-object p1, p0, Landroid/support/design/widget/av;->b:Landroid/support/design/widget/az;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/design/widget/az;->a()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroid/support/design/widget/av;->c:Landroid/support/design/widget/at;

    iget-object p1, p1, Landroid/support/design/widget/at;->n:Landroid/support/design/widget/cf;

    iget-boolean v0, p0, Landroid/support/design/widget/av;->a:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/design/widget/cf;->a(IZ)V

    return-void
.end method
