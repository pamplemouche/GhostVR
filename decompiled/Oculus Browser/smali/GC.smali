.class public abstract LGC;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LmE;

    .line 9
    invoke-static {v1}, LGC;->a(LmE;)LnC;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(LnC;)LmE;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    iget v0, p0, LnC;->a:I

    .line 2
    new-instance v1, LPE;

    .line 3
    iget-object p0, p0, LnC;->b:[B

    .line 4
    invoke-direct {v1, p0}, LPE;-><init>([B)V

    .line 5
    new-instance p0, LmE;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v1}, LmE;-><init>(Ljava/lang/Integer;LPE;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static a(LmE;)LnC;
    .locals 2

    if-eqz p0, :cond_0

    .line 10
    iget v0, p0, LmE;->c:I

    .line 11
    iget-object p0, p0, LmE;->d:LPE;

    .line 12
    iget-object p0, p0, LPE;->w:[B

    .line 13
    new-instance v1, LnC;

    invoke-direct {v1, v0, p0}, LnC;-><init>(I[B)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    .line 14
    throw p0
.end method
