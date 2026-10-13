.class public abstract LJF;
.super LFF;
.source "PG"

# interfaces
.implements LMF;


# direct methods
.method public constructor <init>(LLF;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, LFF;-><init>(LTF;)V

    .line 2
    iget-object p1, p0, LFF;->x:LTF;

    move-object v0, p1

    check-cast v0, LLF;

    check-cast p1, LLF;

    iget-object p1, p1, LLF;->z:LDF;

    invoke-virtual {p1}, LDF;->clone()LDF;

    move-result-object p1

    iput-object p1, v0, LLF;->z:LDF;

    return-void
.end method


# virtual methods
.method public final a(LyF;Ljava/lang/Object;)LJF;
    .locals 4

    if-eqz p1, :cond_4

    .line 1
    check-cast p1, LOF;

    .line 2
    iget-object v0, p1, LOF;->a:LhG;

    .line 3
    iget-object v1, p0, LFF;->w:LTF;

    if-ne v0, v1, :cond_3

    .line 4
    invoke-virtual {p0}, LJF;->g()V

    .line 5
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, LLF;

    iget-object v0, v0, LLF;->z:LDF;

    iget-object v1, p1, LOF;->d:LNF;

    .line 6
    iget-boolean v2, v1, LNF;->z:Z

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, v1, LNF;->y:LJG;

    .line 8
    iget-object v2, v2, LJG;->w:LKG;

    .line 9
    sget-object v3, LKG;->D:LKG;

    if-ne v2, v3, :cond_2

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 12
    invoke-virtual {p1, v3}, LOF;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p2, v2

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1, p2}, LOF;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 14
    :cond_2
    :goto_1
    invoke-virtual {v0, v1, p2}, LDF;->b(LCF;Ljava/lang/Object;)V

    return-object p0

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x0

    .line 16
    throw p1
.end method

.method public clone()LFF;
    .locals 2

    .line 1
    iget-object v0, p0, LFF;->w:LTF;

    .line 2
    invoke-virtual {v0}, LTF;->d()LFF;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, LJF;->f()LLF;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, LFF;->a(LTF;)LFF;

    .line 5
    check-cast v0, LJF;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 6
    iget-object v0, p0, LFF;->w:LTF;

    .line 7
    invoke-virtual {v0}, LTF;->d()LFF;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, LJF;->f()LLF;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, LFF;->a(LTF;)LFF;

    .line 10
    check-cast v0, LJF;

    return-object v0
.end method

.method public final f()LLF;
    .locals 1

    .line 2
    iget-boolean v0, p0, LFF;->y:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, LLF;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, LFF;->x:LTF;

    check-cast v0, LLF;

    iget-object v0, v0, LLF;->z:LDF;

    invoke-virtual {v0}, LDF;->b()V

    .line 5
    invoke-super {p0}, LFF;->f()LTF;

    move-result-object v0

    check-cast v0, LLF;

    return-object v0
.end method

.method public bridge synthetic f()LTF;
    .locals 1

    .line 1
    invoke-virtual {p0}, LJF;->f()LLF;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 2

    .line 1
    iget-boolean v0, p0, LFF;->y:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, LFF;->g()V

    .line 3
    iget-object v0, p0, LFF;->x:LTF;

    move-object v1, v0

    check-cast v1, LLF;

    check-cast v0, LLF;

    iget-object v0, v0, LLF;->z:LDF;

    invoke-virtual {v0}, LDF;->clone()LDF;

    move-result-object v0

    iput-object v0, v1, LLF;->z:LDF;

    return-void
.end method
