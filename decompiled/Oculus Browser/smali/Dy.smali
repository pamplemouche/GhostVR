.class public final LDy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LEy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LpQ;LyI;LnR;)LyI;
    .locals 9

    .line 1
    invoke-virtual {p1}, LpQ;->j()LyQ;

    move-result-object v0

    invoke-virtual {v0}, LyQ;->n()LxQ;

    move-result-object v0

    sget-object v1, LxQ;->A:LxQ;

    if-eq v0, v1, :cond_0

    return-object p2

    .line 2
    :cond_0
    invoke-virtual {p1}, LpQ;->j()LyQ;

    move-result-object p1

    sget-object v0, LuP;->I:LOF;

    invoke-virtual {p1, v0}, LLF;->a(LyF;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LuP;

    .line 3
    invoke-virtual {p2}, LyI;->h()LNI;

    move-result-object v0

    invoke-virtual {v0}, LNI;->j()LDI;

    move-result-object v0

    invoke-virtual {v0}, LTF;->c()LFF;

    move-result-object v0

    check-cast v0, LBI;

    .line 4
    invoke-virtual {v0}, LFF;->g()V

    .line 5
    iget-object v1, v0, LFF;->x:LTF;

    check-cast v1, LDI;

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 6
    iput-object p1, v1, LDI;->B:Ljava/lang/Object;

    const/4 v3, 0x6

    .line 7
    iput v3, v1, LDI;->A:I

    .line 8
    invoke-virtual {p3}, LnR;->j()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p2}, LyI;->h()LNI;

    move-result-object p1

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LLI;

    invoke-virtual {p1, v0}, LLI;->a(LBI;)LLI;

    .line 10
    invoke-virtual {p2, p1}, LyI;->a(LLI;)LyI;

    return-object p2

    .line 11
    :cond_1
    invoke-virtual {p1}, LuP;->m()LkP;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, LTF;->c()LFF;

    move-result-object v1

    check-cast v1, LjP;

    sget-object v4, LtI;->D:LOF;

    .line 13
    sget-object v5, LtI;->B:LtI;

    invoke-virtual {v5}, LTF;->c()LFF;

    move-result-object v5

    check-cast v5, LsI;

    .line 14
    iget-wide v6, p3, LnR;->A:J

    .line 15
    invoke-virtual {v5}, LFF;->g()V

    .line 16
    iget-object p3, v5, LFF;->x:LTF;

    check-cast p3, LtI;

    .line 17
    iget v8, p3, LtI;->z:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p3, LtI;->z:I

    .line 18
    iput-wide v6, p3, LtI;->A:J

    .line 19
    invoke-virtual {v5}, LFF;->e()LTF;

    move-result-object p3

    check-cast p3, LtI;

    .line 20
    invoke-virtual {v1, v4, p3}, LJF;->a(LyF;Ljava/lang/Object;)LJF;

    check-cast v1, LjP;

    .line 21
    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LsP;

    .line 22
    invoke-virtual {p1}, LJF;->g()V

    .line 23
    iget-object p3, p1, LFF;->x:LTF;

    check-cast p3, LuP;

    if-eqz p3, :cond_3

    .line 24
    invoke-virtual {v1}, LFF;->e()LTF;

    move-result-object v1

    check-cast v1, LkP;

    iput-object v1, p3, LuP;->C:LkP;

    .line 25
    iget v1, p3, LuP;->A:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p3, LuP;->A:I

    .line 26
    invoke-virtual {v0}, LFF;->g()V

    .line 27
    iget-object p3, v0, LFF;->x:LTF;

    check-cast p3, LDI;

    if-eqz p3, :cond_2

    .line 28
    invoke-virtual {p1}, LFF;->e()LTF;

    move-result-object p1

    iput-object p1, p3, LDI;->B:Ljava/lang/Object;

    .line 29
    iput v3, p3, LDI;->A:I

    .line 30
    invoke-virtual {p2}, LyI;->h()LNI;

    move-result-object p1

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LLI;

    invoke-virtual {p1, v0}, LLI;->a(LBI;)LLI;

    .line 31
    invoke-virtual {p2, p1}, LyI;->a(LLI;)LyI;

    return-object p2

    .line 32
    :cond_2
    throw v2

    .line 33
    :cond_3
    throw v2

    .line 34
    :cond_4
    throw v2
.end method
