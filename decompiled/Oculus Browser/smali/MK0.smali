.class public LMK0;
.super LOe1;
.source "PG"


# instance fields
.field public final C:[I

.field public final D:Landroid/graphics/Rect;

.field public final E:Landroid/graphics/Rect;

.field public final F:Landroid/view/View;

.field public G:LJK0;

.field public H:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, LOe1;-><init>(Landroid/view/View;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, LMK0;->C:[I

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LMK0;->D:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LMK0;->E:Landroid/graphics/Rect;

    .line 5
    iput-object p1, p0, LMK0;->F:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, LMK0;->F:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, LMK0;->F:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5
    iget-object p1, p0, LMK0;->F:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v0, p0, LMK0;->F:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p2, v2, v2, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    iget-object p1, p0, LMK0;->G:LJK0;

    check-cast p1, LfL0;

    .line 7
    iget-object p1, p1, LfL0;->a:LQK0;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, LQK0;->g(Z)V

    return-void
.end method

.method public d()J
    .locals 11

    .line 1
    iget-object v0, p0, LMK0;->G:LJK0;

    iget-object v1, p0, LMK0;->F:Landroid/view/View;

    iget-object v2, p0, LMK0;->C:[I

    check-cast v0, LfL0;

    .line 2
    iget-object v0, v0, LfL0;->a:LQK0;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v1, v0, v2}, LGO0;->a(Landroid/view/View;Landroid/view/View;[I)V

    .line 4
    iget-object v0, p0, LMK0;->E:Landroid/graphics/Rect;

    iget-object v1, p0, LMK0;->C:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    iget-object v5, p0, LMK0;->F:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, LMK0;->C:[I

    aget v6, v6, v4

    iget-object v7, p0, LMK0;->G:LJK0;

    .line 5
    check-cast v7, LfL0;

    .line 6
    iget-object v7, v7, LfL0;->a:LQK0;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 7
    invoke-virtual {v0, v3, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    iget-object v0, p0, LMK0;->G:LJK0;

    iget-object v1, p0, LMK0;->D:Landroid/graphics/Rect;

    check-cast v0, LfL0;

    .line 9
    iget-object v0, v0, LfL0;->a:LQK0;

    invoke-virtual {v0, v1}, LQK0;->a(Landroid/graphics/Rect;)V

    .line 10
    iget-object v0, p0, LMK0;->D:Landroid/graphics/Rect;

    iget-object v1, p0, LMK0;->C:[I

    aget v2, v1, v2

    aget v1, v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 11
    iget-object v0, p0, LMK0;->F:Landroid/view/View;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, LMK0;->G:LJK0;

    check-cast v1, LfL0;

    .line 13
    iget-object v1, v1, LfL0;->a:LQK0;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 14
    iget v1, p0, LMK0;->H:I

    sub-int v10, v0, v1

    .line 15
    iget-object v0, p0, LMK0;->E:Landroid/graphics/Rect;

    iget-object v1, p0, LMK0;->D:Landroid/graphics/Rect;

    .line 16
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    .line 17
    invoke-static/range {v2 .. v10}, LJ/N;->MLbFZktb(IIIIIIIII)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    .line 18
    throw v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, LMK0;->G:LJK0;

    if-eqz v0, :cond_0

    check-cast v0, LfL0;

    .line 2
    iget-object v0, v0, LfL0;->a:LQK0;

    invoke-virtual {v0}, LQK0;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0}, LOe1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, LMK0;->G:LJK0;

    check-cast v0, LfL0;

    .line 2
    iget-object v0, v0, LfL0;->a:LQK0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LQK0;->g(Z)V

    .line 3
    iget-object v0, p0, LMK0;->G:LJK0;

    check-cast v0, LfL0;

    .line 4
    iget-object v0, v0, LfL0;->a:LQK0;

    invoke-virtual {v0, v1}, LQK0;->f(Z)Z

    return-void
.end method
