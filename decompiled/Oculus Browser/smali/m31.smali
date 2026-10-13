.class public final Lm31;
.super LD61;
.source "PG"


# direct methods
.method public constructor <init>(Lj71;Lu21;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LD61;-><init>(Lj71;LE61;)V

    return-void
.end method


# virtual methods
.method public a(LH61;)Z
    .locals 4

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

    if-eq v1, v2, :cond_4

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    const/4 v3, 0x7

    if-eq v1, v3, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Le31;->a(LH61;)Le31;

    .line 6
    iget-object p1, p0, LD61;->x:LE61;

    .line 7
    check-cast p1, Lu21;

    invoke-interface {p1}, Lu21;->s()V

    return v2

    .line 8
    :cond_2
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Lg31;->a(LH61;)Lg31;

    .line 9
    iget-object p1, p0, LD61;->x:LE61;

    .line 10
    check-cast p1, Lu21;

    invoke-interface {p1}, Lu21;->M()V

    return v2

    .line 11
    :cond_3
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Lf31;->a(LH61;)Lf31;

    move-result-object p1

    .line 12
    iget-object v1, p0, LD61;->x:LE61;

    .line 13
    check-cast v1, Lu21;

    iget-object p1, p1, Lf31;->b:Lw21;

    invoke-interface {v1, p1}, Lu21;->a(Lw21;)V

    return v2

    .line 14
    :cond_4
    sget-object v1, Ln31;->a:LA61;

    invoke-static {v1, p1}, LF61;->a(LA61;LR61;)Z

    move-result p1
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 15
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method

.method public a(LH61;LJ61;)Z
    .locals 9

    const/4 v0, 0x0

    .line 16
    :try_start_0
    invoke-virtual {p1}, LH61;->a()LR61;

    move-result-object p1

    .line 17
    iget-object v1, p1, LR61;->d:LI61;

    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, v2}, LI61;->b(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v0

    .line 19
    :cond_0
    iget v3, v1, LI61;->b:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    if-eq v3, v2, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    return v0

    .line 20
    :cond_1
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LO21;->a(LH61;)LO21;

    .line 21
    iget-object p1, p0, LD61;->x:LE61;

    .line 22
    check-cast p1, Lu21;

    new-instance v3, LR21;

    .line 23
    iget-object v4, p0, LD61;->w:Lj71;

    .line 24
    iget-wide v5, v1, LI61;->d:J

    .line 25
    invoke-direct {v3, v4, p2, v5, v6}, LR21;-><init>(Lj71;LJ61;J)V

    invoke-interface {p1, v3}, Lu21;->a(Lo21;)V

    return v2

    .line 26
    :cond_2
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LW21;->a(LH61;)LW21;

    move-result-object p1

    .line 27
    iget-object v3, p0, LD61;->x:LE61;

    .line 28
    check-cast v3, Lu21;

    iget p1, p1, LW21;->b:I

    new-instance v4, LZ21;

    .line 29
    iget-object v5, p0, LD61;->w:Lj71;

    .line 30
    iget-wide v6, v1, LI61;->d:J

    .line 31
    invoke-direct {v4, v5, p2, v6, v7}, LZ21;-><init>(Lj71;LJ61;J)V

    invoke-interface {v3, p1, v4}, Lu21;->a(ILq21;)V

    return v2

    .line 32
    :cond_3
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Lh31;->a(LH61;)Lh31;

    move-result-object p1

    .line 33
    iget-object v3, p0, LD61;->x:LE61;

    .line 34
    check-cast v3, Lu21;

    iget-object v4, p1, Lh31;->b:LM21;

    iget p1, p1, Lh31;->c:I

    new-instance v5, Lk31;

    .line 35
    iget-object v6, p0, LD61;->w:Lj71;

    .line 36
    iget-wide v7, v1, LI61;->d:J

    .line 37
    invoke-direct {v5, v6, p2, v7, v8}, Lk31;-><init>(Lj71;LJ61;J)V

    invoke-interface {v3, v4, p1, v5}, Lu21;->a(LM21;ILt21;)V

    return v2

    .line 38
    :cond_4
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LS21;->a(LH61;)LS21;

    move-result-object p1

    .line 39
    iget-object v3, p0, LD61;->x:LE61;

    .line 40
    check-cast v3, Lu21;

    iget p1, p1, LS21;->b:I

    new-instance v4, LV21;

    .line 41
    iget-object v5, p0, LD61;->w:Lj71;

    .line 42
    iget-wide v6, v1, LI61;->d:J

    .line 43
    invoke-direct {v4, v5, p2, v6, v7}, LV21;-><init>(Lj71;LJ61;J)V

    invoke-interface {v3, p1, v4}, Lu21;->a(ILp21;)V

    return v2

    .line 44
    :cond_5
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, La31;->a(LH61;)La31;

    move-result-object p1

    .line 45
    iget-object v3, p0, LD61;->x:LE61;

    .line 46
    check-cast v3, Lu21;

    iget-object v4, p1, La31;->b:Ll21;

    iget-object p1, p1, La31;->c:LK21;

    new-instance v5, Ld31;

    .line 47
    iget-object v6, p0, LD61;->w:Lj71;

    .line 48
    iget-wide v7, v1, LI61;->d:J

    .line 49
    invoke-direct {v5, v6, p2, v7, v8}, Ld31;-><init>(Lj71;LJ61;J)V

    invoke-interface {v3, v4, p1, v5}, Lu21;->a(Ll21;LK21;Ls21;)V

    return v2

    .line 50
    :cond_6
    iget-object v1, p0, LD61;->w:Lj71;

    .line 51
    sget-object v2, Ln31;->a:LA61;

    .line 52
    invoke-static {v1, v2, p1, p2}, LF61;->a(Lj71;LA61;LR61;LJ61;)Z

    move-result p1
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 53
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
