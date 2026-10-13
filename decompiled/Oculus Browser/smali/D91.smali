.class public final LD91;
.super LD61;
.source "PG"


# direct methods
.method public constructor <init>(Lj71;La91;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LD61;-><init>(Lj71;LE61;)V

    return-void
.end method


# virtual methods
.method public a(LH61;)Z
    .locals 9

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

    invoke-static {p1}, Lw91;->a(LH61;)Lw91;

    move-result-object p1

    .line 6
    iget-object v1, p0, LD61;->x:LE61;

    .line 7
    check-cast v1, La91;

    iget-boolean p1, p1, Lw91;->b:Z

    invoke-interface {v1, p1}, La91;->b(Z)V

    return v2

    .line 8
    :pswitch_2
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Lu91;->a(LH61;)Lu91;

    .line 9
    iget-object p1, p0, LD61;->x:LE61;

    .line 10
    check-cast p1, La91;

    invoke-interface {p1}, La91;->h()V

    return v2

    .line 11
    :pswitch_3
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Lz91;->a(LH61;)Lz91;

    move-result-object p1

    .line 12
    iget-object v1, p0, LD61;->x:LE61;

    .line 13
    check-cast v1, La91;

    iget-object p1, p1, Lz91;->b:LH91;

    invoke-interface {v1, p1}, La91;->a(LH91;)V

    return v2

    .line 14
    :pswitch_4
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Lv91;->a(LH61;)Lv91;

    move-result-object p1

    .line 15
    iget-object v1, p0, LD61;->x:LE61;

    .line 16
    check-cast v1, La91;

    iget p1, p1, Lv91;->b:I

    invoke-interface {v1, p1}, La91;->a(I)V

    return v2

    .line 17
    :pswitch_5
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Lt91;->a(LH61;)Lt91;

    .line 18
    iget-object p1, p0, LD61;->x:LE61;

    .line 19
    check-cast p1, La91;

    invoke-interface {p1}, La91;->z()V

    return v2

    .line 20
    :pswitch_6
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Ly91;->a(LH61;)Ly91;

    .line 21
    iget-object p1, p0, LD61;->x:LE61;

    .line 22
    check-cast p1, La91;

    invoke-interface {p1}, La91;->d()V

    return v2

    .line 23
    :pswitch_7
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LB91;->a(LH61;)LB91;

    move-result-object p1

    .line 24
    iget-object v1, p0, LD61;->x:LE61;

    .line 25
    check-cast v1, La91;

    iget-object p1, p1, LB91;->b:LU81;

    invoke-interface {v1, p1}, La91;->a(LU81;)V

    return v2

    .line 26
    :pswitch_8
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LA91;->a(LH61;)LA91;

    move-result-object p1

    .line 27
    iget-object v1, p0, LD61;->x:LE61;

    .line 28
    check-cast v1, La91;

    iget-boolean v3, p1, LA91;->b:Z

    iget-boolean p1, p1, LA91;->c:Z

    invoke-interface {v1, v3, p1}, La91;->a(ZZ)V

    return v2

    .line 29
    :pswitch_9
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, Lx91;->a(LH61;)Lx91;

    move-result-object p1

    .line 30
    iget-object v1, p0, LD61;->x:LE61;

    .line 31
    move-object v3, v1

    check-cast v3, La91;

    iget-object v4, p1, Lx91;->b:Lc91;

    iget-object v5, p1, Lx91;->c:[Lorg/chromium/payments/mojom/PaymentMethodData;

    iget-object v6, p1, Lx91;->d:LU81;

    iget-object v7, p1, Lx91;->e:LY81;

    iget-boolean v8, p1, Lx91;->f:Z

    invoke-interface/range {v3 .. v8}, La91;->a(Lc91;[Lorg/chromium/payments/mojom/PaymentMethodData;LU81;LY81;Z)V

    return v2

    .line 32
    :pswitch_a
    sget-object v1, LE91;->a:LA61;

    invoke-static {v1, p1}, LF61;->a(LA61;LR61;)Z

    move-result p1
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 33
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_a
        :pswitch_0
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

    .line 34
    :try_start_0
    invoke-virtual {p1}, LH61;->a()LR61;

    move-result-object p1

    .line 35
    iget-object v1, p1, LR61;->d:LI61;

    const/4 v2, 0x1

    .line 36
    invoke-virtual {v1, v2}, LI61;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 37
    :cond_0
    iget v1, v1, LI61;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    return v0

    .line 38
    :cond_1
    iget-object v1, p0, LD61;->w:Lj71;

    .line 39
    sget-object v2, LE91;->a:LA61;

    .line 40
    invoke-static {v1, v2, p1, p2}, LF61;->a(Lj71;LA61;LR61;LJ61;)Z

    move-result p1
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 41
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
