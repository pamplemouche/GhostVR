.class public Lle1;
.super Lqe1;
.source "PG"


# instance fields
.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [LUd1;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LUd1;

    invoke-static {p1}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object p1

    .line 5
    invoke-direct {p0}, Lqe1;-><init>()V

    .line 6
    iput-object p1, p0, Lle1;->b:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;LVd1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lqe1;-><init>()V

    .line 8
    iput-object p1, p0, Lle1;->b:Ljava/util/Map;

    return-void
.end method

.method public varargs constructor <init>([LUd1;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lqe1;-><init>()V

    .line 3
    iput-object p1, p0, Lle1;->b:Ljava/util/Map;

    return-void
.end method

.method public static a([LUd1;)Ljava/util/Map;
    .locals 5

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 43
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 44
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method public static a([LUd1;[LUd1;)[LUd1;
    .locals 3

    .line 38
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [LUd1;

    .line 39
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public a(Lde1;)F
    .locals 1

    .line 1
    iget-object v0, p0, Lle1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LYd1;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p1, LYd1;->a:F

    :goto_0
    return p1
.end method

.method public a(Lee1;)I
    .locals 1

    .line 9
    iget-object v0, p0, Lle1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LZd1;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 10
    :cond_0
    iget p1, p1, LZd1;->a:I

    :goto_0
    return p1
.end method

.method public a(Lfe1;)Ljava/lang/Object;
    .locals 1

    .line 25
    iget-object v0, p0, Lle1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbe1;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p1, Lbe1;->a:Ljava/lang/Object;

    :goto_0
    return-object p1
.end method

.method public a()Ljava/util/Collection;
    .locals 4

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iget-object v1, p0, Lle1;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LUd1;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public a(Lhe1;Z)V
    .locals 2

    .line 19
    iget-object v0, p0, Lle1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWd1;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, LWd1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LWd1;-><init>(LVd1;)V

    .line 21
    iget-object v1, p0, Lle1;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_0
    iget-boolean v1, v0, LWd1;->a:Z

    if-ne v1, p2, :cond_1

    return-void

    .line 23
    :cond_1
    :goto_0
    iput-boolean p2, v0, LWd1;->a:Z

    .line 24
    invoke-virtual {p0, p1}, Lqe1;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lie1;F)V
    .locals 2

    .line 3
    iget-object v0, p0, Lle1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LYd1;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, LYd1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LYd1;-><init>(LVd1;)V

    .line 5
    iget-object v1, p0, Lle1;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iget v1, v0, LYd1;->a:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    return-void

    .line 7
    :cond_1
    :goto_0
    iput p2, v0, LYd1;->a:F

    .line 8
    invoke-virtual {p0, p1}, Lqe1;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lje1;I)V
    .locals 2

    .line 11
    iget-object v0, p0, Lle1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZd1;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, LZd1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LZd1;-><init>(LVd1;)V

    .line 13
    iget-object v1, p0, Lle1;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_0
    iget v1, v0, LZd1;->a:I

    if-ne v1, p2, :cond_1

    return-void

    .line 15
    :cond_1
    :goto_0
    iput p2, v0, LZd1;->a:I

    .line 16
    invoke-virtual {p0, p1}, Lqe1;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lke1;Ljava/lang/Object;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lle1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe1;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lbe1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbe1;-><init>(LVd1;)V

    .line 29
    iget-object v1, p0, Lle1;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 30
    :cond_0
    iget-boolean v1, p1, Lke1;->b:Z

    if-nez v1, :cond_1

    .line 31
    iget-object v1, v0, Lbe1;->a:Ljava/lang/Object;

    .line 32
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 33
    :cond_1
    :goto_0
    iput-object p2, v0, Lbe1;->a:Ljava/lang/Object;

    .line 34
    invoke-virtual {p0, p1}, Lqe1;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lce1;)Z
    .locals 1

    .line 17
    iget-object v0, p0, Lle1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LWd1;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 18
    :cond_0
    iget-boolean p1, p1, LWd1;->a:Z

    :goto_0
    return p1
.end method
