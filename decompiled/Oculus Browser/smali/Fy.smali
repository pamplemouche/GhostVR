.class public final LFy;
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
    .locals 6

    .line 1
    invoke-virtual {p2}, LyI;->h()LNI;

    move-result-object p3

    invoke-virtual {p3}, LNI;->j()LDI;

    move-result-object p3

    invoke-virtual {p3}, LTF;->c()LFF;

    move-result-object p3

    check-cast p3, LBI;

    .line 2
    invoke-virtual {p1}, LpQ;->j()LyQ;

    move-result-object v0

    invoke-virtual {v0}, LyQ;->n()LxQ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    const/4 v5, 0x5

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    if-eq v0, v1, :cond_0

    if-eq v0, v5, :cond_5

    new-array p3, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1}, LpQ;->j()LyQ;

    move-result-object p1

    invoke-virtual {p1}, LyQ;->n()LxQ;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "FeatureDataOperationTra"

    const-string v0, "Unknown Feature payload %s, ignored"

    .line 4
    invoke-static {p1, v0, p3}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 5
    :cond_0
    invoke-virtual {p1}, LpQ;->j()LyQ;

    move-result-object p1

    sget-object v0, LqP;->B:LOF;

    invoke-virtual {p1, v0}, LLF;->a(LyF;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LqP;

    .line 6
    invoke-virtual {p3}, LFF;->g()V

    .line 7
    iget-object v0, p3, LFF;->x:LTF;

    check-cast v0, LDI;

    if-eqz p1, :cond_1

    .line 8
    iput-object p1, v0, LDI;->B:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 9
    iput p1, v0, LDI;->A:I

    goto :goto_0

    .line 10
    :cond_1
    throw v3

    .line 11
    :cond_2
    invoke-virtual {p1}, LpQ;->j()LyQ;

    move-result-object p1

    sget-object v0, LnP;->D:LOF;

    invoke-virtual {p1, v0}, LLF;->a(LyF;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LnP;

    .line 12
    invoke-virtual {p3}, LFF;->g()V

    .line 13
    iget-object v0, p3, LFF;->x:LTF;

    check-cast v0, LDI;

    if-eqz p1, :cond_3

    .line 14
    iput-object p1, v0, LDI;->B:Ljava/lang/Object;

    .line 15
    iput v5, v0, LDI;->A:I

    goto :goto_0

    .line 16
    :cond_3
    throw v3

    .line 17
    :cond_4
    invoke-virtual {p1}, LpQ;->j()LyQ;

    move-result-object p1

    sget-object v0, LGP;->B:LOF;

    invoke-virtual {p1, v0}, LLF;->a(LyF;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LGP;

    .line 18
    invoke-virtual {p3}, LFF;->g()V

    .line 19
    iget-object v0, p3, LFF;->x:LTF;

    check-cast v0, LDI;

    if-eqz p1, :cond_6

    .line 20
    iput-object p1, v0, LDI;->B:Ljava/lang/Object;

    .line 21
    iput v1, v0, LDI;->A:I

    .line 22
    :cond_5
    :goto_0
    invoke-virtual {p2}, LyI;->h()LNI;

    move-result-object p1

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LLI;

    invoke-virtual {p1, p3}, LLI;->a(LBI;)LLI;

    .line 23
    invoke-virtual {p2, p1}, LyI;->a(LLI;)LyI;

    return-object p2

    .line 24
    :cond_6
    throw v3
.end method
