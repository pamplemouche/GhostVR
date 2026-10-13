.class public LuA;
.super LYx;
.source "PG"


# direct methods
.method public constructor <init>(LQx;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LYx;-><init>(LQx;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, LNI;

    .line 2
    invoke-virtual {p1}, LNI;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, LNI;->j()LDI;

    move-result-object v0

    .line 4
    sget-object v2, LkA;->a:LWx;

    sget-object v3, LlA;->a:LXx;

    .line 5
    invoke-virtual {p0, v0, v1, v2, v3}, LYx;->a(LTF;LFF;LWx;LXx;)LFF;

    move-result-object v1

    check-cast v1, LBI;

    .line 6
    sget-object v2, LmA;->a:LWx;

    sget-object v3, LnA;->a:LXx;

    .line 7
    invoke-virtual {p0, v0, v1, v2, v3}, LYx;->a(LTF;LFF;LWx;LXx;)LFF;

    move-result-object v0

    check-cast v0, LBI;

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LLI;

    invoke-virtual {p1, v0}, LLI;->a(LBI;)LLI;

    invoke-virtual {p1}, LFF;->e()LTF;

    move-result-object p1

    check-cast p1, LNI;

    goto/16 :goto_2

    .line 9
    :cond_0
    invoke-virtual {p1}, LNI;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, LNI;->k()LXI;

    move-result-object v0

    .line 11
    sget-object v2, LoA;->a:LWx;

    sget-object v3, LpA;->a:LXx;

    .line 12
    invoke-virtual {p0, v0, v1, v2, v3}, LYx;->a(LTF;LFF;LWx;LXx;)LFF;

    move-result-object v0

    check-cast v0, LVI;

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LLI;

    .line 14
    invoke-virtual {p1}, LFF;->g()V

    .line 15
    iget-object v2, p1, LFF;->x:LTF;

    check-cast v2, LNI;

    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {v0}, LFF;->e()LTF;

    move-result-object v0

    iput-object v0, v2, LNI;->B:Ljava/lang/Object;

    const/4 v0, 0x4

    .line 17
    iput v0, v2, LNI;->A:I

    .line 18
    invoke-virtual {p1}, LFF;->e()LTF;

    move-result-object p1

    check-cast p1, LNI;

    goto :goto_2

    .line 19
    :cond_1
    throw v1

    .line 20
    :cond_2
    iget v0, p1, LNI;->A:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 21
    iget v0, p1, LNI;->A:I

    if-ne v0, v2, :cond_4

    .line 22
    iget-object v0, p1, LNI;->B:Ljava/lang/Object;

    check-cast v0, LeJ;

    goto :goto_1

    .line 23
    :cond_4
    sget-object v0, LeJ;->D:LeJ;

    .line 24
    :goto_1
    sget-object v3, LqA;->a:LWx;

    sget-object v4, LrA;->a:LXx;

    .line 25
    invoke-virtual {p0, v0, v1, v3, v4}, LYx;->a(LTF;LFF;LWx;LXx;)LFF;

    move-result-object v3

    check-cast v3, LdJ;

    .line 26
    sget-object v4, LsA;->a:LWx;

    sget-object v5, LtA;->a:LXx;

    .line 27
    invoke-virtual {p0, v0, v3, v4, v5}, LYx;->a(LTF;LFF;LWx;LXx;)LFF;

    move-result-object v0

    check-cast v0, LdJ;

    if-eqz v0, :cond_6

    .line 28
    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LLI;

    .line 29
    invoke-virtual {p1}, LFF;->g()V

    .line 30
    iget-object v3, p1, LFF;->x:LTF;

    check-cast v3, LNI;

    if-eqz v3, :cond_5

    .line 31
    invoke-virtual {v0}, LFF;->e()LTF;

    move-result-object v0

    iput-object v0, v3, LNI;->B:Ljava/lang/Object;

    .line 32
    iput v2, v3, LNI;->A:I

    .line 33
    invoke-virtual {p1}, LFF;->e()LTF;

    move-result-object p1

    check-cast p1, LNI;

    goto :goto_2

    .line 34
    :cond_5
    throw v1

    :cond_6
    :goto_2
    return-object p1
.end method
