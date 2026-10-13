.class public LQF;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LSF;


# static fields
.field public static final a:LQF;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LQF;

    invoke-direct {v0}, LQF;-><init>()V

    sput-object v0, LQF;->a:LQF;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZDZD)D
    .locals 0

    if-eqz p4, :cond_0

    move-wide p2, p5

    :cond_0
    return-wide p2
.end method

.method public a(ZFZF)F
    .locals 0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    return p2
.end method

.method public a(ZIZI)I
    .locals 0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    return p2
.end method

.method public a(ZJZJ)J
    .locals 0

    if-eqz p4, :cond_0

    move-wide p2, p5

    :cond_0
    return-wide p2
.end method

.method public a(LDF;LDF;)LDF;
    .locals 2

    .line 8
    iget-boolean v0, p1, LDF;->b:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, LDF;->clone()LDF;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p2, LDF;->a:LtG;

    invoke-virtual {v1}, LtG;->b()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 11
    iget-object v1, p2, LDF;->a:LtG;

    invoke-virtual {v1, v0}, LtG;->a(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p1, v1}, LDF;->b(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p2, p2, LDF;->a:LtG;

    invoke-virtual {p2}, LtG;->c()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 13
    invoke-virtual {p1, v0}, LDF;->b(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public a(LXF;LXF;)LXF;
    .locals 3

    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 32
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 33
    move-object v2, p1

    check-cast v2, LhF;

    .line 34
    iget-boolean v2, v2, LhF;->w:Z

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 35
    check-cast p1, LUF;

    invoke-virtual {p1, v1}, LUF;->a(I)LXF;

    move-result-object p1

    .line 36
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public a(LaG;LaG;)LaG;
    .locals 3

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 38
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 39
    move-object v2, p1

    check-cast v2, LhF;

    .line 40
    iget-boolean v2, v2, LhF;->w:Z

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 41
    check-cast p1, LfG;

    invoke-virtual {p1, v1}, LfG;->a(I)LaG;

    move-result-object p1

    .line 42
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public a(LbG;LbG;)LbG;
    .locals 3

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 26
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 27
    move-object v2, p1

    check-cast v2, LhF;

    .line 28
    iget-boolean v2, v2, LhF;->w:Z

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 29
    invoke-interface {p1, v1}, LbG;->a(I)LbG;

    move-result-object p1

    .line 30
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public a(LhG;LhG;)LhG;
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 14
    invoke-interface {p1}, LhG;->c()LgG;

    move-result-object p1

    check-cast p1, LeF;

    if-eqz p1, :cond_1

    .line 15
    check-cast p1, LFF;

    .line 16
    iget-object v0, p1, LFF;->w:LTF;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    check-cast p2, LfF;

    .line 19
    check-cast p2, LTF;

    .line 20
    invoke-virtual {p1}, LFF;->g()V

    .line 21
    iget-object v0, p1, LFF;->x:LTF;

    sget-object v1, LQF;->a:LQF;

    invoke-virtual {v0, v1, p2}, LTF;->a(LSF;LTF;)V

    .line 22
    invoke-virtual {p1}, LFF;->e()LTF;

    move-result-object p1

    return-object p1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 24
    throw p1

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public a(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p3, :cond_0

    move-object p2, p4

    :cond_0
    return-object p2
.end method

.method public a(ZLrF;ZLrF;)LrF;
    .locals 0

    if-eqz p3, :cond_0

    move-object p2, p4

    :cond_0
    return-object p2
.end method

.method public a(LwG;LwG;)LwG;
    .locals 6

    .line 1
    sget-object v0, LwG;->f:LwG;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p1, LwG;->a:I

    iget v1, p2, LwG;->a:I

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p1, LwG;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 4
    iget-object v2, p2, LwG;->b:[I

    iget v3, p1, LwG;->a:I

    iget v4, p2, LwG;->a:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object v2, p1, LwG;->c:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 6
    iget-object v3, p2, LwG;->c:[Ljava/lang/Object;

    iget p1, p1, LwG;->a:I

    iget p2, p2, LwG;->a:I

    invoke-static {v3, v5, v2, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    new-instance p1, LwG;

    const/4 p2, 0x1

    invoke-direct {p1, v0, v1, v2, p2}, LwG;-><init>(I[I[Ljava/lang/Object;Z)V

    :goto_0
    return-object p1
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ZZZZ)Z
    .locals 0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    return p2
.end method

.method public b(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public c(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public d(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public e(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    check-cast p2, LhG;

    check-cast p3, LhG;

    invoke-virtual {p0, p2, p3}, LQF;->a(LhG;LhG;)LhG;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method

.method public g(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method
