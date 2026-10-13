.class public final LjA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKz;
.implements Ldy;


# instance fields
.field public final a:Lpw;

.field public final b:Lry;

.field public final c:Ljy;

.field public final d:LHw;

.field public final e:LQw;

.field public final f:LFx;

.field public final g:LYw;

.field public final h:Lky;

.field public final i:Lrw;

.field public final j:Lxx;

.field public final k:LTx;

.field public final l:LQx;

.field public final m:LQx;


# direct methods
.method public constructor <init>(Lpw;Lry;Ljy;LHw;LQw;LFx;LYw;Lky;LWz;Lrw;Lxx;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p9, LTx;

    new-instance v0, Lby;

    invoke-direct {v0}, Lby;-><init>()V

    invoke-direct {p9, v0}, LTx;-><init>(LQx;)V

    iput-object p9, p0, LjA;->k:LTx;

    .line 3
    new-instance v0, LzA;

    invoke-direct {v0, p9}, LzA;-><init>(LQx;)V

    iput-object v0, p0, LjA;->l:LQx;

    .line 4
    new-instance p9, LuA;

    iget-object v0, p0, LjA;->k:LTx;

    invoke-direct {p9, v0}, LuA;-><init>(LQx;)V

    iput-object p9, p0, LjA;->m:LQx;

    .line 5
    iput-object p1, p0, LjA;->a:Lpw;

    .line 6
    iput-object p2, p0, LjA;->b:Lry;

    .line 7
    iput-object p3, p0, LjA;->c:Ljy;

    .line 8
    iput-object p4, p0, LjA;->d:LHw;

    .line 9
    iput-object p5, p0, LjA;->e:LQw;

    .line 10
    iput-object p6, p0, LjA;->f:LFx;

    .line 11
    iput-object p7, p0, LjA;->g:LYw;

    .line 12
    iput-object p8, p0, LjA;->h:Lky;

    .line 13
    iput-object p10, p0, LjA;->i:Lrw;

    .line 14
    iput-object p11, p0, LjA;->j:Lxx;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;
    .locals 7

    .line 68
    new-instance v6, LZz;

    iget-object v3, p0, LjA;->e:LQw;

    iget-object v4, p0, LjA;->b:Lry;

    const-string v5, "action-dismiss"

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LZz;-><init>(Ljava/util/List;Ljava/util/List;LQw;Lry;Ljava/lang/String;)V

    .line 69
    new-instance p1, LiA;

    invoke-direct {p1, v6}, LiA;-><init>(LZz;)V

    return-object p1
.end method

.method public a(Ljava/util/Set;LLx;Z)Ljava/lang/Runnable;
    .locals 10

    .line 65
    new-instance v4, LgA;

    invoke-direct {v4, p0}, LgA;-><init>(LjA;)V

    .line 66
    new-instance v9, LMz;

    iget-object v1, p0, LjA;->a:Lpw;

    iget-object v5, p0, LjA;->d:LHw;

    iget-object v6, p0, LjA;->f:LFx;

    iget-object v7, p0, LjA;->b:Lry;

    move-object v0, v9

    move-object v2, p2

    move-object v3, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, LMz;-><init>(Lpw;LLx;Ljava/util/Set;LLx;LHw;LFx;Lry;Z)V

    .line 67
    new-instance p1, LhA;

    invoke-direct {p1, v9}, LhA;-><init>(LMz;)V

    return-object p1
.end method

.method public a(Ljava/util/List;)Lsx;
    .locals 10

    .line 30
    iget-object v0, p0, LjA;->g:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 31
    iget-object v0, p0, LjA;->b:Lry;

    const-string v1, "PersistentFeedStore"

    invoke-virtual {v0, v1}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v0

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "sp::"

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 35
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_0
    iget-object v4, p0, LjA;->d:LHw;

    invoke-interface {v4, v3}, LHw;->a(Ljava/util/List;)Lsx;

    move-result-object v3

    .line 37
    iget-boolean v4, v3, Lsx;->b:Z

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_2

    .line 38
    invoke-virtual {v3}, Lsx;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 41
    new-instance v9, LXw;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v9, v4, v3}, LXw;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v7

    const-string v4, "Error fetching semantic properties for content ids %s"

    .line 42
    invoke-static {v1, v4, v3}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "getSemanticProperties failed"

    aput-object v3, v1, v7

    aput-object p1, v1, v8

    .line 43
    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    :cond_3
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "task"

    aput-object v1, p1, v7

    const-string v1, "getSemanticProperties"

    aput-object v1, p1, v8

    const-string v1, "size"

    aput-object v1, p1, v5

    const/4 v1, 0x3

    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v1

    invoke-virtual {v0, p1}, Lny;->a([Ljava/lang/Object;)V

    .line 45
    invoke-static {v2}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 7

    .line 56
    iget-object v0, p0, LjA;->g:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 57
    iget-object v0, p0, LjA;->b:Lry;

    const-string v1, "PersistentFeedStore"

    invoke-virtual {v0, v1}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v0

    .line 58
    iget-object v1, p0, LjA;->e:LQw;

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    new-instance v3, LNw;

    invoke-direct {v3}, LNw;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    new-array v4, v3, [B

    .line 61
    new-instance v5, LLw;

    invoke-direct {v5, v4}, LLw;-><init>([B)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v4, LJw;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    const-string v6, "$HEAD"

    invoke-direct {v4, v6, v5, v2}, LJw;-><init>(Ljava/lang/String;Ljava/util/List;LIw;)V

    .line 63
    invoke-interface {v1, v4}, LQw;->a(LJw;)Lxw;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "clearHead"

    aput-object v3, v1, v2

    .line 64
    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lfy;)V
    .locals 4

    .line 3
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    new-instance v1, Ley;

    iget v2, p1, Lfy;->a:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "PersistentFeedStore"

    invoke-direct {v1, v2, v3}, Ley;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, LjA;->d:LHw;

    instance-of v1, v0, Ldy;

    const-string v2, "not dumpable"

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Ldy;

    invoke-virtual {p1, v0}, Lfy;->a(Ldy;)V

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p1, Lfy;->a:I

    .line 7
    new-instance v1, Ley;

    const-string v3, "contentStorageDirect"

    invoke-direct {v1, v0, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 8
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :goto_0
    iget-object v0, p0, LjA;->e:LQw;

    instance-of v1, v0, Ldy;

    if-eqz v1, :cond_1

    .line 11
    check-cast v0, Ldy;

    invoke-virtual {p1, v0}, Lfy;->a(Ldy;)V

    goto :goto_1

    .line 12
    :cond_1
    iget v0, p1, Lfy;->a:I

    .line 13
    new-instance v1, Ley;

    const-string v3, "journalStorage"

    invoke-direct {v1, v0, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 14
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :goto_1
    iget v0, p1, Lfy;->a:I

    .line 17
    new-instance v1, Ley;

    const-string v2, "contentIdStringInternerSize"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 18
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, LjA;->k:LTx;

    .line 20
    invoke-virtual {v0}, LTx;->size()I

    move-result v0

    .line 21
    iget-object v2, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, v1, Ley;->d:Z

    .line 23
    iget v1, p1, Lfy;->a:I

    .line 24
    new-instance v2, Ley;

    const-string v3, "contentIdStringInternerStats"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 25
    iget-object p1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object p1, p0, LjA;->k:LTx;

    .line 27
    invoke-virtual {p1}, LTx;->a()Ljava/lang/String;

    move-result-object p1

    .line 28
    iget-object v1, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iput-boolean v0, v2, Ley;->d:Z

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lqx;

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "PersistentFeedStore does not support observer directly"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .line 46
    iget-object v0, p0, LjA;->g:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 47
    iget-object v0, p0, LjA;->b:Lry;

    const-string v1, "PersistentFeedStore"

    invoke-virtual {v0, v1}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v0

    const-string v1, "$HEAD"

    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p0, LjA;->e:LQw;

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v3, LNw;

    invoke-direct {v3}, LNw;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v3, LJw;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-direct {v3, p1, v4, v2}, LJw;-><init>(Ljava/lang/String;Ljava/util/List;LIw;)V

    .line 53
    invoke-interface {v1, v3}, LQw;->a(LJw;)Lxw;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "removeSession"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 54
    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to delete the $HEAD session"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)Lsx;
    .locals 10

    .line 21
    iget-object v0, p0, LjA;->g:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 22
    iget-object v0, p0, LjA;->b:Lry;

    const-string v1, "PersistentFeedStore"

    invoke-virtual {v0, v1}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v0

    .line 23
    iget-object v2, p0, LjA;->e:LQw;

    invoke-interface {v2, p1}, LQw;->a(Ljava/lang/String;)Lsx;

    move-result-object v2

    .line 24
    iget-boolean v3, v2, Lsx;->b:Z

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_0

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v7

    const-string v3, "Error fetching stream structures for session %s"

    .line 25
    invoke-static {v1, v3, v2}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "getStreamStructures failed"

    aput-object v2, v1, v7

    const-string v2, "session"

    aput-object v2, v1, v6

    aput-object p1, v1, v4

    .line 26
    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    .line 27
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object p1

    return-object p1

    .line 28
    :cond_0
    invoke-virtual {v2}, Lsx;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 31
    array-length v8, v3

    if-nez v8, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    :try_start_0
    iget-object v8, p0, LjA;->l:LQx;

    .line 33
    sget-object v9, LbJ;->F:LbJ;

    invoke-static {v9, v3}, LTF;->a(LTF;[B)LTF;

    move-result-object v3

    check-cast v3, LbJ;

    .line 34
    invoke-interface {v8, v3}, LQx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LbJ;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch LdG; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "Error parsing stream structure."

    .line 35
    invoke-static {v1, v3, v9, v8}, Lhy;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, p1, v7

    const-string v1, "getStreamStructures"

    aput-object v1, p1, v6

    const-string v1, "items"

    aput-object v1, p1, v4

    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v5

    invoke-virtual {v0, p1}, Lny;->a([Ljava/lang/Object;)V

    .line 37
    invoke-static {v2}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)Lsx;
    .locals 13

    .line 1
    iget-object v0, p0, LjA;->g:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 2
    iget-object v0, p0, LjA;->b:Lry;

    const-string v1, "PersistentFeedStore"

    invoke-virtual {v0, v1}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v3, p0, LjA;->d:LHw;

    invoke-interface {v3, p1}, LHw;->a(Ljava/util/List;)Lsx;

    move-result-object v3

    .line 5
    iget-boolean v4, v3, Lsx;->b:Z

    const/4 v5, 0x2

    const-string v6, "items"

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v4, :cond_0

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v8

    const-string v3, "Unsuccessful fetching payloads for content ids %s"

    .line 6
    invoke-static {v1, v3, v2}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "getPayloads failed"

    aput-object v2, v1, v8

    aput-object v6, v1, v9

    aput-object p1, v1, v5

    .line 7
    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-virtual {v3}, Lsx;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 10
    :try_start_0
    iget-object v4, p0, LjA;->m:LQx;

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    iget-object v11, p0, LjA;->c:Ljy;

    invoke-virtual {v11}, Ljy;->a()LBF;

    move-result-object v11

    .line 12
    sget-object v12, LNI;->D:LNI;

    .line 13
    invoke-static {v12, v10, v11}, LTF;->a(LTF;[BLBF;)LTF;

    move-result-object v10

    invoke-static {v10}, LTF;->a(LTF;)LTF;

    .line 14
    check-cast v10, LNI;

    .line 15
    invoke-interface {v4, v10}, LQx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LNI;

    .line 16
    new-instance v10, LWw;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v11, v4}, LWw;-><init>(Ljava/lang/String;LNI;)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch LdG; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v4, v9, [Ljava/lang/Object;

    .line 17
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v4, v8

    const-string v3, "Couldn\'t parse content proto for id %s"

    invoke-static {v1, v3, v4}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v3, p0, LjA;->j:Lxx;

    new-instance v4, LaA;

    invoke-direct {v4, p0}, LaA;-><init>(LjA;)V

    const-string v10, "ITEM_NOT_PARSED"

    invoke-virtual {v3, v10, v4}, Lxx;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, p1, v8

    const-string v1, "getPayloads"

    aput-object v1, p1, v9

    aput-object v6, p1, v5

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v7

    invoke-virtual {v0, p1}, Lny;->a([Ljava/lang/Object;)V

    .line 20
    invoke-static {v2}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lox;
    .locals 2

    .line 16
    iget-object v0, p0, LjA;->g:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 17
    new-instance v0, LVz;

    new-instance v1, LcA;

    invoke-direct {v1, p0, p1}, LcA;-><init>(LjA;Ljava/lang/String;)V

    invoke-direct {v0, v1}, LVz;-><init>(LIx;)V

    return-object v0
.end method

.method public c()Lsx;
    .locals 7

    .line 1
    iget-object v0, p0, LjA;->g:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 2
    iget-object v0, p0, LjA;->b:Lry;

    const-string v1, "PersistentFeedStore"

    invoke-virtual {v0, v1}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v0

    .line 3
    iget-object v2, p0, LjA;->e:LQw;

    invoke-interface {v2}, LQw;->a()Lsx;

    move-result-object v2

    .line 4
    iget-boolean v3, v2, Lsx;->b:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Error fetching all journals"

    .line 5
    invoke-static {v1, v3, v2}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "getAllSessions failed"

    aput-object v2, v1, v5

    .line 6
    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v2}, Lsx;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "$HEAD"

    .line 11
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "action-dismiss"

    .line 12
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v1, v5

    const-string v3, "getAllSessions"

    aput-object v3, v1, v4

    const/4 v3, 0x2

    const-string v4, "items"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    .line 15
    invoke-static {v2}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object v0

    return-object v0
.end method

.method public f()Lmx;
    .locals 2

    .line 1
    iget-object v0, p0, LjA;->g:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 2
    new-instance v0, LTz;

    new-instance v1, LbA;

    invoke-direct {v1, p0}, LbA;-><init>(LjA;)V

    invoke-direct {v0, v1}, LTz;-><init>(LIx;)V

    return-object v0
.end method

.method public g()Lnx;
    .locals 2

    .line 1
    iget-object v0, p0, LjA;->g:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 2
    new-instance v0, LUz;

    new-instance v1, LdA;

    invoke-direct {v1, p0}, LdA;-><init>(LjA;)V

    invoke-direct {v0, v1}, LUz;-><init>(LIx;)V

    return-object v0
.end method

.method public h()Lrx;
    .locals 2

    .line 1
    new-instance v0, LYz;

    new-instance v1, LfA;

    invoke-direct {v1, p0}, LfA;-><init>(LjA;)V

    invoke-direct {v0, v1}, LYz;-><init>(LIx;)V

    return-object v0
.end method

.method public i()Lsx;
    .locals 11

    .line 1
    iget-object v0, p0, LjA;->g:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 2
    iget-object v0, p0, LjA;->b:Lry;

    const-string v1, "PersistentFeedStore"

    invoke-virtual {v0, v1}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v0

    .line 3
    iget-object v2, p0, LjA;->d:LHw;

    const-string v3, "ss::"

    invoke-interface {v2, v3}, LHw;->a(Ljava/lang/String;)Lsx;

    move-result-object v2

    .line 4
    iget-boolean v3, v2, Lsx;->b:Z

    const-string v4, "failed"

    const-string v5, "getSharedStates"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v3, :cond_0

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "Error fetching shared states"

    .line 5
    invoke-static {v1, v3, v2}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v5, v1, v8

    aput-object v4, v1, v7

    .line 6
    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v2}, Lsx;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 11
    :try_start_0
    sget-object v10, LXI;->E:LXI;

    invoke-static {v10, v9}, LTF;->a(LTF;[B)LTF;

    move-result-object v10

    check-cast v10, LXI;

    .line 12
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch LdG; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v9, v3, v8

    const-string v9, "Error parsing protocol buffer from bytes %s"

    .line 13
    invoke-static {v1, v2, v9, v3}, Lhy;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v5, v1, v8

    aput-object v4, v1, v7

    .line 14
    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v8

    aput-object v5, v1, v7

    const-string v2, "items"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    .line 16
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    .line 17
    invoke-static {v3}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()Lsx;
    .locals 11

    .line 1
    iget-object v0, p0, LjA;->g:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 2
    iget-object v0, p0, LjA;->b:Lry;

    const-string v1, "PersistentFeedStore"

    invoke-virtual {v0, v1}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v0

    .line 3
    iget-object v2, p0, LjA;->d:LHw;

    const-string v3, "ua::"

    invoke-interface {v2, v3}, LHw;->a(Ljava/lang/String;)Lsx;

    move-result-object v2

    .line 4
    iget-boolean v3, v2, Lsx;->b:Z

    const-string v4, "failed"

    const-string v5, "getAllUploadableActions"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v3, :cond_0

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "Error fetching shared states"

    .line 5
    invoke-static {v1, v3, v2}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v5, v1, v8

    aput-object v4, v1, v7

    .line 6
    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v2}, Lsx;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 10
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 11
    :try_start_0
    sget-object v10, LhJ;->F:LhJ;

    invoke-static {v10, v9}, LTF;->a(LTF;[B)LTF;

    move-result-object v10

    check-cast v10, LhJ;

    .line 12
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch LdG; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v8

    aput-object v4, v3, v7

    .line 13
    invoke-virtual {v0, v3}, Lny;->a([Ljava/lang/Object;)V

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v9, v0, v8

    const-string v3, "Error parsing protocol buffer from bytes %s"

    .line 14
    invoke-static {v1, v2, v3, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v8

    aput-object v5, v1, v7

    const-string v2, "items"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    .line 16
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    .line 17
    invoke-static {v3}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object v0

    return-object v0
.end method

.method public l()Lsx;
    .locals 10

    .line 1
    iget-object v0, p0, LjA;->g:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 2
    iget-object v0, p0, LjA;->b:Lry;

    const-string v1, "PersistentFeedStore"

    invoke-virtual {v0, v1}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v0

    .line 3
    iget-object v2, p0, LjA;->e:LQw;

    const-string v3, "action-dismiss"

    invoke-interface {v2, v3}, LQw;->a(Ljava/lang/String;)Lsx;

    move-result-object v2

    .line 4
    iget-boolean v3, v2, Lsx;->b:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Error retrieving dismiss journal"

    .line 5
    invoke-static {v1, v3, v2}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "getAllDismissLocalActions failed"

    aput-object v2, v1, v5

    .line 6
    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v2}, Lsx;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 11
    :try_start_0
    sget-object v8, LJI;->D:LJI;

    invoke-static {v8, v6}, LTF;->a(LTF;[B)LTF;

    move-result-object v8

    check-cast v8, LJI;

    .line 12
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch LdG; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    new-array v7, v7, [Ljava/lang/Object;

    .line 13
    invoke-static {v6, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    array-length v6, v6

    .line 14
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    const-string v6, "Error parsing StreamLocalAction for bytes: %s (length %d)"

    .line 15
    invoke-static {v1, v8, v6, v7}, Lhy;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "task"

    aput-object v2, v1, v5

    const-string v2, "getAllDismissLocalActions"

    aput-object v2, v1, v4

    const-string v2, "size"

    aput-object v2, v1, v7

    const/4 v2, 0x3

    .line 16
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    .line 17
    invoke-static {v3}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 10

    .line 1
    iget-object v0, p0, LjA;->d:LHw;

    invoke-interface {v0}, LHw;->a()Lsx;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Lsx;->b:Z

    const/4 v2, 0x0

    const-string v3, "PersistentFeedStore"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "Error clearing all contents. Could not fetch all content."

    .line 3
    invoke-static {v3, v1, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v0}, Lsx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "sp::"

    .line 6
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v7, LBw;

    invoke-direct {v7, v6}, LBw;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, LjA;->d:LHw;

    .line 9
    new-instance v6, Lzw;

    invoke-direct {v6, v1, v2}, Lzw;-><init>(Ljava/util/List;Lyw;)V

    .line 10
    invoke-interface {v0, v6}, LHw;->a(Lzw;)Lxw;

    move-result-object v0

    .line 11
    sget-object v1, Lxw;->b:Lxw;

    if-eq v0, v1, :cond_3

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "Error clearing all contents. Could not commit content deletions."

    .line 12
    invoke-static {v3, v1, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_8

    .line 13
    iget-object v0, p0, LjA;->e:LQw;

    invoke-interface {v0}, LQw;->a()Lsx;

    move-result-object v0

    .line 14
    iget-boolean v1, v0, Lsx;->b:Z

    if-nez v1, :cond_4

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "Error clearing all contents. Could not fetch all journals."

    .line 15
    invoke-static {v3, v1, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    const/4 v0, 0x0

    goto :goto_5

    .line 16
    :cond_4
    invoke-virtual {v0}, Lsx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "action-dismiss"

    .line 17
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    .line 18
    :cond_6
    iget-object v6, p0, LjA;->e:LQw;

    .line 19
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v8, LNw;

    invoke-direct {v8}, LNw;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v8, LJw;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v8, v1, v9, v2}, LJw;-><init>(Ljava/lang/String;Ljava/util/List;LIw;)V

    .line 22
    invoke-interface {v6, v8}, LQw;->a(LJw;)Lxw;

    move-result-object v6

    .line 23
    sget-object v7, Lxw;->b:Lxw;

    if-eq v6, v7, :cond_5

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v5

    const-string v1, "Error clearing all contents. Could not delete journal %s"

    .line 24
    invoke-static {v3, v1, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    return v4
.end method
