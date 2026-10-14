.class Landroid/support/v7/widget/ei;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ah;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v7/widget/ft;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->a(IZ)Landroid/support/v7/widget/ft;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bp;

    iget-object v2, p1, Landroid/support/v7/widget/ft;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bp;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    iget-object p1, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, p1, Landroid/support/v7/widget/RecyclerView;->C:Z

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/fq;

    iget v0, p1, Landroid/support/v7/widget/fq;->b:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/support/v7/widget/fq;->b:I

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(IILjava/lang/Object;)V

    iget-object p1, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->D:Z

    return-void
.end method

.method public a(Landroid/support/v7/widget/ai;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ei;->c(Landroid/support/v7/widget/ai;)V

    return-void
.end method

.method public b(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    iget-object p1, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->C:Z

    return-void
.end method

.method public b(Landroid/support/v7/widget/ai;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ei;->c(Landroid/support/v7/widget/ai;)V

    return-void
.end method

.method public c(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->g(II)V

    iget-object p1, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->C:Z

    return-void
.end method

.method c(Landroid/support/v7/widget/ai;)V
    .locals 4

    iget v0, p1, Landroid/support/v7/widget/ai;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    iget-object v2, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    iget v3, p1, Landroid/support/v7/widget/ai;->b:I

    iget p1, p1, Landroid/support/v7/widget/ai;->d:I

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/support/v7/widget/et;->a(Landroid/support/v7/widget/RecyclerView;III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    iget-object v1, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/ai;->b:I

    iget v3, p1, Landroid/support/v7/widget/ai;->d:I

    iget-object p1, p1, Landroid/support/v7/widget/ai;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/support/v7/widget/et;->a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    iget-object v1, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/ai;->b:I

    iget p1, p1, Landroid/support/v7/widget/ai;->d:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v7/widget/et;->b(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/et;

    iget-object v1, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/ai;->b:I

    iget p1, p1, Landroid/support/v7/widget/ai;->d:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v7/widget/et;->a(Landroid/support/v7/widget/RecyclerView;II)V

    :goto_0
    return-void
.end method

.method public d(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->f(II)V

    iget-object p1, p0, Landroid/support/v7/widget/ei;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView;->C:Z

    return-void
.end method
