.class public final Lu31;
.super LD61;
.source "PG"


# direct methods
.method public constructor <init>(Lj71;Lr31;)V
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

    if-eq v1, v2, :cond_1

    return v0

    .line 5
    :cond_1
    sget-object v1, LD31;->a:LA61;

    invoke-static {v1, p1}, LF61;->a(LA61;LR61;)Z

    move-result p1
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method

.method public a(LH61;LJ61;)Z
    .locals 9

    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1}, LH61;->a()LR61;

    move-result-object p1

    .line 8
    iget-object v1, p1, LR61;->d:LI61;

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, LI61;->b(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v0

    .line 10
    :cond_0
    iget v3, v1, LI61;->b:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    if-eqz v3, :cond_2

    if-eq v3, v2, :cond_1

    return v0

    .line 11
    :cond_1
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Lv31;->a(LH61;)Lv31;

    .line 12
    iget-object p1, p0, LD61;->x:LE61;

    .line 13
    check-cast p1, Lr31;

    new-instance v3, Ly31;

    .line 14
    iget-object v4, p0, LD61;->w:Lj71;

    .line 15
    iget-wide v5, v1, LI61;->d:J

    .line 16
    invoke-direct {v3, v4, p2, v5, v6}, Ly31;-><init>(Lj71;LJ61;J)V

    invoke-interface {p1, v3}, Lr31;->a(Lo31;)V

    return v2

    .line 17
    :cond_2
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Lz31;->a(LH61;)Lz31;

    move-result-object p1

    .line 18
    iget-object v3, p0, LD61;->x:LE61;

    .line 19
    check-cast v3, Lr31;

    iget-wide v4, p1, Lz31;->b:J

    new-instance p1, LC31;

    .line 20
    iget-object v6, p0, LD61;->w:Lj71;

    .line 21
    iget-wide v7, v1, LI61;->d:J

    .line 22
    invoke-direct {p1, v6, p2, v7, v8}, LC31;-><init>(Lj71;LJ61;J)V

    invoke-interface {v3, v4, v5, p1}, Lr31;->a(JLq31;)V

    return v2

    .line 23
    :cond_3
    iget-object v1, p0, LD61;->w:Lj71;

    .line 24
    sget-object v2, LD31;->a:LA61;

    .line 25
    invoke-static {v1, v2, p1, p2}, LF61;->a(Lj71;LA61;LR61;LJ61;)Z

    move-result p1
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 26
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
