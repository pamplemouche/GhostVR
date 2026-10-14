.class Landroid/support/design/widget/p;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/design/widget/g;


# direct methods
.method constructor <init>(Landroid/support/design/widget/g;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/p;->b:Landroid/support/design/widget/g;

    iput p2, p0, Landroid/support/design/widget/p;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/support/design/widget/p;->b:Landroid/support/design/widget/g;

    iget v0, p0, Landroid/support/design/widget/p;->a:I

    invoke-virtual {p1, v0}, Landroid/support/design/widget/g;->c(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroid/support/design/widget/p;->b:Landroid/support/design/widget/g;

    invoke-static {p1}, Landroid/support/design/widget/g;->a(Landroid/support/design/widget/g;)Landroid/support/design/widget/s;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0xb4

    invoke-interface {p1, v0, v1}, Landroid/support/design/widget/s;->b(II)V

    return-void
.end method
