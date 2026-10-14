.class Landroid/support/v7/widget/gm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/gl;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/gl;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/gm;->a:Landroid/support/v7/widget/gl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/gm;->a:Landroid/support/v7/widget/gl;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Landroid/support/v7/widget/gl;->a(Landroid/support/v7/widget/gl;I)I

    iget-object p1, p0, Landroid/support/v7/widget/gm;->a:Landroid/support/v7/widget/gl;

    invoke-static {p1}, Landroid/support/v7/widget/gl;->a(Landroid/support/v7/widget/gl;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/gl;->a(I)V

    return-void
.end method
