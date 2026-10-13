.class public final LMz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LLx;

.field public final b:Ljava/util/Set;

.field public final c:LLx;

.field public final d:LHw;

.field public final e:Lry;

.field public final f:LFx;

.field public final g:Z

.field public final h:J

.field public i:I


# direct methods
.method public constructor <init>(Lpw;LLx;Ljava/util/Set;LLx;LHw;LFx;Lry;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LMz;->i:I

    .line 3
    iput-object p2, p0, LMz;->a:LLx;

    .line 4
    iput-object p3, p0, LMz;->b:Ljava/util/Set;

    .line 5
    iput-object p4, p0, LMz;->c:LLx;

    .line 6
    iput-object p5, p0, LMz;->d:LHw;

    .line 7
    iput-object p6, p0, LMz;->f:LFx;

    .line 8
    iput-object p7, p0, LMz;->e:Lry;

    .line 9
    iput-boolean p8, p0, LMz;->g:Z

    const-string p2, "maximum_gc_attempts"

    const-wide/16 p3, 0xa

    .line 10
    invoke-virtual {p1, p2, p3, p4}, Lpw;->a(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, LMz;->h:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 15

    .line 1
    iget-object v0, p0, LMz;->f:LFx;

    invoke-virtual {v0}, LFx;->d()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ContentGc"

    if-eqz v0, :cond_0

    iget v0, p0, LMz;->i:I

    int-to-long v4, v0

    iget-wide v6, p0, LMz;->h:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    new-array v4, v2, [Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "Re-enqueuing triggerContentGc; attempts(%d)"

    invoke-static {v3, v0, v4}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget v0, p0, LMz;->i:I

    add-int/2addr v0, v2

    iput v0, p0, LMz;->i:I

    .line 4
    iget-object v0, p0, LMz;->f:LFx;

    const/16 v1, 0xb

    const/4 v2, 0x5

    new-instance v3, LLz;

    invoke-direct {v3, p0}, LLz;-><init>(LMz;)V

    invoke-virtual {v0, v1, v2, v3}, LFx;->a(IILjava/lang/Runnable;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, LMz;->e:Lry;

    invoke-virtual {v0, v3}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v0

    .line 6
    iget-object v4, p0, LMz;->e:Lry;

    invoke-virtual {v4, v3}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v4

    .line 7
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 8
    iget-object v6, p0, LMz;->d:LHw;

    invoke-interface {v6}, LHw;->a()Lsx;

    move-result-object v6

    .line 9
    iget-boolean v7, v6, Lsx;->b:Z

    if-eqz v7, :cond_1

    .line 10
    invoke-virtual {v6}, Lsx;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v5, v6}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "Unable to get all content, getAll failed"

    .line 11
    invoke-static {v3, v7, v6}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, ""

    aput-object v8, v7, v1

    const-string v9, "getPopulation"

    aput-object v9, v7, v2

    const-string v9, "contentPopulation"

    const/4 v10, 0x2

    aput-object v9, v7, v10

    .line 12
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v7, v11

    invoke-virtual {v4, v7}, Lny;->a([Ljava/lang/Object;)V

    .line 13
    iget-object v4, p0, LMz;->e:Lry;

    invoke-virtual {v4, v3}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v4

    .line 14
    iget-object v7, p0, LMz;->a:LLx;

    invoke-interface {v7}, LLx;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v8, v9, v1

    const-string v12, "getAccessible"

    aput-object v12, v9, v2

    const-string v12, "accessableContent"

    aput-object v12, v9, v10

    .line 15
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-virtual {v4, v9}, Lny;->a([Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v5, v7}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    .line 17
    iget-object v4, p0, LMz;->b:Ljava/util/Set;

    invoke-virtual {v5, v4}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    .line 18
    iget-object v4, p0, LMz;->e:Lry;

    invoke-virtual {v4, v3}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v4

    .line 19
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 20
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "sp::"

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 21
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 22
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-array v11, v6, [Ljava/lang/Object;

    aput-object v8, v11, v1

    const-string v12, "getAccessibleSemanticProperties"

    aput-object v12, v11, v2

    const-string v12, "accessibleSemanticPropertiesSize"

    aput-object v12, v11, v10

    .line 23
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x3

    aput-object v12, v11, v14

    .line 24
    invoke-virtual {v4, v11}, Lny;->a([Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v5, v9}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    .line 26
    iget-object v4, p0, LMz;->e:Lry;

    invoke-virtual {v4, v3}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v4

    .line 27
    iget-object v9, p0, LMz;->c:LLx;

    invoke-interface {v9}, LLx;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v8, v11, v1

    const-string v12, "getLocalActions"

    aput-object v12, v11, v2

    const-string v12, "actionCount"

    aput-object v12, v11, v10

    .line 28
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v14

    invoke-virtual {v4, v11}, Lny;->a([Ljava/lang/Object;)V

    .line 29
    iget-object v4, p0, LMz;->e:Lry;

    invoke-virtual {v4, v3}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v4

    .line 30
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 31
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LJI;

    .line 32
    invoke-static {v13}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 33
    iget-object v12, v12, LJI;->B:Ljava/lang/String;

    .line 34
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 35
    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-array v9, v6, [Ljava/lang/Object;

    aput-object v8, v9, v1

    const-string v12, "getLocalActionSemanticProperties"

    aput-object v12, v9, v2

    const-string v12, "actionSemanticPropertiesSize"

    aput-object v12, v9, v10

    .line 36
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v9, v13

    .line 37
    invoke-virtual {v4, v9}, Lny;->a([Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v5, v11}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    const-string v4, "ua::"

    .line 39
    invoke-virtual {p0, v5, v4}, LMz;->a(Ljava/util/Set;Ljava/lang/String;)V

    .line 40
    iget-boolean v4, p0, LMz;->g:Z

    const-string v9, "ss::"

    if-eqz v4, :cond_4

    .line 41
    invoke-virtual {p0, v5, v9}, LMz;->a(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_4

    .line 42
    :cond_4
    iget-object v4, p0, LMz;->e:Lry;

    invoke-virtual {v4, v3}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v4

    .line 43
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 44
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 45
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 46
    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-array v7, v6, [Ljava/lang/Object;

    aput-object v8, v7, v1

    const-string v9, "getAccessibleSharedStates"

    aput-object v9, v7, v2

    const-string v9, "accessibleSharedStatesSize"

    aput-object v9, v7, v10

    .line 47
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v7, v12

    .line 48
    invoke-virtual {v4, v7}, Lny;->a([Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v5, v11}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    .line 50
    :goto_4
    iget-object v4, p0, LMz;->e:Lry;

    invoke-virtual {v4, v3}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v4

    .line 51
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-array v12, v2, [Ljava/lang/Object;

    aput-object v11, v12, v1

    const-string v13, "Removing %s"

    .line 53
    invoke-static {v3, v13, v12}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    new-instance v12, LBw;

    invoke-direct {v12, v11}, LBw;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 55
    :cond_6
    iget-object v9, p0, LMz;->d:LHw;

    .line 56
    new-instance v11, Lzw;

    const/4 v12, 0x0

    invoke-direct {v11, v7, v12}, Lzw;-><init>(Ljava/util/List;Lyw;)V

    .line 57
    invoke-interface {v9, v11}, LHw;->a(Lzw;)Lxw;

    move-result-object v7

    .line 58
    sget-object v9, Lxw;->c:Lxw;

    if-ne v7, v9, :cond_7

    new-array v7, v1, [Ljava/lang/Object;

    const-string v9, "Content Modification failed removing unaccessible items."

    .line 59
    invoke-static {v3, v9, v7}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    new-array v7, v6, [Ljava/lang/Object;

    aput-object v8, v7, v1

    const-string v8, "removeUnAccessible"

    aput-object v8, v7, v2

    const-string v8, "mutations"

    aput-object v8, v7, v10

    .line 60
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-virtual {v4, v7}, Lny;->a([Ljava/lang/Object;)V

    new-array v4, v6, [Ljava/lang/Object;

    const-string v6, "task"

    aput-object v6, v4, v1

    aput-object v3, v4, v2

    const-string v1, "contentItemsRemoved"

    aput-object v1, v4, v10

    .line 61
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v4, v2

    invoke-virtual {v0, v4}, Lny;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/lang/String;)V
    .locals 5

    .line 62
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    .line 63
    iget-object v1, p0, LMz;->e:Lry;

    const-string v2, "ContentGc"

    invoke-virtual {v1, v2}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v1

    .line 64
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 65
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 67
    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "filterPrefix "

    .line 69
    invoke-static {v4, p2}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p2

    invoke-virtual {v1, v2}, Lny;->a([Ljava/lang/Object;)V

    return-void
.end method
