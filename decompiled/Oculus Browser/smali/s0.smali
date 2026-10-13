.class public Ls0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic A:Lu0;

.field public final synthetic w:I

.field public final synthetic x:I

.field public final synthetic y:I

.field public final synthetic z:I


# direct methods
.method public constructor <init>(Lu0;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls0;->A:Lu0;

    iput p2, p0, Ls0;->w:I

    iput p3, p0, Ls0;->x:I

    iput p4, p0, Ls0;->y:I

    iput p5, p0, Ls0;->z:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2
    iget-object v0, p0, Ls0;->A:Lu0;

    iget v1, p0, Ls0;->w:I

    iget v2, p0, Ls0;->x:I

    .line 3
    invoke-static {v1, v2, p1}, LJ;->a(IIF)I

    move-result v1

    iget v2, p0, Ls0;->y:I

    iget v3, p0, Ls0;->z:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    mul-float p1, p1, v3

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, v2

    .line 5
    iget v2, v0, Lu0;->C:I

    if-ne v1, v2, :cond_0

    iget v2, v0, Lu0;->D:I

    if-eq p1, v2, :cond_1

    .line 6
    :cond_0
    iput v1, v0, Lu0;->C:I

    .line 7
    iput p1, v0, Lu0;->D:I

    .line 8
    invoke-static {v0}, LA7;->w(Landroid/view/View;)V

    :cond_1
    return-void
.end method
