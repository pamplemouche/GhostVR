.class public final Leq0;
.super LFF;
.source "PG"

# interfaces
.implements Lgq0;


# direct methods
.method public synthetic constructor <init>(Laq0;)V
    .locals 0

    .line 1
    sget-object p1, Lfq0;->G:Lfq0;

    .line 2
    invoke-direct {p0, p1}, LFF;-><init>(LTF;)V

    return-void
.end method


# virtual methods
.method public a(Lhq0;)Leq0;
    .locals 2

    .line 7
    invoke-virtual {p0}, LFF;->g()V

    .line 8
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, Lfq0;

    if-eqz p1, :cond_0

    .line 9
    iget v1, v0, Lfq0;->z:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lfq0;->z:I

    .line 10
    iget p1, p1, Lhq0;->w:I

    .line 11
    iput p1, v0, Lfq0;->B:I

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public a(Liq0;)Leq0;
    .locals 2

    .line 1
    invoke-virtual {p0}, LFF;->g()V

    .line 2
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, Lfq0;

    if-eqz p1, :cond_0

    .line 3
    iget v1, v0, Lfq0;->z:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lfq0;->z:I

    .line 4
    iget p1, p1, Liq0;->w:I

    .line 5
    iput p1, v0, Lfq0;->A:I

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public a(Lsq0;)Leq0;
    .locals 3

    .line 13
    invoke-virtual {p0}, LFF;->g()V

    .line 14
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, Lfq0;

    if-eqz p1, :cond_1

    .line 15
    iget-object v1, v0, Lfq0;->F:LbG;

    move-object v2, v1

    check-cast v2, LhF;

    .line 16
    iget-boolean v2, v2, LhF;->w:Z

    if-nez v2, :cond_0

    .line 17
    invoke-static {v1}, LTF;->a(LbG;)LbG;

    move-result-object v1

    iput-object v1, v0, Lfq0;->F:LbG;

    .line 18
    :cond_0
    iget-object v0, v0, Lfq0;->F:LbG;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    const/4 p1, 0x0

    .line 19
    throw p1
.end method
