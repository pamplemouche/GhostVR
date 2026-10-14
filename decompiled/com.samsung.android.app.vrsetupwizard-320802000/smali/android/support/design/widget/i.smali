.class Landroid/support/design/widget/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroid/support/design/widget/g;

.field private b:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/g;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/i;->a:Landroid/support/design/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/design/widget/i;->b:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/support/design/widget/g;

    iget-object v0, v0, Landroid/support/design/widget/g;->b:Landroid/support/design/widget/v;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/v;->setTranslationY(F)V

    iput p1, p0, Landroid/support/design/widget/i;->b:I

    return-void
.end method
