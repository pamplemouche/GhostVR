.class public final LyI;
.super LFF;
.source "PG"

# interfaces
.implements LAI;


# direct methods
.method public synthetic constructor <init>(LrI;)V
    .locals 0

    .line 1
    sget-object p1, LzI;->D:LzI;

    .line 2
    invoke-direct {p0, p1}, LFF;-><init>(LTF;)V

    return-void
.end method


# virtual methods
.method public a(LLI;)LyI;
    .locals 1

    .line 6
    invoke-virtual {p0}, LFF;->g()V

    .line 7
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, LzI;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, LFF;->e()LTF;

    move-result-object p1

    check-cast p1, LNI;

    iput-object p1, v0, LzI;->B:LNI;

    .line 9
    iget p1, v0, LzI;->z:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, LzI;->z:I

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public a(LZI;)LyI;
    .locals 1

    .line 1
    invoke-virtual {p0}, LFF;->g()V

    .line 2
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, LzI;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, LFF;->e()LTF;

    move-result-object p1

    check-cast p1, LbJ;

    iput-object p1, v0, LzI;->A:LbJ;

    .line 4
    iget p1, v0, LzI;->z:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, LzI;->z:I

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public h()LNI;
    .locals 1

    .line 1
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, LzI;

    invoke-virtual {v0}, LzI;->j()LNI;

    move-result-object v0

    return-object v0
.end method
