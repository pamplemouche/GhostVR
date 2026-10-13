.class public final LeX;
.super LD61;
.source "PG"


# direct methods
.method public constructor <init>(Lj71;LLW;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LD61;-><init>(Lj71;LE61;)V

    return-void
.end method


# virtual methods
.method public a(LH61;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, LH61;->a()LR61;

    move-result-object p1

    .line 2
    iget-object v1, p1, LR61;->d:LI61;

    .line 3
    invoke-virtual {v1, v0}, LI61;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 4
    :cond_0
    iget v1, v1, LI61;->b:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LQW;->a(LH61;)LQW;

    .line 6
    iget-object p1, p0, LD61;->x:LE61;

    .line 7
    check-cast p1, LLW;

    invoke-interface {p1}, LLW;->cancel()V

    const/4 p1, 0x1

    return p1

    .line 8
    :cond_2
    sget-object v1, LfX;->a:LA61;

    invoke-static {v1, p1}, LF61;->a(LA61;LR61;)Z

    move-result p1
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 9
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method

.method public a(LH61;LJ61;)Z
    .locals 8

    const/4 v0, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p1}, LH61;->a()LR61;

    move-result-object p1

    .line 11
    iget-object v1, p1, LR61;->d:LI61;

    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, LI61;->b(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v0

    .line 13
    :cond_0
    iget v3, v1, LI61;->b:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-eqz v3, :cond_3

    if-eq v3, v2, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    return v0

    .line 14
    :cond_1
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LVW;->a(LH61;)LVW;

    .line 15
    iget-object p1, p0, LD61;->x:LE61;

    .line 16
    check-cast p1, LLW;

    new-instance v3, LYW;

    .line 17
    iget-object v4, p0, LD61;->w:Lj71;

    .line 18
    iget-wide v5, v1, LI61;->d:J

    .line 19
    invoke-direct {v3, v4, p2, v5, v6}, LYW;-><init>(Lj71;LJ61;J)V

    invoke-interface {p1, v3}, LLW;->a(LIW;)V

    return v2

    .line 20
    :cond_2
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LRW;->a(LH61;)LRW;

    move-result-object p1

    .line 21
    iget-object v3, p0, LD61;->x:LE61;

    .line 22
    check-cast v3, LLW;

    iget-object p1, p1, LRW;->b:LRX;

    new-instance v4, LUW;

    .line 23
    iget-object v5, p0, LD61;->w:Lj71;

    .line 24
    iget-wide v6, v1, LI61;->d:J

    .line 25
    invoke-direct {v4, v5, p2, v6, v7}, LUW;-><init>(Lj71;LJ61;J)V

    invoke-interface {v3, p1, v4}, LLW;->a(LRX;LHW;)V

    return v2

    .line 26
    :cond_3
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LZW;->a(LH61;)LZW;

    move-result-object p1

    .line 27
    iget-object v3, p0, LD61;->x:LE61;

    .line 28
    check-cast v3, LLW;

    iget-object p1, p1, LZW;->b:LOX;

    new-instance v4, LcX;

    .line 29
    iget-object v5, p0, LD61;->w:Lj71;

    .line 30
    iget-wide v6, v1, LI61;->d:J

    .line 31
    invoke-direct {v4, v5, p2, v6, v7}, LcX;-><init>(Lj71;LJ61;J)V

    invoke-interface {v3, p1, v4}, LLW;->a(LOX;LJW;)V

    return v2

    .line 32
    :cond_4
    iget-object v1, p0, LD61;->w:Lj71;

    .line 33
    sget-object v2, LfX;->a:LA61;

    .line 34
    invoke-static {v1, v2, p1, p2}, LF61;->a(Lj71;LA61;LR61;LJ61;)Z

    move-result p1
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 35
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
