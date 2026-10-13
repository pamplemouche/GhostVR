.class public final Llz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpx;

.field public final b:Lry;

.field public final c:LYw;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;

.field public g:Z

.field public h:Lkz;


# direct methods
.method public constructor <init>(Lpx;Lry;LYw;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llz;->d:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llz;->e:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llz;->f:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Llz;->a:Lpx;

    .line 6
    iput-object p2, p0, Llz;->b:Lry;

    .line 7
    iput-object p3, p0, Llz;->c:LYw;

    return-void
.end method


# virtual methods
.method public a(LKx;)Lsx;
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "HeadFilter"

    const-string v3, "filterHead"

    .line 21
    invoke-static {v2, v3, v1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget-object v1, p0, Llz;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    iget-boolean v2, p0, Llz;->g:Z

    if-nez v2, :cond_0

    const-string p1, "HeadFilter"

    const-string v2, "HeadFilter has not been initialized"

    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    invoke-static {p1, v2, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object v1, p0, Llz;->b:Lry;

    const-string v2, "HeadFilter"

    invoke-virtual {v1, v2}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v1

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iget-object v3, p0, Llz;->h:Lkz;

    invoke-static {v3}, Ltx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {p0, v3, p1, v2}, Llz;->a(Lkz;LKx;Ljava/util/List;)V

    const/4 p1, 0x1

    new-array v3, p1, [Ljava/lang/Object;

    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "HeadFilter"

    const-string v5, "filterList size %s"

    invoke-static {v4, v5, v3}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "task"

    aput-object v4, v3, v0

    const-string v0, "HeadFilter.filterHead"

    aput-object v0, v3, p1

    .line 32
    invoke-virtual {v1, v3}, Lny;->a([Ljava/lang/Object;)V

    .line 33
    invoke-static {v2}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(LJx;)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "HeadFilter"

    const-string v3, "initialize HeadFilter"

    .line 1
    invoke-static {v2, v3, v1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Llz;->c:LYw;

    invoke-virtual {v1}, LYw;->b()V

    .line 3
    iget-object v1, p0, Llz;->b:Lry;

    const-string v2, "HeadFilter"

    invoke-virtual {v1, v2}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v1

    .line 4
    iget-object v2, p0, Llz;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-boolean v3, p0, Llz;->g:Z

    if-eqz v3, :cond_0

    .line 6
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v0

    invoke-interface {p1, v0}, LJx;->a(Ljava/lang/Object;)V

    .line 7
    monitor-exit v2

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Llz;->b()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_1

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v0

    const-string v0, "buildTree Failed"

    aput-object v0, v3, v5

    .line 9
    invoke-virtual {v1, v3}, Lny;->a([Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v0

    invoke-interface {p1, v0}, LJx;->a(Ljava/lang/Object;)V

    .line 11
    monitor-exit v2

    return-void

    .line 12
    :cond_1
    invoke-virtual {p0}, Llz;->a()Z

    move-result v3

    if-nez v3, :cond_2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v0

    const-string v0, "bindChildren Failed"

    aput-object v0, v3, v5

    .line 13
    invoke-virtual {v1, v3}, Lny;->a([Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v0

    invoke-interface {p1, v0}, LJx;->a(Ljava/lang/Object;)V

    .line 15
    monitor-exit v2

    return-void

    .line 16
    :cond_2
    iput-boolean v5, p0, Llz;->g:Z

    .line 17
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "task"

    aput-object v3, v2, v0

    const-string v0, "HeadFilter.initialize"

    aput-object v0, v2, v5

    const-string v0, "content"

    aput-object v0, v2, v4

    const/4 v0, 0x3

    .line 18
    iget-object v3, p0, Llz;->f:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lny;->a([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object v0

    invoke-interface {p1, v0}, LJx;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lkz;LKx;Ljava/util/List;)V
    .locals 1

    .line 35
    iget-object v0, p1, Lkz;->b:LNI;

    if-nez v0, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 36
    iget-object p1, p1, Lkz;->a:LbJ;

    .line 37
    iget-object p1, p1, LbJ;->C:Ljava/lang/String;

    aput-object p1, p2, p3

    const-string p1, "HeadFilter"

    const-string p3, "Found unbound node %s"

    .line 38
    invoke-static {p1, p3, p2}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 39
    :cond_0
    invoke-interface {p2, p1}, LKx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_1
    iget-object v0, p0, Llz;->e:Ljava/util/Map;

    iget-object p1, p1, Lkz;->a:LbJ;

    .line 42
    iget-object p1, p1, LbJ;->C:Ljava/lang/String;

    .line 43
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkz;

    .line 45
    invoke-virtual {p0, v0, p2, p3}, Llz;->a(Lkz;LKx;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 7

    .line 46
    iget-object v0, p0, Llz;->a:Lpx;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Llz;->f:Ljava/util/Map;

    .line 47
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lpx;->b(Ljava/util/List;)Lsx;

    move-result-object v0

    .line 48
    iget-boolean v1, v0, Lsx;->b:Z

    const-string v2, "HeadFilter"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Unable to get payloads"

    .line 49
    invoke-static {v2, v1, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 50
    :cond_0
    invoke-virtual {v0}, Lsx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LWw;

    .line 51
    iget-object v5, p0, Llz;->f:Ljava/util/Map;

    iget-object v6, v1, LWw;->a:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkz;

    if-nez v5, :cond_1

    new-array v4, v4, [Ljava/lang/Object;

    .line 52
    iget-object v1, v1, LWw;->a:Ljava/lang/String;

    aput-object v1, v4, v3

    const-string v1, "Unable to find tree content for %s"

    invoke-static {v2, v1, v4}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, v1, LWw;->b:LNI;

    iput-object v1, v5, Lkz;->b:LNI;

    goto :goto_0

    :cond_2
    return v4
.end method

.method public final b()Z
    .locals 9

    .line 1
    iget-object v0, p0, Llz;->a:Lpx;

    const-string v1, "$HEAD"

    invoke-interface {v0, v1}, Lpx;->b(Ljava/lang/String;)Lsx;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Lsx;->b:Z

    const-string v2, "HeadFilter"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Unable to load $HEAD"

    .line 3
    invoke-static {v2, v1, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 4
    :cond_0
    invoke-virtual {v0}, Lsx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "size of $head %s"

    invoke-static {v2, v5, v4}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LbJ;

    .line 7
    invoke-virtual {v4}, LbJ;->m()LaJ;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eq v5, v1, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_8

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    new-array v5, v1, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v4}, LbJ;->m()LaJ;

    move-result-object v4

    aput-object v4, v5, v3

    const-string v4, "Unsupported Operation %s"

    invoke-static {v2, v4, v5}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v5, v4, LbJ;->C:Ljava/lang/String;

    .line 10
    invoke-virtual {v4}, LbJ;->n()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 11
    iget-object v4, v4, LbJ;->D:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 12
    :goto_1
    iget-object v7, p0, Llz;->f:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkz;

    if-nez v7, :cond_4

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v5, v4, v3

    const-string v5, "Unable to find StreamStructure %s to remove"

    .line 13
    invoke-static {v2, v5, v4}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v5, v4, v3

    const-string v5, "Removing Root is not supported, unable to remove %s"

    .line 14
    invoke-static {v2, v5, v4}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_5
    iget-object v8, p0, Llz;->e:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v3

    aput-object v5, v6, v1

    const-string v4, "Parent %s not found, unable to remove"

    .line 16
    invoke-static {v2, v4, v6}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 17
    :cond_6
    invoke-interface {v8, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v3

    aput-object v4, v6, v1

    const-string v4, "Removing %s, not found in parent %s"

    .line 18
    invoke-static {v2, v4, v6}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_7
    :goto_2
    iget-object v4, p0, Llz;->e:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v4, p0, Llz;->f:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 21
    :cond_8
    iget-object v5, v4, LbJ;->C:Ljava/lang/String;

    .line 22
    iget-object v6, p0, Llz;->f:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto/16 :goto_0

    .line 23
    :cond_9
    new-instance v6, Lkz;

    invoke-direct {v6, v4}, Lkz;-><init>(LbJ;)V

    .line 24
    iget-object v7, p0, Llz;->f:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v7, p0, Llz;->e:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_a

    .line 26
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object v8, p0, Llz;->e:Ljava/util/Map;

    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_a
    invoke-virtual {v4}, LbJ;->n()Z

    move-result v5

    if-nez v5, :cond_c

    .line 29
    iget-object v4, p0, Llz;->h:Lkz;

    if-eqz v4, :cond_b

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Found Multiple roots"

    .line 30
    invoke-static {v2, v5, v4}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :cond_b
    iput-object v6, p0, Llz;->h:Lkz;

    goto/16 :goto_0

    .line 32
    :cond_c
    iget-object v4, v4, LbJ;->D:Ljava/lang/String;

    .line 33
    iget-object v5, p0, Llz;->e:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_d

    .line 34
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iget-object v7, p0, Llz;->e:Ljava/util/Map;

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_d
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 37
    :cond_e
    iget-object v0, p0, Llz;->h:Lkz;

    if-nez v0, :cond_f

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Root was not found"

    .line 38
    invoke-static {v2, v1, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_f
    return v1
.end method
