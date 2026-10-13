.class public abstract LAh;
.super LJg;
.source "PG"


# instance fields
.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LJg;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LAh;->g:Z

    return-void
.end method


# virtual methods
.method public abstract a(Ldh;IIII)Z
.end method

.method public a(Ldh;Ldh;LIg;LIg;)Z
    .locals 9

    .line 1
    iget v3, p3, LIg;->a:I

    .line 2
    iget v4, p3, LIg;->b:I

    .line 3
    invoke-virtual {p2}, Ldh;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget p4, p3, LIg;->a:I

    .line 5
    iget p3, p3, LIg;->b:I

    move v6, p3

    move v5, p4

    goto :goto_0

    .line 6
    :cond_0
    iget p3, p4, LIg;->a:I

    .line 7
    iget p4, p4, LIg;->b:I

    move v5, p3

    move v6, p4

    .line 8
    :goto_0
    move-object v0, p0

    check-cast v0, Lkf;

    if-ne p1, p2, :cond_1

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 9
    invoke-virtual/range {v0 .. v5}, Lkf;->a(Ldh;IIII)Z

    move-result p1

    goto :goto_1

    .line 10
    :cond_1
    iget-object p3, p1, Ldh;->w:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result p3

    .line 11
    iget-object p4, p1, Ldh;->w:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getTranslationY()F

    move-result p4

    .line 12
    iget-object v1, p1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    .line 13
    invoke-virtual {v0, p1}, Lkf;->e(Ldh;)V

    sub-int v2, v5, v3

    int-to-float v2, v2

    sub-float/2addr v2, p3

    float-to-int v2, v2

    sub-int v7, v6, v4

    int-to-float v7, v7

    sub-float/2addr v7, p4

    float-to-int v7, v7

    .line 14
    iget-object v8, p1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v8, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 15
    iget-object p3, p1, Ldh;->w:Landroid/view/View;

    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationY(F)V

    .line 16
    iget-object p3, p1, Ldh;->w:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 17
    invoke-virtual {v0, p2}, Lkf;->e(Ldh;)V

    .line 18
    iget-object p3, p2, Ldh;->w:Landroid/view/View;

    neg-int p4, v2

    int-to-float p4, p4

    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 19
    iget-object p3, p2, Ldh;->w:Landroid/view/View;

    neg-int p4, v7

    int-to-float p4, p4

    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationY(F)V

    .line 20
    iget-object p3, p2, Ldh;->w:Landroid/view/View;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/view/View;->setAlpha(F)V

    .line 21
    iget-object p3, v0, Lkf;->k:Ljava/util/ArrayList;

    new-instance p4, Lif;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lif;-><init>(Ldh;Ldh;IIII)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_1
    return p1
.end method
