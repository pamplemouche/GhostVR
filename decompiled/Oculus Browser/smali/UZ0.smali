.class public final synthetic LUZ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final w:LVZ0;


# direct methods
.method public constructor <init>(LVZ0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LUZ0;->w:LVZ0;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, LUZ0;->w:LVZ0;

    .line 1
    iget v1, v0, LVZ0;->f:F

    iget v2, v0, LVZ0;->h:F

    sub-float/2addr v2, v1

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    mul-float v3, v3, v2

    add-float/2addr v3, v1

    .line 3
    iput v3, v0, LVZ0;->d:F

    .line 4
    iget v1, v0, LVZ0;->g:F

    iget v2, v0, LVZ0;->i:F

    sub-float/2addr v2, v1

    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    .line 6
    iput p1, v0, LVZ0;->e:F

    .line 7
    iget-object v1, v0, LVZ0;->a:LWZ0;

    iget v0, v0, LVZ0;->d:F

    check-cast v1, LXZ0;

    invoke-virtual {v1, v0, p1}, LXZ0;->a(FF)V

    return-void
.end method
