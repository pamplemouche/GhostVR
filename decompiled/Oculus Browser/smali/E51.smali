.class public final LE51;
.super LD61;
.source "PG"


# direct methods
.method public constructor <init>(Lj71;Ly51;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LD61;-><init>(Lj71;LE61;)V

    return-void
.end method


# virtual methods
.method public a(LH61;)Z
    .locals 5

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

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LB51;->a(LH61;)LB51;

    move-result-object p1

    .line 6
    iget-object v1, p0, LD61;->x:LE61;

    .line 7
    check-cast v1, Ly51;

    iget-boolean p1, p1, LB51;->b:Z
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v1, LD51;

    :try_start_1
    invoke-virtual {v1, p1}, LD51;->a(Z)V

    return v2

    .line 8
    :cond_2
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LA51;->a(LH61;)LA51;

    .line 9
    iget-object p1, p0, LD61;->x:LE61;

    .line 10
    check-cast p1, Ly51;
    :try_end_1
    .catch Lo61; {:try_start_1 .. :try_end_1} :catch_0

    check-cast p1, LD51;

    :try_start_2
    invoke-virtual {p1}, LD51;->a()V

    return v2

    .line 11
    :cond_3
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LC51;->a(LH61;)LC51;

    move-result-object p1

    .line 12
    iget-object v1, p0, LD61;->x:LE61;

    .line 13
    check-cast v1, Ly51;

    iget-wide v3, p1, LC51;->b:J
    :try_end_2
    .catch Lo61; {:try_start_2 .. :try_end_2} :catch_0

    check-cast v1, LD51;

    :try_start_3
    invoke-virtual {v1, v3, v4}, LD51;->a(J)V

    return v2

    .line 14
    :cond_4
    sget-object v1, LF51;->a:LA61;

    invoke-static {v1, p1}, LF61;->a(LA61;LR61;)Z

    move-result p1
    :try_end_3
    .catch Lo61; {:try_start_3 .. :try_end_3} :catch_0

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
    .locals 3

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

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 19
    :cond_0
    iget v1, v1, LI61;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    return v0

    .line 20
    :cond_1
    iget-object v1, p0, LD61;->w:Lj71;

    .line 21
    sget-object v2, LF51;->a:LA61;

    .line 22
    invoke-static {v1, v2, p1, p2}, LF61;->a(Lj71;LA61;LR61;LJ61;)Z

    move-result p1
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 23
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
