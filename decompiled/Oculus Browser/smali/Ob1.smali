.class public LOb1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:LQb1;

.field public final synthetic b:LRb1;


# direct methods
.method public constructor <init>(LRb1;LQb1;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOb1;->b:LRb1;

    iput-object p2, p0, LOb1;->a:LQb1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1
    iget-object v0, p0, LOb1;->a:LQb1;

    .line 2
    iget v1, v0, LQb1;->e:F

    iput v1, v0, LQb1;->l:F

    .line 3
    iget v1, v0, LQb1;->f:F

    iput v1, v0, LQb1;->m:F

    .line 4
    iget v1, v0, LQb1;->g:F

    iput v1, v0, LQb1;->n:F

    .line 5
    iget v1, v0, LQb1;->k:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, LQb1;->j:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 6
    invoke-virtual {v0, v1}, LQb1;->a(I)V

    .line 7
    iget-object v0, p0, LOb1;->a:LQb1;

    .line 8
    iget v1, v0, LQb1;->f:F

    .line 9
    iput v1, v0, LQb1;->e:F

    .line 10
    invoke-virtual {v0}, LQb1;->a()V

    .line 11
    iget-object v0, p0, LOb1;->b:LRb1;

    .line 12
    iget-boolean v1, v0, LRb1;->G:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, v0, LRb1;->G:Z

    const-wide/16 v2, 0x534

    .line 14
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 15
    iget-object p1, p0, LOb1;->a:LQb1;

    invoke-virtual {p1, v1}, LQb1;->a(Z)V

    goto :goto_0

    .line 16
    :cond_0
    iget p1, v0, LRb1;->D:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    const/high16 v1, 0x40a00000    # 5.0f

    rem-float/2addr p1, v1

    .line 17
    iput p1, v0, LRb1;->D:F

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, LOb1;->b:LRb1;

    const/4 v0, 0x0

    .line 2
    iput v0, p1, LRb1;->D:F

    return-void
.end method
