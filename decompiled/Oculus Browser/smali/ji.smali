.class public Lji;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LJ6;

.field public final b:LQ6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LJ6;

    invoke-direct {v0}, LJ6;-><init>()V

    iput-object v0, p0, Lji;->a:LJ6;

    .line 3
    new-instance v0, LQ6;

    invoke-direct {v0}, LQ6;-><init>()V

    iput-object v0, p0, Lji;->b:LQ6;

    return-void
.end method


# virtual methods
.method public final a(Ldh;I)LIg;
    .locals 4

    .line 1
    iget-object v0, p0, Lji;->a:LJ6;

    invoke-virtual {v0, p1}, Ld7;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lji;->a:LJ6;

    invoke-virtual {v1, p1}, Ld7;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhi;

    if-eqz v1, :cond_4

    .line 3
    iget v2, v1, Lhi;->a:I

    and-int v3, v2, p2

    if-eqz v3, :cond_4

    not-int v0, p2

    and-int/2addr v0, v2

    .line 4
    iput v0, v1, Lhi;->a:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 5
    iget-object p2, v1, Lhi;->b:LIg;

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    .line 6
    iget-object p2, v1, Lhi;->c:LIg;

    .line 7
    :goto_0
    iget v0, v1, Lhi;->a:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lji;->a:LJ6;

    invoke-virtual {v0, p1}, Ld7;->d(I)Ljava/lang/Object;

    .line 9
    invoke-static {v1}, Lhi;->a(Lhi;)V

    :cond_2
    return-object p2

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method

.method public a(Ldh;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lji;->a:LJ6;

    invoke-virtual {v0, p1}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhi;

    if-nez v0, :cond_0

    .line 17
    invoke-static {}, Lhi;->a()Lhi;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lji;->a:LJ6;

    invoke-virtual {v1, p1, v0}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_0
    iget p1, v0, Lhi;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Lhi;->a:I

    return-void
.end method

.method public a(Ldh;LIg;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lji;->a:LJ6;

    invoke-virtual {v0, p1}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhi;

    if-nez v0, :cond_0

    .line 12
    invoke-static {}, Lhi;->a()Lhi;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lji;->a:LJ6;

    invoke-virtual {v1, p1, v0}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_0
    iput-object p2, v0, Lhi;->c:LIg;

    .line 15
    iget p1, v0, Lhi;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lhi;->a:I

    return-void
.end method

.method public b(Ldh;LIg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lji;->a:LJ6;

    invoke-virtual {v0, p1}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhi;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lhi;->a()Lhi;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lji;->a:LJ6;

    invoke-virtual {v1, p1, v0}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iput-object p2, v0, Lhi;->b:LIg;

    .line 5
    iget p1, v0, Lhi;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lhi;->a:I

    return-void
.end method

.method public b(Ldh;)Z
    .locals 1

    .line 6
    iget-object v0, p0, Lji;->a:LJ6;

    invoke-virtual {v0, p1}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhi;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 7
    iget p1, p1, Lhi;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Ldh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lji;->a:LJ6;

    invoke-virtual {v0, p1}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhi;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lhi;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lhi;->a:I

    return-void
.end method

.method public d(Ldh;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lji;->b:LQ6;

    invoke-virtual {v0}, LQ6;->c()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Lji;->b:LQ6;

    invoke-virtual {v2, v0}, LQ6;->a(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lji;->b:LQ6;

    .line 4
    iget-object v3, v2, LQ6;->y:[Ljava/lang/Object;

    aget-object v4, v3, v0

    sget-object v5, LQ6;->A:Ljava/lang/Object;

    if-eq v4, v5, :cond_1

    .line 5
    aput-object v5, v3, v0

    .line 6
    iput-boolean v1, v2, LQ6;->w:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object v0, p0, Lji;->a:LJ6;

    invoke-virtual {v0, p1}, Ld7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhi;

    if-eqz p1, :cond_2

    .line 8
    invoke-static {p1}, Lhi;->a(Lhi;)V

    :cond_2
    return-void
.end method
