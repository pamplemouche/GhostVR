.class Landroid/support/v4/view/cp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroid/support/v4/view/ct;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/v4/view/cn;


# direct methods
.method constructor <init>(Landroid/support/v4/view/cn;Landroid/support/v4/view/ct;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/cp;->c:Landroid/support/v4/view/cn;

    iput-object p2, p0, Landroid/support/v4/view/cp;->a:Landroid/support/v4/view/ct;

    iput-object p3, p0, Landroid/support/v4/view/cp;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v4/view/cp;->a:Landroid/support/v4/view/ct;

    iget-object v0, p0, Landroid/support/v4/view/cp;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/support/v4/view/ct;->a(Landroid/view/View;)V

    return-void
.end method
