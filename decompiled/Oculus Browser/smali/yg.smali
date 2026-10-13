.class public Lyg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lii;


# instance fields
.field public final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldh;LIg;LIg;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lyg;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v2}, Ldh;->a(Z)V

    .line 3
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    move-object v3, v2

    check-cast v3, LAh;

    if-eqz v3, :cond_3

    if-eqz p2, :cond_1

    .line 4
    iget v1, p2, LIg;->a:I

    iget v2, p3, LIg;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p2, LIg;->b:I

    iget v2, p3, LIg;->b:I

    if-eq v1, v2, :cond_1

    .line 5
    :cond_0
    iget v5, p2, LIg;->a:I

    iget v6, p2, LIg;->b:I

    iget v7, p3, LIg;->a:I

    iget v8, p3, LIg;->b:I

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, LAh;->a(Ldh;IIII)Z

    move-result p1

    goto :goto_0

    .line 6
    :cond_1
    check-cast v3, Lkf;

    .line 7
    invoke-virtual {v3, p1}, Lkf;->e(Ldh;)V

    .line 8
    iget-object p2, p1, Ldh;->w:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 9
    iget-object p2, v3, Lkf;->i:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->s()V

    :cond_2
    return-void

    .line 11
    :cond_3
    throw v1

    .line 12
    :cond_4
    throw v1
.end method

.method public b(Ldh;LIg;LIg;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lyg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {v0, p1}, LXg;->b(Ldh;)V

    .line 2
    iget-object v0, p0, Lyg;->a:Landroid/support/v7/widget/RecyclerView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Ldh;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1}, Ldh;->a(Z)V

    .line 5
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    move-object v2, v1

    check-cast v2, LAh;

    if-eqz v2, :cond_5

    .line 6
    iget v4, p2, LIg;->a:I

    .line 7
    iget v5, p2, LIg;->b:I

    .line 8
    iget-object p2, p1, Ldh;->w:Landroid/view/View;

    if-nez p3, :cond_0

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p3, LIg;->a:I

    :goto_0
    move v6, v1

    if-nez p3, :cond_1

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    goto :goto_1

    :cond_1
    iget p3, p3, LIg;->b:I

    :goto_1
    move v7, p3

    .line 11
    invoke-virtual {p1}, Ldh;->i()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v4, v6, :cond_2

    if-eq v5, v7, :cond_3

    .line 12
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v6

    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v7

    .line 14
    invoke-virtual {p2, v6, v7, p3, v1}, Landroid/view/View;->layout(IIII)V

    move-object v3, p1

    .line 15
    invoke-virtual/range {v2 .. v7}, LAh;->a(Ldh;IIII)Z

    move-result p1

    goto :goto_2

    .line 16
    :cond_3
    check-cast v2, Lkf;

    .line 17
    invoke-virtual {v2, p1}, Lkf;->e(Ldh;)V

    .line 18
    iget-object p2, v2, Lkf;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_4

    .line 19
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->s()V

    :cond_4
    return-void

    :cond_5
    const/4 p1, 0x0

    .line 20
    throw p1
.end method
