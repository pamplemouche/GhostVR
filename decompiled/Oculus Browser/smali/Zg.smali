.class public LZg;
.super LDg;
.source "PG"


# instance fields
.field public final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, LDg;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, LZg;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, LZg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lbh;->f:Z

    .line 3
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->b(Z)V

    .line 4
    iget-object v0, p0, LZg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    invoke-virtual {v0}, Lme;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, LZg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 5

    .line 13
    iget-object v0, p0, LZg;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, LZg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p2, v3, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object v4, v0, Lme;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p1, p2, v1}, Lme;->a(IIILjava/lang/Object;)Lle;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget p1, v0, Lme;->g:I

    or-int/2addr p1, v3

    iput p1, v0, Lme;->g:I

    .line 17
    iget-object p1, v0, Lme;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {p0}, LZg;->b()V

    :cond_2
    return-void

    .line 19
    :cond_3
    throw v1
.end method

.method public a(III)V
    .locals 5

    .line 20
    iget-object v0, p0, LZg;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, LZg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne p3, v3, :cond_3

    .line 22
    iget-object p3, v0, Lme;->b:Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-virtual {v0, v4, p1, p2, v1}, Lme;->a(IIILjava/lang/Object;)Lle;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget p1, v0, Lme;->g:I

    or-int/2addr p1, v4

    iput p1, v0, Lme;->g:I

    .line 24
    iget-object p1, v0, Lme;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 25
    invoke-virtual {p0}, LZg;->b()V

    :cond_2
    return-void

    .line 26
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Moving more than 1 item is not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_4
    throw v1
.end method

.method public a(IILjava/lang/Object;)V
    .locals 5

    .line 6
    iget-object v0, p0, LZg;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, LZg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p2, v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v3, v0, Lme;->b:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p1, p2, p3}, Lme;->a(IIILjava/lang/Object;)Lle;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget p1, v0, Lme;->g:I

    or-int/2addr p1, v4

    iput p1, v0, Lme;->g:I

    .line 10
    iget-object p1, v0, Lme;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p0}, LZg;->b()V

    :cond_2
    return-void

    .line 12
    :cond_3
    throw v1
.end method

.method public b()V
    .locals 2

    .line 8
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->X0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LZg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->O:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->N:Z

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->D:Ljava/lang/Runnable;

    invoke-static {v0, v1}, LA7;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, LZg;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->W:Z

    .line 11
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :goto_0
    return-void
.end method

.method public b(II)V
    .locals 6

    .line 1
    iget-object v0, p0, LZg;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, LZg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->z:Lme;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p2, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v4, v0, Lme;->b:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {v0, v5, p1, p2, v1}, Lme;->a(IIILjava/lang/Object;)Lle;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget p1, v0, Lme;->g:I

    or-int/2addr p1, v5

    iput p1, v0, Lme;->g:I

    .line 5
    iget-object p1, v0, Lme;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p0}, LZg;->b()V

    :cond_2
    return-void

    .line 7
    :cond_3
    throw v1
.end method
