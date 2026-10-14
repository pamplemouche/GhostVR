.class Landroid/support/v7/widget/io;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/if;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/if;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/io;->a:Landroid/support/v7/widget/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/io;->a:Landroid/support/v7/widget/if;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;F)F

    iget-object p1, p0, Landroid/support/v7/widget/io;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    return-void
.end method
