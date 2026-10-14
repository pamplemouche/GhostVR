.class Landroid/support/design/widget/n;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Landroid/support/design/widget/g;


# direct methods
.method constructor <init>(Landroid/support/design/widget/g;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/n;->a:Landroid/support/design/widget/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Landroid/support/design/widget/n;->a:Landroid/support/design/widget/g;

    invoke-virtual {p1}, Landroid/support/design/widget/g;->d()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroid/support/design/widget/n;->a:Landroid/support/design/widget/g;

    invoke-static {p1}, Landroid/support/design/widget/g;->a(Landroid/support/design/widget/g;)Landroid/support/design/widget/s;

    move-result-object p1

    const/16 v0, 0x46

    const/16 v1, 0xb4

    invoke-interface {p1, v0, v1}, Landroid/support/design/widget/s;->a(II)V

    return-void
.end method
