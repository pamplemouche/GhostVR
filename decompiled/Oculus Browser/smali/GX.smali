.class public final LGX;
.super LD61;
.source "PG"


# direct methods
.method public constructor <init>(Lj71;LjX;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LD61;-><init>(Lj71;LE61;)V

    return-void
.end method


# virtual methods
.method public a(LH61;)Z
    .locals 10

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

    if-eq v1, v2, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LAX;->a(LH61;)LAX;

    move-result-object p1

    .line 6
    iget-object v1, p0, LD61;->x:LE61;

    .line 7
    check-cast v1, LjX;

    iget-wide v5, p1, LAX;->b:J

    iget-wide v7, p1, LAX;->c:J

    iget-object v9, p1, LAX;->d:Ln71;

    iget-object p1, p1, LAX;->e:LlX;

    check-cast v1, LFX;

    if-eqz v1, :cond_2

    .line 8
    new-instance v2, LAX;

    invoke-direct {v2}, LAX;-><init>()V

    .line 9
    iput-wide v5, v2, LAX;->b:J

    .line 10
    iput-wide v7, v2, LAX;->c:J

    .line 11
    iput-object v9, v2, LAX;->d:Ln71;

    .line 12
    iput-object p1, v2, LAX;->e:LlX;

    .line 13
    iget-object p1, v1, Lz61;->w:Ly61;

    .line 14
    iget-object v1, p1, Ly61;->x:LK61;

    .line 15
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 16
    new-instance v5, LI61;

    invoke-direct {v5, v4}, LI61;-><init>(I)V

    .line 17
    invoke-virtual {v2, p1, v5}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 18
    invoke-interface {v1, p1}, LJ61;->a(LH61;)Z

    return v3

    .line 19
    :cond_2
    throw v2

    .line 20
    :cond_3
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LzX;->a(LH61;)LzX;

    move-result-object p1

    .line 21
    iget-object v1, p0, LD61;->x:LE61;

    .line 22
    check-cast v1, LjX;

    iget-object v2, p1, LzX;->b:Ln71;

    iget-object p1, p1, LzX;->c:LlX;
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v1, LFX;

    :try_start_1
    invoke-virtual {v1, v2, p1}, LFX;->a(Ln71;LlX;)V

    return v3

    .line 23
    :cond_4
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LtX;->a(LH61;)LtX;

    move-result-object p1

    .line 24
    iget-object v1, p0, LD61;->x:LE61;

    .line 25
    check-cast v1, LjX;

    iget-object p1, p1, LtX;->b:LG61;

    check-cast v1, LFX;

    if-eqz v1, :cond_5

    .line 26
    new-instance v2, LtX;

    invoke-direct {v2}, LtX;-><init>()V

    .line 27
    iput-object p1, v2, LtX;->b:LG61;

    .line 28
    iget-object p1, v1, Lz61;->w:Ly61;

    .line 29
    iget-object v1, p1, Ly61;->x:LK61;

    .line 30
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 31
    new-instance v4, LI61;

    invoke-direct {v4, v3}, LI61;-><init>(I)V

    .line 32
    invoke-virtual {v2, p1, v4}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 33
    invoke-interface {v1, p1}, LJ61;->a(LH61;)Z

    return v3

    .line 34
    :cond_5
    throw v2

    .line 35
    :cond_6
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LuX;->a(LH61;)LuX;

    move-result-object p1

    .line 36
    iget-object v1, p0, LD61;->x:LE61;

    .line 37
    check-cast v1, LjX;

    iget-object p1, p1, LuX;->b:LG61;

    check-cast v1, LFX;

    if-eqz v1, :cond_7

    .line 38
    new-instance v2, LuX;

    invoke-direct {v2}, LuX;-><init>()V

    .line 39
    iput-object p1, v2, LuX;->b:LG61;

    .line 40
    iget-object p1, v1, Lz61;->w:Ly61;

    .line 41
    iget-object v1, p1, Ly61;->x:LK61;

    .line 42
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 43
    new-instance v4, LI61;

    invoke-direct {v4, v0}, LI61;-><init>(I)V

    .line 44
    invoke-virtual {v2, p1, v4}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 45
    invoke-interface {v1, p1}, LJ61;->a(LH61;)Z

    return v3

    .line 46
    :cond_7
    throw v2

    .line 47
    :cond_8
    sget-object v1, LHX;->a:LA61;

    invoke-static {v1, p1}, LF61;->a(LA61;LR61;)Z

    move-result p1
    :try_end_1
    .catch Lo61; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 48
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method

.method public a(LH61;LJ61;)Z
    .locals 11

    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-virtual {p1}, LH61;->a()LR61;

    move-result-object p1

    .line 50
    iget-object v1, p1, LR61;->d:LI61;

    const/4 v2, 0x1

    .line 51
    invoke-virtual {v1, v2}, LI61;->b(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v0

    .line 52
    :cond_0
    iget v3, v1, LI61;->b:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-eq v3, v7, :cond_3

    const/4 v7, 0x5

    if-eq v3, v7, :cond_1

    return v0

    .line 53
    :cond_1
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LvX;->a(LH61;)LvX;

    .line 54
    iget-object p1, p0, LD61;->x:LE61;

    .line 55
    check-cast p1, LjX;

    new-instance v3, LyX;

    .line 56
    iget-object v8, p0, LD61;->w:Lj71;

    .line 57
    iget-wide v9, v1, LI61;->d:J

    .line 58
    invoke-direct {v3, v8, p2, v9, v10}, LyX;-><init>(Lj71;LJ61;J)V

    check-cast p1, LFX;

    if-eqz p1, :cond_2

    .line 59
    new-instance p2, LvX;

    invoke-direct {p2}, LvX;-><init>()V

    .line 60
    iget-object p1, p1, Lz61;->w:Ly61;

    .line 61
    iget-object v1, p1, Ly61;->x:LK61;

    .line 62
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 63
    new-instance v6, LI61;

    invoke-direct {v6, v7, v2, v4, v5}, LI61;-><init>(IIJ)V

    .line 64
    invoke-virtual {p2, p1, v6}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    new-instance p2, LxX;

    invoke-direct {p2, v3}, LxX;-><init>(LgX;)V

    .line 65
    invoke-interface {v1, p1, p2}, LK61;->a(LH61;LJ61;)Z

    return v2

    .line 66
    :cond_2
    throw v6

    .line 67
    :cond_3
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    invoke-static {p1}, LBX;->a(LH61;)LBX;

    .line 68
    iget-object p1, p0, LD61;->x:LE61;

    .line 69
    check-cast p1, LjX;

    new-instance v3, LEX;

    .line 70
    iget-object v8, p0, LD61;->w:Lj71;

    .line 71
    iget-wide v9, v1, LI61;->d:J

    .line 72
    invoke-direct {v3, v8, p2, v9, v10}, LEX;-><init>(Lj71;LJ61;J)V

    check-cast p1, LFX;

    if-eqz p1, :cond_4

    .line 73
    new-instance p2, LBX;

    invoke-direct {p2}, LBX;-><init>()V

    .line 74
    iget-object p1, p1, Lz61;->w:Ly61;

    .line 75
    iget-object v1, p1, Ly61;->x:LK61;

    .line 76
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 77
    new-instance v6, LI61;

    invoke-direct {v6, v7, v2, v4, v5}, LI61;-><init>(IIJ)V

    .line 78
    invoke-virtual {p2, p1, v6}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    new-instance p2, LDX;

    invoke-direct {p2, v3}, LDX;-><init>(LiX;)V

    .line 79
    invoke-interface {v1, p1, p2}, LK61;->a(LH61;LJ61;)Z

    return v2

    .line 80
    :cond_4
    throw v6

    .line 81
    :cond_5
    iget-object v1, p0, LD61;->w:Lj71;

    .line 82
    sget-object v2, LHX;->a:LA61;

    .line 83
    invoke-static {v1, v2, p1, p2}, LF61;->a(Lj71;LA61;LR61;LJ61;)Z

    move-result p1
    :try_end_0
    .catch Lo61; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 84
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
