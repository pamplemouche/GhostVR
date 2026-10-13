.class public abstract LJg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LHg;

.field public b:Ljava/util/ArrayList;

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LJg;->a:LHg;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LJg;->b:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    .line 4
    iput-wide v0, p0, LJg;->c:J

    .line 5
    iput-wide v0, p0, LJg;->d:J

    const-wide/16 v0, 0xfa

    .line 6
    iput-wide v0, p0, LJg;->e:J

    .line 7
    iput-wide v0, p0, LJg;->f:J

    return-void
.end method

.method public static d(Ldh;)I
    .locals 3

    .line 1
    iget v0, p0, Ldh;->F:I

    and-int/lit8 v0, v0, 0xe

    .line 2
    invoke-virtual {p0}, Ldh;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    .line 3
    iget v1, p0, Ldh;->z:I

    .line 4
    invoke-virtual {p0}, Ldh;->c()I

    move-result p0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq p0, v2, :cond_1

    if-eq v1, p0, :cond_1

    or-int/lit16 v0, v0, 0x800

    :cond_1
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 27
    iget-object v0, p0, LJg;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 28
    iget-object v2, p0, LJg;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LGg;

    invoke-interface {v2}, LGg;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, LJg;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final a(Ldh;)V
    .locals 8

    .line 1
    iget-object v0, p0, LJg;->a:LHg;

    if-eqz v0, :cond_6

    .line 2
    check-cast v0, LKg;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p1, v2}, Ldh;->a(Z)V

    .line 4
    iget-object v3, p1, Ldh;->D:Ldh;

    if-eqz v3, :cond_0

    iget-object v3, p1, Ldh;->E:Ldh;

    if-nez v3, :cond_0

    .line 5
    iput-object v1, p1, Ldh;->D:Ldh;

    .line 6
    :cond_0
    iput-object v1, p1, Ldh;->E:Ldh;

    .line 7
    iget v1, p1, Ldh;->F:I

    and-int/lit8 v1, v1, 0x10

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_6

    .line 8
    iget-object v1, v0, LKg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p1, Ldh;->w:Landroid/view/View;

    .line 9
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 10
    iget-object v5, v1, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    .line 11
    iget-object v6, v5, LWe;->a:LVe;

    check-cast v6, Lzg;

    .line 12
    iget-object v6, v6, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 13
    invoke-virtual {v5, v4}, LWe;->d(Landroid/view/View;)Z

    goto :goto_1

    .line 14
    :cond_2
    iget-object v7, v5, LWe;->b:LUe;

    invoke-virtual {v7, v6}, LUe;->c(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 15
    iget-object v7, v5, LWe;->b:LUe;

    invoke-virtual {v7, v6}, LUe;->d(I)Z

    .line 16
    invoke-virtual {v5, v4}, LWe;->d(Landroid/view/View;)Z

    .line 17
    iget-object v5, v5, LWe;->a:LVe;

    check-cast v5, Lzg;

    invoke-virtual {v5, v6}, Lzg;->b(I)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 18
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v4

    .line 19
    iget-object v5, v1, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {v5, v4}, LXg;->b(Ldh;)V

    .line 20
    iget-object v5, v1, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    invoke-virtual {v5, v4}, LXg;->a(Ldh;)V

    :cond_4
    xor-int/lit8 v4, v2, 0x1

    .line 21
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->d(Z)V

    if-nez v2, :cond_6

    .line 22
    invoke-virtual {p1}, Ldh;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 23
    iget-object v0, v0, LKg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v0, p1, v3}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_2

    .line 24
    :cond_5
    throw v1

    :cond_6
    :goto_2
    return-void
.end method

.method public abstract a(Ldh;Ldh;LIg;LIg;)Z
.end method

.method public a(Ldh;Ljava/util/List;)Z
    .locals 0

    .line 25
    move-object p2, p0

    check-cast p2, LAh;

    .line 26
    iget-boolean p2, p2, LAh;->g:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ldh;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public abstract b()V
.end method

.method public abstract b(Ldh;)V
.end method

.method public c(Ldh;)LIg;
    .locals 2

    .line 1
    new-instance v0, LIg;

    invoke-direct {v0}, LIg;-><init>()V

    .line 2
    iget-object p1, p1, Ldh;->w:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, LIg;->a:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, LIg;->b:I

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    return-object v0
.end method

.method public abstract c()Z
.end method
