.class public final LqX;
.super LD61;
.source "PG"


# direct methods
.method public constructor <init>(Lj71;LlX;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LD61;-><init>(Lj71;LE61;)V

    return-void
.end method


# virtual methods
.method public a(LH61;)Z
    .locals 7

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

    if-eq v1, v2, :cond_3

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LoX;->a(LH61;)LoX;

    move-result-object p1

    .line 6
    iget-object v1, p0, LD61;->x:LE61;

    .line 7
    check-cast v1, LlX;

    iget v3, p1, LoX;->b:I

    iget-wide v4, p1, LoX;->c:J

    invoke-interface {v1, v3, v4, v5}, LlX;->a(IJ)V

    return v2

    .line 8
    :cond_2
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LnX;->a(LH61;)LnX;

    move-result-object p1

    .line 9
    iget-object v1, p0, LD61;->x:LE61;

    .line 10
    check-cast v1, LlX;

    iget-wide v3, p1, LnX;->b:J

    iget-wide v5, p1, LnX;->c:J

    invoke-interface {v1, v3, v4, v5, v6}, LlX;->a(JJ)V

    return v2

    .line 11
    :cond_3
    sget-object v1, LrX;->a:LA61;

    invoke-static {v1, p1}, LF61;->a(LA61;LR61;)Z

    move-result p1
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 12
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method

.method public a(LH61;LJ61;)Z
    .locals 3

    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p1}, LH61;->a()LR61;

    move-result-object p1

    .line 14
    iget-object v1, p1, LR61;->d:LI61;

    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2}, LI61;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 16
    :cond_0
    iget v1, v1, LI61;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    return v0

    .line 17
    :cond_1
    iget-object v1, p0, LD61;->w:Lj71;

    .line 18
    sget-object v2, LrX;->a:LA61;

    .line 19
    invoke-static {v1, v2, p1, p2}, LF61;->a(Lj71;LA61;LR61;LJ61;)Z

    move-result p1
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 20
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
