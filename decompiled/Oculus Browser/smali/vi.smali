.class public abstract Lvi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final A:Ldh;

.field public final B:I

.field public final C:Landroid/animation/ValueAnimator;

.field public D:Z

.field public E:F

.field public F:F

.field public G:Z

.field public H:Z

.field public I:F

.field public final w:F

.field public final x:F

.field public final y:F

.field public final z:F


# direct methods
.method public constructor <init>(Ldh;IIFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lvi;->G:Z

    .line 3
    iput-boolean p2, p0, Lvi;->H:Z

    .line 4
    iput p3, p0, Lvi;->B:I

    .line 5
    iput-object p1, p0, Lvi;->A:Ldh;

    .line 6
    iput p4, p0, Lvi;->w:F

    .line 7
    iput p5, p0, Lvi;->x:F

    .line 8
    iput p6, p0, Lvi;->y:F

    .line 9
    iput p7, p0, Lvi;->z:F

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 10
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lvi;->C:Landroid/animation/ValueAnimator;

    .line 11
    new-instance p3, Lui;

    invoke-direct {p3, p0}, Lui;-><init>(Lvi;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    iget-object p2, p0, Lvi;->C:Landroid/animation/ValueAnimator;

    iget-object p1, p1, Ldh;->w:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lvi;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lvi;->I:F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    iput p1, p0, Lvi;->I:F

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
