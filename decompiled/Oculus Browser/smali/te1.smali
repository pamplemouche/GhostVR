.class public Lte1;
.super LBg;
.source "PG"

# interfaces
.implements LMd1;


# instance fields
.field public final y:Lre1;

.field public final z:Lse1;


# direct methods
.method public constructor <init>(Lre1;Lse1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LBg;-><init>()V

    .line 2
    iput-object p1, p0, Lte1;->y:Lre1;

    .line 3
    iput-object p2, p0, Lte1;->z:Lse1;

    .line 4
    check-cast p1, LOd1;

    .line 5
    iget-object p1, p1, LOd1;->w:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lte1;->y:Lre1;

    check-cast v0, LAe1;

    .line 2
    iget-object v0, v0, LAe1;->x:Lue1;

    check-cast v0, LLd1;

    invoke-virtual {v0}, LLd1;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ldh;
    .locals 2

    .line 3
    iget-object v0, p0, Lte1;->z:Lse1;

    check-cast v0, LyL0;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, LEL0;

    const p2, 0x7f0e01cd

    sget-object v0, LBL0;->a:Lne1;

    invoke-direct {v1, p1, p2, v0}, LEL0;-><init>(Landroid/view/ViewGroup;ILne1;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, LEL0;

    const p2, 0x7f0e01cc

    sget-object v0, LAL0;->a:Lne1;

    invoke-direct {v1, p1, p2, v0}, LEL0;-><init>(Landroid/view/ViewGroup;ILne1;)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance v1, LEL0;

    const p2, 0x7f0e01ce

    sget-object v0, LzL0;->a:Lne1;

    invoke-direct {v1, p1, p2, v0}, LEL0;-><init>(Landroid/view/ViewGroup;ILne1;)V

    :goto_0
    return-object v1

    .line 7
    :cond_3
    throw v1
.end method

.method public a(LNd1;II)V
    .locals 0

    .line 15
    iget-object p1, p0, LBg;->w:LCg;

    invoke-virtual {p1, p2, p3}, LCg;->c(II)V

    return-void
.end method

.method public a(Ldh;)V
    .locals 0

    .line 13
    iget-object p1, p0, Lte1;->y:Lre1;

    check-cast p1, LAe1;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 14
    throw p1
.end method

.method public a(Ldh;I)V
    .locals 2

    .line 8
    iget-object v0, p0, Lte1;->y:Lre1;

    check-cast v0, LAe1;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, LAe1;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ldh;ILjava/util/List;)V
    .locals 2

    .line 9
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object p3, p0, Lte1;->y:Lre1;

    check-cast p3, LAe1;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, LAe1;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    .line 11
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lte1;->y:Lre1;

    check-cast v1, LAe1;

    invoke-virtual {v1, p1, p2, v0}, LAe1;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lte1;->y:Lre1;

    check-cast v0, LAe1;

    .line 2
    iget-object v1, v0, LAe1;->y:Lye1;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, LAe1;->x:Lue1;

    check-cast v0, LLd1;

    .line 4
    iget-object v0, v0, LLd1;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast v1, LwL0;

    .line 6
    check-cast p1, LPd1;

    invoke-static {p1}, LsL0;->a(LPd1;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public b(LNd1;II)V
    .locals 0

    .line 7
    iget-object p1, p0, LBg;->w:LCg;

    invoke-virtual {p1, p2, p3}, LCg;->b(II)V

    return-void
.end method
