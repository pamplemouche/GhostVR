.class public LwK0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic w:LzK0;


# direct methods
.method public constructor <init>(LzK0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LwK0;->w:LzK0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    iget-object v0, p0, LwK0;->w:LzK0;

    .line 2
    iget-object v0, v0, LzK0;->f:LyK0;

    .line 3
    check-cast v0, LgL0;

    invoke-virtual {v0}, LgL0;->a()LB8;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, LwK0;->w:LzK0;

    .line 5
    invoke-virtual {v3}, LzK0;->a()I

    move-result v3

    int-to-float v3, v3

    .line 6
    iget-object v4, p0, LwK0;->w:LzK0;

    .line 7
    iget v4, v4, LzK0;->d:F

    sub-float/2addr v3, v4

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 9
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    :cond_0
    return-void
.end method
