.class public final Lq91;
.super LD61;
.source "PG"


# direct methods
.method public constructor <init>(Lj71;Lc91;)V
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

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return v0

    .line 5
    :pswitch_1
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Lo91;->a(LH61;)Lo91;

    .line 6
    iget-object p1, p0, LD61;->x:LE61;

    .line 7
    check-cast p1, Lc91;
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p1, Lp91;

    :try_start_1
    invoke-virtual {p1}, Lp91;->e()V

    return v2

    .line 8
    :pswitch_2
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Li91;->a(LH61;)Li91;

    move-result-object p1

    .line 9
    iget-object v1, p0, LD61;->x:LE61;

    .line 10
    check-cast v1, Lc91;

    iget p1, p1, Li91;->b:I
    :try_end_1
    .catch Lo61; {:try_start_1 .. :try_end_1} :catch_0

    check-cast v1, Lp91;

    :try_start_2
    invoke-virtual {v1, p1}, Lp91;->c(I)V

    return v2

    .line 11
    :pswitch_3
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Lf91;->a(LH61;)Lf91;

    move-result-object p1

    .line 12
    iget-object v1, p0, LD61;->x:LE61;

    .line 13
    check-cast v1, Lc91;

    iget p1, p1, Lf91;->b:I
    :try_end_2
    .catch Lo61; {:try_start_2 .. :try_end_2} :catch_0

    check-cast v1, Lp91;

    :try_start_3
    invoke-virtual {v1, p1}, Lp91;->b(I)V

    return v2

    .line 14
    :pswitch_4
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Le91;->a(LH61;)Le91;

    move-result-object p1

    .line 15
    iget-object v1, p0, LD61;->x:LE61;

    .line 16
    check-cast v1, Lc91;

    iget-boolean p1, p1, Le91;->b:Z
    :try_end_3
    .catch Lo61; {:try_start_3 .. :try_end_3} :catch_0

    check-cast v1, Lp91;

    :try_start_4
    invoke-virtual {v1, p1}, Lp91;->a(Z)V

    return v2

    .line 17
    :pswitch_5
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Lg91;->a(LH61;)Lg91;

    .line 18
    iget-object p1, p0, LD61;->x:LE61;

    .line 19
    check-cast p1, Lc91;
    :try_end_4
    .catch Lo61; {:try_start_4 .. :try_end_4} :catch_0

    check-cast p1, Lp91;

    :try_start_5
    invoke-virtual {p1}, Lp91;->a()V

    return v2

    .line 20
    :pswitch_6
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Lh91;->a(LH61;)Lh91;

    move-result-object p1

    .line 21
    iget-object v1, p0, LD61;->x:LE61;

    .line 22
    check-cast v1, Lc91;

    iget v3, p1, Lh91;->b:I

    iget-object p1, p1, Lh91;->c:Ljava/lang/String;
    :try_end_5
    .catch Lo61; {:try_start_5 .. :try_end_5} :catch_0

    check-cast v1, Lp91;

    :try_start_6
    invoke-virtual {v1, v3, p1}, Lp91;->a(ILjava/lang/String;)V

    return v2

    .line 23
    :pswitch_7
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Ll91;->a(LH61;)Ll91;

    move-result-object p1

    .line 24
    iget-object v1, p0, LD61;->x:LE61;

    .line 25
    check-cast v1, Lc91;

    iget-object p1, p1, Ll91;->b:LF91;
    :try_end_6
    .catch Lo61; {:try_start_6 .. :try_end_6} :catch_0

    check-cast v1, Lp91;

    :try_start_7
    invoke-virtual {v1, p1}, Lp91;->a(LF91;)V

    return v2

    .line 26
    :pswitch_8
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Lj91;->a(LH61;)Lj91;

    move-result-object p1

    .line 27
    iget-object v1, p0, LD61;->x:LE61;

    .line 28
    check-cast v1, Lc91;

    iget-object p1, p1, Lj91;->b:LQ81;
    :try_end_7
    .catch Lo61; {:try_start_7 .. :try_end_7} :catch_0

    check-cast v1, Lp91;

    :try_start_8
    invoke-virtual {v1, p1}, Lp91;->a(LQ81;)V

    return v2

    .line 29
    :pswitch_9
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Ln91;->a(LH61;)Ln91;

    move-result-object p1

    .line 30
    iget-object v1, p0, LD61;->x:LE61;

    .line 31
    check-cast v1, Lc91;

    iget-object p1, p1, Ln91;->b:Ljava/lang/String;
    :try_end_8
    .catch Lo61; {:try_start_8 .. :try_end_8} :catch_0

    check-cast v1, Lp91;

    :try_start_9
    invoke-virtual {v1, p1}, Lp91;->a(Ljava/lang/String;)V

    return v2

    .line 32
    :pswitch_a
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Lm91;->a(LH61;)Lm91;

    move-result-object p1

    .line 33
    iget-object v1, p0, LD61;->x:LE61;

    .line 34
    check-cast v1, Lc91;

    iget-object p1, p1, Lm91;->b:LS81;
    :try_end_9
    .catch Lo61; {:try_start_9 .. :try_end_9} :catch_0

    check-cast v1, Lp91;

    :try_start_a
    invoke-virtual {v1, p1}, Lp91;->a(LS81;)V

    return v2

    .line 35
    :pswitch_b
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Lk91;->a(LH61;)Lk91;

    move-result-object p1

    .line 36
    iget-object v1, p0, LD61;->x:LE61;

    .line 37
    check-cast v1, Lc91;

    iget-object v3, p1, Lk91;->b:Ljava/lang/String;

    iget-object p1, p1, Lk91;->c:Ljava/lang/String;
    :try_end_a
    .catch Lo61; {:try_start_a .. :try_end_a} :catch_0

    check-cast v1, Lp91;

    :try_start_b
    invoke-virtual {v1, v3, p1}, Lp91;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 38
    :pswitch_c
    sget-object v1, Lr91;->a:LA61;

    invoke-static {v1, p1}, LF61;->a(LA61;LR61;)Z

    move-result p1
    :try_end_b
    .catch Lo61; {:try_start_b .. :try_end_b} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 39
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(LH61;LJ61;)Z
    .locals 3

    const/4 v0, 0x0

    .line 40
    :try_start_0
    invoke-virtual {p1}, LH61;->a()LR61;

    move-result-object p1

    .line 41
    iget-object v1, p1, LR61;->d:LI61;

    const/4 v2, 0x1

    .line 42
    invoke-virtual {v1, v2}, LI61;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 43
    :cond_0
    iget v1, v1, LI61;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    return v0

    .line 44
    :cond_1
    iget-object v1, p0, LD61;->w:Lj71;

    .line 45
    sget-object v2, Lr91;->a:LA61;

    .line 46
    invoke-static {v1, v2, p1, p2}, LF61;->a(Lj71;LA61;LR61;LJ61;)Z

    move-result p1
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 47
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
