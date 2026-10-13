.class public Le2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"

# interfaces
.implements LD1;


# instance fields
.field public A:Z

.field public B:Z

.field public final w:Landroid/view/View;

.field public final x:I

.field public final y:Landroid/view/ViewGroup;

.field public final z:Z


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le2;->B:Z

    .line 3
    iput-object p1, p0, Le2;->w:Landroid/view/View;

    .line 4
    iput p2, p0, Le2;->x:I

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Le2;->y:Landroid/view/ViewGroup;

    .line 6
    iput-boolean p3, p0, Le2;->z:Z

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Le2;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Le2;->B:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le2;->w:Landroid/view/View;

    iget v1, p0, Le2;->x:I

    invoke-static {v0, v1}, LY1;->a(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Le2;->y:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Le2;->a(Z)V

    return-void
.end method

.method public a(LE1;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Le2;->a(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 7
    iget-boolean v0, p0, Le2;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le2;->A:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Le2;->y:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 8
    iput-boolean p1, p0, Le2;->A:Z

    .line 9
    invoke-static {v0, p1}, LS1;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public b(LE1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le2;->a()V

    .line 2
    invoke-virtual {p1, p0}, LE1;->b(LD1;)LE1;

    return-void
.end method

.method public c(LE1;)V
    .locals 0

    return-void
.end method

.method public d(LE1;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Le2;->a(Z)V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Le2;->B:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le2;->a()V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Le2;->B:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le2;->w:Landroid/view/View;

    iget v0, p0, Le2;->x:I

    invoke-static {p1, v0}, LY1;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Le2;->B:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le2;->w:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LY1;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
