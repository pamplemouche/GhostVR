.class final Landroid/support/design/widget/r;
.super Landroid/support/design/widget/SwipeDismissBehavior;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/SwipeDismissBehavior<",
        "Landroid/support/design/widget/v;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/g;


# direct methods
.method constructor <init>(Landroid/support/design/widget/g;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/r;->a:Landroid/support/design/widget/g;

    invoke-direct {p0}, Landroid/support/design/widget/SwipeDismissBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/v;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/support/design/widget/bj;->a()Landroid/support/design/widget/bj;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/r;->a:Landroid/support/design/widget/g;

    iget-object v1, v1, Landroid/support/design/widget/g;->c:Landroid/support/design/widget/bl;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/bj;->d(Landroid/support/design/widget/bl;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/support/design/widget/bj;->a()Landroid/support/design/widget/bj;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/r;->a:Landroid/support/design/widget/g;

    iget-object v1, v1, Landroid/support/design/widget/g;->c:Landroid/support/design/widget/bl;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/bj;->c(Landroid/support/design/widget/bl;)V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/SwipeDismissBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/View;)Z
    .locals 0

    instance-of p1, p1, Landroid/support/design/widget/v;

    return p1
.end method

.method public synthetic b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    check-cast p2, Landroid/support/design/widget/v;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/r;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/v;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
