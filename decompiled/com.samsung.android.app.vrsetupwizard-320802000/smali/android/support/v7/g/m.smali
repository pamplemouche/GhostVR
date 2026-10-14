.class public Landroid/support/v7/g/m;
.super Landroid/support/v7/g/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/g/k;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/g/k;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public a(IIIILandroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget p1, p0, Landroid/support/v7/g/m;->l:I

    and-int/lit8 p1, p1, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroid/support/v7/g/m;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/g/m;->s:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget-object p4, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/support/v7/g/m;->t:I

    add-int/2addr v0, v1

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/m;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object p1, p0, Landroid/support/v7/g/m;->d:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    iget-object p4, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/support/v7/g/m;->c:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/g/m;->c:I

    add-int/2addr v1, v2

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/m;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget p1, p0, Landroid/support/v7/g/m;->l:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/g/m;->e:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    iget p4, p0, Landroid/support/v7/g/m;->c:I

    sub-int/2addr p3, p4

    iget-object p4, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/g/m;->c:I

    add-int/2addr v1, v2

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/m;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget p1, p0, Landroid/support/v7/g/m;->l:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Landroid/support/v7/g/m;->a:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/g/m;->r:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget p4, p0, Landroid/support/v7/g/m;->t:I

    sub-int/2addr p3, p4

    iget-object p4, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/m;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object p1, p0, Landroid/support/v7/g/m;->f:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget p4, p0, Landroid/support/v7/g/m;->c:I

    sub-int/2addr p3, p4

    iget-object p4, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/support/v7/g/m;->c:I

    add-int/2addr p4, v0

    iget-object v0, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/m;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget p1, p0, Landroid/support/v7/g/m;->l:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroid/support/v7/g/m;->g:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget p3, p0, Landroid/support/v7/g/m;->c:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget p4, p0, Landroid/support/v7/g/m;->c:I

    sub-int/2addr p3, p4

    iget-object p4, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/m;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/v7/g/m;->p:I

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/v7/g/m;->p:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/g/m;->q:I

    iget-object v0, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/g/m;->p:I

    iget v2, p0, Landroid/support/v7/g/m;->q:I

    iget v3, p0, Landroid/support/v7/g/m;->p:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/g/m;->q:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget p1, p0, Landroid/support/v7/g/m;->l:I

    and-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/g/m;->a:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/g/m;->s:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/support/v7/g/m;->t:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/m;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object p1, p0, Landroid/support/v7/g/m;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/support/v7/g/m;->c:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/support/v7/g/m;->c:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/m;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget p1, p0, Landroid/support/v7/g/m;->l:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/g/m;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/g/m;->c:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/support/v7/g/m;->c:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/m;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget p1, p0, Landroid/support/v7/g/m;->l:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Landroid/support/v7/g/m;->a:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/support/v7/g/m;->r:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/support/v7/g/m;->t:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/m;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-object p1, p0, Landroid/support/v7/g/m;->f:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/support/v7/g/m;->c:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/support/v7/g/m;->c:I

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/m;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    iget p1, p0, Landroid/support/v7/g/m;->l:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroid/support/v7/g/m;->g:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/support/v7/g/m;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/support/v7/g/m;->c:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/g/m;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Landroid/support/v7/g/m;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    return-void
.end method
