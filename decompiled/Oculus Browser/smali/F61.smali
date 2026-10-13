.class public abstract LF61;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(LA61;LR61;)Z
    .locals 2

    .line 19
    invoke-virtual {p1}, LR61;->b()LH61;

    move-result-object p1

    .line 20
    invoke-static {p1}, Lf71;->a(LH61;)Lf71;

    move-result-object p1

    .line 21
    iget-object p1, p1, Lf71;->b:Le71;

    .line 22
    iget v0, p1, LU61;->a:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 23
    iget-object p1, p1, Le71;->b:Lb71;

    .line 24
    iget p1, p1, Lb71;->b:I

    invoke-virtual {p0}, LA61;->b()I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static a(Lj71;LA61;LR61;LJ61;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, LR61;->b()LH61;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ld71;->a(LH61;)Ld71;

    move-result-object v0

    .line 3
    new-instance v1, Lh71;

    invoke-direct {v1}, Lh71;-><init>()V

    .line 4
    new-instance v2, Lg71;

    invoke-direct {v2}, Lg71;-><init>()V

    iput-object v2, v1, Lh71;->b:Lg71;

    .line 5
    iget-object v0, v0, Ld71;->b:Lc71;

    .line 6
    iget v0, v0, LU61;->a:I

    if-nez v0, :cond_0

    .line 7
    new-instance v0, La71;

    invoke-direct {v0}, La71;-><init>()V

    const/4 v3, 0x0

    .line 8
    iput v3, v2, LU61;->a:I

    .line 9
    iput-object v0, v2, Lg71;->b:La71;

    .line 10
    iget-object v0, v1, Lh71;->b:Lg71;

    .line 11
    iget-object v0, v0, Lg71;->b:La71;

    .line 12
    invoke-virtual {p1}, LA61;->b()I

    move-result p1

    iput p1, v0, La71;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 13
    iput-object p1, v1, Lh71;->b:Lg71;

    .line 14
    :goto_0
    new-instance p1, LI61;

    const/4 v0, -0x1

    const/4 v2, 0x2

    .line 15
    iget-object p2, p2, LR61;->d:LI61;

    .line 16
    iget-wide v3, p2, LI61;->d:J

    .line 17
    invoke-direct {p1, v0, v2, v3, v4}, LI61;-><init>(IIJ)V

    .line 18
    invoke-virtual {v1, p0, p1}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p0

    invoke-interface {p3, p0}, LJ61;->a(LH61;)Z

    move-result p0

    return p0
.end method
