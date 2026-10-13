.class public LC40;
.super LTd1;
.source "PG"


# direct methods
.method public constructor <init>(LD40;LQd1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, LTd1;-><init>(LQd1;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, LTd1;->w:LQd1;

    .line 2
    iget-object v0, v0, LLd1;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, LPd1;

    iget v0, v0, LPd1;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, LTd1;->w:LQd1;

    .line 5
    iget-object v0, v0, LLd1;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, LPd1;

    iget v0, v0, LPd1;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, LTd1;->w:LQd1;

    .line 8
    iget-object v0, v0, LLd1;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, LPd1;

    iget-object p1, p1, LPd1;->b:Lle1;

    sget-object v0, LJ40;->b:Lje1;

    .line 10
    invoke-virtual {p1, v0}, Lle1;->a(Lee1;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, LTd1;->w:LQd1;

    .line 2
    iget-object v0, v0, LLd1;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, LPd1;

    iget v0, v0, LPd1;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, LTd1;->w:LQd1;

    .line 5
    iget-object v0, v0, LLd1;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, LPd1;

    iget p1, p1, LPd1;->a:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

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
