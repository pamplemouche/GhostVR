.class public abstract LLF;
.super LTF;
.source "PG"

# interfaces
.implements LMF;


# instance fields
.field public z:LDF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    .line 2
    new-instance v0, LDF;

    invoke-direct {v0}, LDF;-><init>()V

    .line 3
    iput-object v0, p0, LLF;->z:LDF;

    return-void
.end method


# virtual methods
.method public final a(LyF;)Ljava/lang/Object;
    .locals 3

    if-eqz p1, :cond_5

    .line 84
    check-cast p1, LOF;

    .line 85
    iget-object v0, p1, LOF;->a:LhG;

    .line 86
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 87
    iget-object v0, p0, LLF;->z:LDF;

    iget-object v1, p1, LOF;->d:LNF;

    invoke-virtual {v0, v1}, LDF;->a(LCF;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    iget-object p1, p1, LOF;->b:Ljava/lang/Object;

    return-object p1

    .line 89
    :cond_0
    iget-object v1, p1, LOF;->d:LNF;

    .line 90
    iget-boolean v2, v1, LNF;->z:Z

    if-eqz v2, :cond_2

    .line 91
    iget-object v1, v1, LNF;->y:LJG;

    .line 92
    iget-object v1, v1, LJG;->w:LKG;

    .line 93
    sget-object v2, LKG;->D:LKG;

    if-ne v1, v2, :cond_3

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 96
    invoke-virtual {p1, v2}, LOF;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {p1, v0}, LOF;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0

    .line 98
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 p1, 0x0

    .line 99
    throw p1
.end method

.method public a(LSF;LTF;)V
    .locals 1

    .line 81
    check-cast p2, LLF;

    .line 82
    invoke-super {p0, p1, p2}, LTF;->a(LSF;LTF;)V

    .line 83
    iget-object v0, p0, LLF;->z:LDF;

    iget-object p2, p2, LLF;->z:LDF;

    invoke-interface {p1, v0, p2}, LSF;->a(LDF;LDF;)LDF;

    move-result-object p1

    iput-object p1, p0, LLF;->z:LDF;

    return-void
.end method

.method public a(LhG;LtF;LBF;I)Z
    .locals 6

    and-int/lit8 v0, p4, 0x7

    ushr-int/lit8 v1, p4, 0x3

    .line 1
    iget-object v2, p3, LBF;->a:Ljava/util/Map;

    new-instance v3, LAF;

    invoke-direct {v3, p1, v1}, LAF;-><init>(Ljava/lang/Object;I)V

    .line 2
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOF;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v4, p1, LOF;->d:LNF;

    .line 4
    iget-object v4, v4, LNF;->y:LJG;

    .line 5
    invoke-static {v4, v3}, LDF;->a(LJG;Z)I

    move-result v4

    if-ne v0, v4, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 6
    :cond_1
    iget-object v4, p1, LOF;->d:LNF;

    iget-boolean v5, v4, LNF;->z:Z

    if-eqz v5, :cond_2

    iget-object v4, v4, LNF;->y:LJG;

    .line 7
    invoke-virtual {v4}, LJG;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p1, LOF;->d:LNF;

    .line 8
    iget-object v4, v4, LNF;->y:LJG;

    .line 9
    invoke-static {v4, v2}, LDF;->a(LJG;Z)I

    move-result v4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x0

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0, p4, p2}, LTF;->a(ILtF;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v4, :cond_7

    .line 11
    invoke-virtual {p2}, LtF;->k()I

    move-result p3

    .line 12
    invoke-virtual {p2, p3}, LtF;->b(I)I

    move-result p3

    .line 13
    iget-object p4, p1, LOF;->d:LNF;

    .line 14
    iget-object p4, p4, LNF;->y:LJG;

    .line 15
    sget-object v0, LJG;->L:LJG;

    if-ne p4, v0, :cond_5

    .line 16
    :goto_3
    invoke-virtual {p2}, LtF;->a()I

    move-result p4

    if-lez p4, :cond_6

    .line 17
    invoke-virtual {p2}, LtF;->k()I

    move-result p4

    .line 18
    iget-object v0, p1, LOF;->d:LNF;

    .line 19
    iget-object v0, v0, LNF;->w:LWF;

    .line 20
    invoke-interface {v0, p4}, LWF;->a(I)LVF;

    move-result-object p4

    if-nez p4, :cond_4

    return v2

    .line 21
    :cond_4
    iget-object v0, p0, LLF;->z:LDF;

    iget-object v1, p1, LOF;->d:LNF;

    .line 22
    invoke-virtual {p1, p4}, LOF;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 23
    invoke-virtual {v0, v1, p4}, LDF;->a(LCF;Ljava/lang/Object;)V

    goto :goto_3

    .line 24
    :cond_5
    :goto_4
    invoke-virtual {p2}, LtF;->a()I

    move-result p4

    if-lez p4, :cond_6

    .line 25
    iget-object p4, p1, LOF;->d:LNF;

    .line 26
    iget-object p4, p4, LNF;->y:LJG;

    .line 27
    invoke-static {p2, p4, v3}, LDF;->a(LtF;LJG;Z)Ljava/lang/Object;

    move-result-object p4

    .line 28
    iget-object v0, p0, LLF;->z:LDF;

    iget-object v1, p1, LOF;->d:LNF;

    invoke-virtual {v0, v1, p4}, LDF;->a(LCF;Ljava/lang/Object;)V

    goto :goto_4

    .line 29
    :cond_6
    iput p3, p2, LtF;->j:I

    .line 30
    invoke-virtual {p2}, LtF;->r()V

    goto/16 :goto_7

    .line 31
    :cond_7
    iget-object p4, p1, LOF;->d:LNF;

    .line 32
    iget-object p4, p4, LNF;->y:LJG;

    .line 33
    iget-object p4, p4, LJG;->w:LKG;

    .line 34
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    const/4 v0, 0x7

    if-eq p4, v0, :cond_e

    const/16 v0, 0x8

    if-eq p4, v0, :cond_8

    .line 35
    iget-object p3, p1, LOF;->d:LNF;

    .line 36
    iget-object p3, p3, LNF;->y:LJG;

    .line 37
    invoke-static {p2, p3, v3}, LDF;->a(LtF;LJG;Z)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_6

    :cond_8
    const/4 p4, 0x0

    .line 38
    iget-object v0, p1, LOF;->d:LNF;

    .line 39
    iget-boolean v1, v0, LNF;->z:Z

    if-nez v1, :cond_9

    .line 40
    iget-object v1, p0, LLF;->z:LDF;

    .line 41
    iget-object v1, v1, LDF;->a:LtG;

    invoke-virtual {v1, v0}, LtG;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    check-cast v0, LhG;

    if-eqz v0, :cond_9

    .line 43
    invoke-interface {v0}, LhG;->c()LgG;

    move-result-object p4

    :cond_9
    if-nez p4, :cond_a

    .line 44
    iget-object p4, p1, LOF;->c:LhG;

    .line 45
    invoke-interface {p4}, LhG;->d()LgG;

    move-result-object p4

    .line 46
    :cond_a
    iget-object v0, p1, LOF;->d:LNF;

    .line 47
    iget-object v1, v0, LNF;->y:LJG;

    .line 48
    sget-object v4, LJG;->H:LJG;

    if-ne v1, v4, :cond_c

    .line 49
    iget v0, v0, LNF;->x:I

    .line 50
    iget v1, p2, LtF;->k:I

    iget v3, p2, LtF;->l:I

    if-ge v1, v3, :cond_b

    add-int/2addr v1, v2

    .line 51
    iput v1, p2, LtF;->k:I

    .line 52
    move-object v1, p4

    check-cast v1, LFF;

    invoke-virtual {v1, p2, p3}, LFF;->a(LtF;LBF;)LgG;

    shl-int/lit8 p3, v0, 0x3

    or-int/lit8 p3, p3, 0x4

    .line 53
    invoke-virtual {p2, p3}, LtF;->a(I)V

    .line 54
    iget p3, p2, LtF;->k:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p2, LtF;->k:I

    goto :goto_5

    .line 55
    :cond_b
    invoke-static {}, LdG;->c()LdG;

    move-result-object p1

    throw p1

    .line 56
    :cond_c
    invoke-virtual {p2}, LtF;->k()I

    move-result v0

    .line 57
    iget v1, p2, LtF;->k:I

    iget v4, p2, LtF;->l:I

    if-ge v1, v4, :cond_d

    .line 58
    invoke-virtual {p2, v0}, LtF;->b(I)I

    move-result v0

    .line 59
    iget v1, p2, LtF;->k:I

    add-int/2addr v1, v2

    iput v1, p2, LtF;->k:I

    .line 60
    move-object v1, p4

    check-cast v1, LFF;

    invoke-virtual {v1, p2, p3}, LFF;->a(LtF;LBF;)LgG;

    .line 61
    invoke-virtual {p2, v3}, LtF;->a(I)V

    .line 62
    iget p3, p2, LtF;->k:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p2, LtF;->k:I

    .line 63
    iput v0, p2, LtF;->j:I

    .line 64
    invoke-virtual {p2}, LtF;->r()V

    .line 65
    :goto_5
    check-cast p4, LFF;

    .line 66
    invoke-virtual {p4}, LFF;->e()LTF;

    move-result-object p2

    goto :goto_6

    .line 67
    :cond_d
    invoke-static {}, LdG;->c()LdG;

    move-result-object p1

    throw p1

    .line 68
    :cond_e
    invoke-virtual {p2}, LtF;->k()I

    move-result p2

    .line 69
    iget-object p3, p1, LOF;->d:LNF;

    .line 70
    iget-object p3, p3, LNF;->w:LWF;

    .line 71
    invoke-interface {p3, p2}, LWF;->a(I)LVF;

    move-result-object p3

    if-nez p3, :cond_f

    .line 72
    invoke-virtual {p0, v1, p2}, LTF;->a(II)V

    return v2

    :cond_f
    move-object p2, p3

    .line 73
    :goto_6
    iget-object p3, p1, LOF;->d:LNF;

    .line 74
    iget-boolean p4, p3, LNF;->z:Z

    if-eqz p4, :cond_10

    .line 75
    iget-object p4, p0, LLF;->z:LDF;

    .line 76
    invoke-virtual {p1, p2}, LOF;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 77
    invoke-virtual {p4, p3, p1}, LDF;->a(LCF;Ljava/lang/Object;)V

    goto :goto_7

    .line 78
    :cond_10
    iget-object p4, p0, LLF;->z:LDF;

    .line 79
    invoke-virtual {p1, p2}, LOF;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 80
    invoke-virtual {p4, p3, p1}, LDF;->b(LCF;Ljava/lang/Object;)V

    :goto_7
    return v2
.end method

.method public bridge synthetic b()LhG;
    .locals 1

    .line 1
    invoke-super {p0}, LTF;->b()LTF;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()LgG;
    .locals 1

    .line 1
    invoke-super {p0}, LTF;->c()LFF;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()LgG;
    .locals 1

    .line 1
    invoke-super {p0}, LTF;->d()LFF;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 1

    .line 1
    invoke-super {p0}, LTF;->i()V

    .line 2
    iget-object v0, p0, LLF;->z:LDF;

    invoke-virtual {v0}, LDF;->b()V

    return-void
.end method

.method public j()Z
    .locals 4

    .line 1
    iget-object v0, p0, LLF;->z:LDF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, v0, LDF;->a:LtG;

    invoke-virtual {v3}, LtG;->b()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, v0, LDF;->a:LtG;

    invoke-virtual {v3, v2}, LtG;->a(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-virtual {v0, v3}, LDF;->a(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, v0, LDF;->a:LtG;

    invoke-virtual {v2}, LtG;->c()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5
    invoke-virtual {v0, v3}, LDF;->a(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public k()I
    .locals 5

    .line 1
    iget-object v0, p0, LLF;->z:LDF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, v0, LDF;->a:LtG;

    invoke-virtual {v3}, LtG;->b()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 3
    iget-object v3, v0, LDF;->a:LtG;

    .line 4
    invoke-virtual {v3, v1}, LtG;->a(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LCF;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, LDF;->c(LCF;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, LDF;->a:LtG;

    invoke-virtual {v0}, LtG;->c()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LCF;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, LDF;->c(LCF;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    return v2
.end method

.method public l()LKF;
    .locals 3

    .line 1
    new-instance v0, LKF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LKF;-><init>(LLF;ZLEF;)V

    return-object v0
.end method
