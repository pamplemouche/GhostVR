.class public LJ6;
.super Ld7;
.source "PG"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public D:LX6;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld7;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ld7;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ld7;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ld7;-><init>()V

    if-eqz p1, :cond_1

    .line 4
    iget v0, p1, Ld7;->y:I

    .line 5
    iget v1, p0, Ld7;->y:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ld7;->b(I)V

    .line 6
    iget v1, p0, Ld7;->y:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    .line 7
    iget-object v1, p1, Ld7;->w:[I

    iget-object v3, p0, Ld7;->w:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object p1, p1, Ld7;->x:[Ljava/lang/Object;

    iget-object v1, p0, Ld7;->x:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iput v0, p0, Ld7;->y:I

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    invoke-virtual {p1, v2}, Ld7;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Ld7;->e(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final b()LX6;
    .locals 1

    .line 1
    iget-object v0, p0, LJ6;->D:LX6;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LI6;

    invoke-direct {v0, p0}, LI6;-><init>(LJ6;)V

    iput-object v0, p0, LJ6;->D:LX6;

    .line 3
    :cond_0
    iget-object v0, p0, LJ6;->D:LX6;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .line 1
    invoke-virtual {p0}, LJ6;->b()LX6;

    move-result-object v0

    .line 2
    iget-object v1, v0, LX6;->a:LT6;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, LT6;

    invoke-direct {v1, v0}, LT6;-><init>(LX6;)V

    iput-object v1, v0, LX6;->a:LT6;

    .line 4
    :cond_0
    iget-object v0, v0, LX6;->a:LT6;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .line 1
    invoke-virtual {p0}, LJ6;->b()LX6;

    move-result-object v0

    .line 2
    iget-object v1, v0, LX6;->b:LU6;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, LU6;

    invoke-direct {v1, v0}, LU6;-><init>(LX6;)V

    iput-object v1, v0, LX6;->b:LU6;

    .line 4
    :cond_0
    iget-object v0, v0, LX6;->b:LU6;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    .line 1
    iget v0, p0, Ld7;->y:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ld7;->b(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .line 1
    invoke-virtual {p0}, LJ6;->b()LX6;

    move-result-object v0

    .line 2
    iget-object v1, v0, LX6;->c:LW6;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, LW6;

    invoke-direct {v1, v0}, LW6;-><init>(LX6;)V

    iput-object v1, v0, LX6;->c:LW6;

    .line 4
    :cond_0
    iget-object v0, v0, LX6;->c:LW6;

    return-object v0
.end method
