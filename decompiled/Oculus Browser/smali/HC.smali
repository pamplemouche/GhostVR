.class public LHC;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LWC;

.field public final b:LfC;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/Set;

.field public f:LjE;

.field public g:LhE;


# direct methods
.method public constructor <init>(LfC;LWC;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LHC;->c:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LHC;->d:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LHC;->e:Ljava/util/Set;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LHC;->f:LjE;

    .line 6
    iput-object v0, p0, LHC;->g:LhE;

    .line 7
    iput-object p1, p0, LHC;->b:LfC;

    .line 8
    iput-object p2, p0, LHC;->a:LWC;

    return-void
.end method


# virtual methods
.method public a(LcE;Z)LdE;
    .locals 9

    .line 1
    iget-object v0, p0, LHC;->f:LjE;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LHC;->a:LWC;

    sget-object v2, LVC;->x:LVC;

    .line 3
    iget-object v0, v0, LWC;->a:Ljava/util/Map;

    invoke-static {v0, v2}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, LHC;->f:LjE;

    .line 5
    iput-object v1, p0, LHC;->f:LjE;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    if-nez p2, :cond_1

    if-nez v4, :cond_1

    .line 6
    iget-object p1, p0, LHC;->b:LfC;

    check-cast p1, LsC;

    .line 7
    iget-object p1, p1, LsC;->b:LZB;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 8
    check-cast p1, LgC;

    const-string v0, "Cannot send message since no token and no initialize msg"

    invoke-virtual {p1, v0, p2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, LHC;->a:LWC;

    sget-object p2, LRC;->G:LRC;

    .line 10
    iget-object p1, p1, LWC;->e:Ljava/util/Map;

    invoke-static {p1, p2}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v1

    .line 11
    :cond_1
    iget-object p2, p0, LHC;->d:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 12
    iget-object p2, p0, LHC;->d:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-static {p2}, LWE;->b(Z)V

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    iget-object v2, p0, LHC;->d:Ljava/util/Set;

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    new-instance v2, LkE;

    invoke-direct {v2, p2}, LkE;-><init>(Ljava/util/Collection;)V

    .line 15
    iget-object p2, p0, LHC;->d:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 16
    iget-object p2, p0, LHC;->a:LWC;

    sget-object v3, LVC;->y:LVC;

    .line 17
    iget-object p2, p2, LWC;->a:Ljava/util/Map;

    invoke-static {p2, v3}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    move-object v7, v2

    goto :goto_1

    :cond_2
    move-object v7, v1

    .line 18
    :goto_1
    iget-object p2, p0, LHC;->c:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 19
    iget-object p2, p0, LHC;->c:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-static {p2}, LWE;->b(Z)V

    .line 20
    new-instance p2, Ljava/util/ArrayList;

    iget-object v2, p0, LHC;->c:Ljava/util/Map;

    .line 21
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    iget-object v2, p0, LHC;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LmE;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v5, v3}, LsE;->a(LmE;I)LsE;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 24
    :cond_3
    iget-object v2, p0, LHC;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 25
    new-instance v2, LrE;

    invoke-direct {v2, p2}, LrE;-><init>(Ljava/util/Collection;)V

    .line 26
    iget-object p2, p0, LHC;->a:LWC;

    sget-object v3, LVC;->z:LVC;

    .line 27
    iget-object p2, p2, LWC;->a:Ljava/util/Map;

    invoke-static {p2, v3}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    move-object v5, v2

    goto :goto_3

    :cond_4
    move-object v5, v1

    .line 28
    :goto_3
    iget-object p2, p0, LHC;->e:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 29
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    iget-object v0, p0, LHC;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LvE;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v0, LxE;

    invoke-direct {v0, p2}, LxE;-><init>(Ljava/util/Collection;)V

    .line 32
    iget-object p2, p0, LHC;->e:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 33
    iget-object p2, p0, LHC;->a:LWC;

    sget-object v2, LVC;->A:LVC;

    .line 34
    iget-object p2, p2, LWC;->a:Ljava/util/Map;

    invoke-static {p2, v2}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    move-object v6, v0

    goto :goto_4

    :cond_5
    move-object v6, v1

    .line 35
    :goto_4
    iget-object p2, p0, LHC;->g:LhE;

    if-eqz p2, :cond_6

    .line 36
    iget-object p2, p0, LHC;->a:LWC;

    sget-object v0, LVC;->w:LVC;

    .line 37
    iget-object p2, p2, LWC;->a:Ljava/util/Map;

    invoke-static {p2, v0}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 38
    iget-object p2, p0, LHC;->g:LhE;

    .line 39
    iput-object v1, p0, LHC;->g:LhE;

    move-object v8, p2

    goto :goto_5

    :cond_6
    move-object v8, v1

    .line 40
    :goto_5
    new-instance p2, LdE;

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, LdE;-><init>(LcE;LjE;LrE;LxE;LkE;LhE;)V

    return-object p2
.end method
