.class public Lj8;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic w:Ll8;

.field public final synthetic x:Lm8;


# direct methods
.method public constructor <init>(Lm8;Ll8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj8;->x:Lm8;

    iput-object p2, p0, Lj8;->w:Ll8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lj8;->x:Lm8;

    iget-object v1, p0, Lj8;->w:Ll8;

    invoke-virtual {v0, p1, v1}, Lm8;->a(FLl8;)V

    .line 3
    iget-object v0, p0, Lj8;->x:Lm8;

    iget-object v1, p0, Lj8;->w:Ll8;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lm8;->a(FLl8;Z)V

    .line 4
    iget-object p1, p0, Lj8;->x:Lm8;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
