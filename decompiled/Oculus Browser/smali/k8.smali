.class public Lk8;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic w:Ll8;

.field public final synthetic x:Lm8;


# direct methods
.method public constructor <init>(Lm8;Ll8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk8;->x:Lm8;

    iput-object p2, p0, Lk8;->w:Ll8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lk8;->x:Lm8;

    iget-object v1, p0, Lk8;->w:Ll8;

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v1, v2}, Lm8;->a(FLl8;Z)V

    .line 2
    iget-object v0, p0, Lk8;->w:Ll8;

    .line 3
    iget v1, v0, Ll8;->e:F

    iput v1, v0, Ll8;->k:F

    .line 4
    iget v1, v0, Ll8;->f:F

    iput v1, v0, Ll8;->l:F

    .line 5
    iget v1, v0, Ll8;->g:F

    iput v1, v0, Ll8;->m:F

    .line 6
    iget v1, v0, Ll8;->j:I

    add-int/2addr v1, v2

    iget-object v2, v0, Ll8;->i:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 7
    invoke-virtual {v0, v1}, Ll8;->a(I)V

    .line 8
    iget-object v0, p0, Lk8;->x:Lm8;

    iget-boolean v1, v0, Lm8;->B:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lm8;->B:Z

    .line 10
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-wide/16 v2, 0x534

    .line 11
    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 12
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 13
    iget-object p1, p0, Lk8;->w:Ll8;

    .line 14
    iget-boolean v0, p1, Ll8;->n:Z

    if-eqz v0, :cond_1

    .line 15
    iput-boolean v1, p1, Ll8;->n:Z

    goto :goto_0

    .line 16
    :cond_0
    iget p1, v0, Lm8;->A:F

    add-float/2addr p1, v3

    iput p1, v0, Lm8;->A:F

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lk8;->x:Lm8;

    const/4 v0, 0x0

    iput v0, p1, Lm8;->A:F

    return-void
.end method
