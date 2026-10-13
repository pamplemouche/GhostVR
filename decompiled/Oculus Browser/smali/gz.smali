.class public Lgz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJx;


# instance fields
.field public final a:Llw;

.field public final b:Ljava/lang/String;

.field public final synthetic c:Liz;


# direct methods
.method public synthetic constructor <init>(Liz;Llw;Ljava/lang/String;Lez;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgz;->c:Liz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lgz;->a:Llw;

    .line 3
    iput-object p3, p0, Lgz;->b:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Liz;->p:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Lsx;

    .line 2
    iget-object v0, p0, Lgz;->c:Liz;

    iget-object v0, v0, Liz;->p:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-boolean v0, p1, Lsx;->b:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lgz;->c:Liz;

    invoke-virtual {p1}, Lsx;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVw;

    iget-object v1, v1, LVw;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LzI;

    .line 6
    invoke-virtual {v2}, LzI;->k()LbJ;

    move-result-object v3

    invoke-virtual {v3}, LbJ;->m()LaJ;

    move-result-object v3

    .line 7
    sget-object v4, LaJ;->z:LaJ;

    if-ne v3, v4, :cond_0

    .line 8
    invoke-static {v2}, LEz;->a(LzI;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v2}, LzI;->k()LbJ;

    move-result-object v3

    .line 10
    iget-object v3, v3, LbJ;->C:Ljava/lang/String;

    .line 11
    invoke-virtual {v2}, LzI;->j()LNI;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, LNI;->m()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    iget-object v4, v0, Liz;->b:Ljava/util/Map;

    invoke-virtual {v2}, LNI;->k()LXI;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 14
    throw p1

    .line 15
    :cond_2
    iget-object v0, p0, Lgz;->c:Liz;

    .line 16
    iget-object v2, v0, Liz;->h:LEz;

    .line 17
    iget-object v3, p0, Lgz;->b:Ljava/lang/String;

    iget-object v4, p0, Lgz;->a:Llw;

    new-instance v5, Lfz;

    invoke-direct {v5, v0}, Lfz;-><init>(Liz;)V

    iget-object v0, p0, Lgz;->c:Liz;

    .line 18
    iget-object v6, v0, Liz;->t:Lew;

    .line 19
    iget v0, v2, LEz;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, LEz;->k:I

    .line 20
    new-instance v0, LDz;

    iget-object v7, v2, LEz;->i:Lxx;

    iget-object v8, v2, LEz;->j:Lrw;

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, LDz;-><init>(LEz;Ljava/lang/String;Llw;Lyz;Lew;Lxx;Lrw;Lwz;)V

    .line 21
    invoke-virtual {v0, p1}, LDz;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "FeedSessionManagerImpl"

    const-string v1, "SessionMutationTracker dropping response due to clear"

    .line 22
    invoke-static {v0, v1, p1}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
