.class public final Lrz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldy;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public final d:Lmz;

.field public final e:Lpx;

.field public final f:LFx;

.field public final g:Ltz;

.field public final h:J

.field public final i:Lry;

.field public final j:LYw;

.field public final k:Lky;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I


# direct methods
.method public constructor <init>(Lpx;LFx;Ltz;JLry;LYw;Lky;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrz;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrz;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrz;->c:Ljava/util/Map;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lrz;->l:I

    .line 6
    iput v0, p0, Lrz;->m:I

    .line 7
    iput v0, p0, Lrz;->n:I

    .line 8
    iput v0, p0, Lrz;->o:I

    .line 9
    iput v0, p0, Lrz;->p:I

    .line 10
    iput v0, p0, Lrz;->q:I

    .line 11
    iput v0, p0, Lrz;->r:I

    .line 12
    iput v0, p0, Lrz;->s:I

    .line 13
    iput-object p1, p0, Lrz;->e:Lpx;

    .line 14
    iput-object p2, p0, Lrz;->f:LFx;

    .line 15
    iput-object p3, p0, Lrz;->g:Ltz;

    .line 16
    iput-wide p4, p0, Lrz;->h:J

    .line 17
    iput-object p6, p0, Lrz;->i:Lry;

    .line 18
    iput-object p7, p0, Lrz;->j:LYw;

    .line 19
    iput-object p8, p0, Lrz;->k:Lky;

    .line 20
    new-instance p1, Lmz;

    iget-object p2, p3, Ltz;->a:Lpx;

    iget-object p4, p3, Ltz;->c:Lry;

    iget-boolean p3, p3, Ltz;->g:Z

    invoke-direct {p1, p2, p4, p3}, Lmz;-><init>(Lpx;Lry;Z)V

    .line 21
    iput-object p1, p0, Lrz;->d:Lmz;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Loz;
    .locals 2

    .line 57
    iget v0, p0, Lrz;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrz;->l:I

    .line 58
    iget-object v0, p0, Lrz;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lrz;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loz;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 8

    .line 137
    iget-object v0, p0, Lrz;->j:LYw;

    invoke-virtual {v0}, LYw;->b()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SessionCache"

    const-string v3, "Task: cleanupSessionJournals"

    .line 138
    invoke-static {v2, v3, v1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v1, p0, Lrz;->i:Lry;

    const-string v2, "SessionCache"

    invoke-virtual {v1, v2}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v1

    .line 140
    iget v2, p0, Lrz;->s:I

    .line 141
    iget-object v3, p0, Lrz;->e:Lpx;

    invoke-interface {v3}, Lpx;->c()Lsx;

    move-result-object v3

    .line 142
    iget-boolean v4, v3, Lsx;->b:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 143
    iget-object v4, p0, Lrz;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 144
    :try_start_0
    invoke-virtual {v3}, Lsx;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 145
    iget-object v7, p0, Lrz;->c:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 146
    iget-object v7, p0, Lrz;->e:Lpx;

    invoke-interface {v7, v6}, Lpx;->a(Ljava/lang/String;)V

    .line 147
    iget v6, p0, Lrz;->s:I

    add-int/2addr v6, v5

    iput v6, p0, Lrz;->s:I

    goto :goto_0

    .line 148
    :cond_1
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "SessionCache"

    const-string v6, "Error reading all sessions, Unable to cleanup session journals"

    .line 149
    invoke-static {v4, v6, v3}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "task"

    aput-object v4, v3, v0

    const-string v0, "cleanupSessionJournals"

    aput-object v0, v3, v5

    const/4 v0, 0x2

    const-string v4, "sessionsCleared"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    .line 150
    iget v4, p0, Lrz;->s:I

    sub-int/2addr v4, v2

    .line 151
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    .line 152
    invoke-virtual {v1, v3}, Lny;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public a(JI)V
    .locals 6

    .line 61
    iget-object v0, p0, Lrz;->j:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 62
    iget-object v0, p0, Lrz;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lrz;->c:Ljava/util/Map;

    iget-object v2, p0, Lrz;->d:Lmz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v2, "$HEAD"

    :try_start_1
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LwI;

    if-nez v1, :cond_0

    .line 64
    sget-object v1, LwI;->D:LwI;

    invoke-virtual {v1}, LTF;->c()LFF;

    move-result-object v1

    check-cast v1, LvI;

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v1}, LTF;->c()LFF;

    move-result-object v1

    check-cast v1, LvI;

    .line 66
    :goto_0
    iget-object v2, p0, Lrz;->c:Ljava/util/Map;

    iget-object v4, p0, Lrz;->d:Lmz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    const-string v3, "$HEAD"

    .line 67
    :try_start_2
    invoke-virtual {v1}, LFF;->g()V

    .line 68
    iget-object v4, v1, LFF;->x:LTF;

    check-cast v4, LwI;

    .line 69
    iget v5, v4, LwI;->z:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, LwI;->z:I

    .line 70
    iput-wide p1, v4, LwI;->A:J

    .line 71
    invoke-virtual {v1}, LFF;->g()V

    .line 72
    iget-object p1, v1, LFF;->x:LTF;

    check-cast p1, LwI;

    .line 73
    iget p2, p1, LwI;->z:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, LwI;->z:I

    .line 74
    iput p3, p1, LwI;->C:I

    .line 75
    invoke-virtual {v1}, LFF;->e()LTF;

    move-result-object p1

    check-cast p1, LwI;

    .line 76
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    invoke-virtual {p0}, Lrz;->j()V

    return-void

    .line 79
    :cond_1
    :try_start_3
    throw v3

    .line 80
    :cond_2
    throw v3

    :catchall_0
    move-exception p1

    .line 81
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public a(Lfy;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    new-instance v1, Ley;

    iget v2, p1, Lfy;->a:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "SessionCache"

    invoke-direct {v1, v2, v3}, Ley;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lrz;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "attached sessions"

    .line 3
    iget v2, p1, Lfy;->a:I

    .line 4
    new-instance v3, Ley;

    invoke-direct {v3, v2, v1}, Ley;-><init>(ILjava/lang/String;)V

    .line 5
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lrz;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 7
    iget-object v2, v3, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget v0, p1, Lfy;->a:I

    .line 10
    new-instance v1, Ley;

    const-string v2, "expiredSessionsCleared"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 11
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget v0, p0, Lrz;->s:I

    .line 13
    iget-object v2, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, v1, Ley;->d:Z

    .line 15
    iget v1, p1, Lfy;->a:I

    .line 16
    new-instance v2, Ley;

    const-string v3, "unboundSessionCount"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 17
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget v1, p0, Lrz;->q:I

    .line 19
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    iput-boolean v0, v2, Ley;->d:Z

    .line 21
    iget v1, p1, Lfy;->a:I

    .line 22
    new-instance v2, Ley;

    const-string v3, "detachedSessionCount"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 23
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget v1, p0, Lrz;->r:I

    .line 25
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    iput-boolean v0, v2, Ley;->d:Z

    .line 27
    iget v1, p1, Lfy;->a:I

    .line 28
    new-instance v2, Ley;

    const-string v3, "get"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 29
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget v1, p0, Lrz;->l:I

    .line 31
    iget-object v2, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    iget v1, p1, Lfy;->a:I

    .line 33
    new-instance v2, Ley;

    const-string v3, "getAttached"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 34
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget v1, p0, Lrz;->m:I

    .line 36
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    iput-boolean v0, v2, Ley;->d:Z

    .line 38
    iget v1, p1, Lfy;->a:I

    .line 39
    new-instance v2, Ley;

    const-string v3, "getAll"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 40
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget v1, p0, Lrz;->n:I

    .line 42
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    iput-boolean v0, v2, Ley;->d:Z

    .line 44
    iget v1, p1, Lfy;->a:I

    .line 45
    new-instance v2, Ley;

    const-string v3, "put"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 46
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget v1, p0, Lrz;->o:I

    .line 48
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    iput-boolean v0, v2, Ley;->d:Z

    .line 50
    iget v1, p1, Lfy;->a:I

    .line 51
    new-instance v2, Ley;

    const-string v3, "remove"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 52
    iget-object p1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget p1, p0, Lrz;->p:I

    .line 54
    iget-object v1, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    iput-boolean v0, v2, Ley;->d:Z

    return-void

    :catchall_0
    move-exception p1

    .line 56
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 11

    .line 82
    iget-object v0, p0, Lrz;->j:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 83
    iget-object v0, p0, Lrz;->d:Lmz;

    invoke-static {v0}, Ltx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQI;

    .line 85
    iget v4, v3, LQI;->z:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 86
    invoke-virtual {v3}, LQI;->j()LwI;

    move-result-object v4

    goto :goto_3

    .line 87
    :cond_1
    sget-object v4, LwI;->D:LwI;

    invoke-virtual {v4}, LTF;->c()LFF;

    move-result-object v4

    check-cast v4, LvI;

    .line 88
    iget-object v7, v3, LQI;->A:Ljava/lang/String;

    .line 89
    iget-object v8, p0, Lrz;->d:Lmz;

    if-eqz v8, :cond_a

    const-string v8, "$HEAD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 90
    iget-wide v7, v3, LQI;->B:J

    .line 91
    invoke-virtual {v4}, LFF;->g()V

    .line 92
    iget-object v9, v4, LFF;->x:LTF;

    check-cast v9, LwI;

    .line 93
    iget v10, v9, LwI;->z:I

    or-int/2addr v10, v0

    iput v10, v9, LwI;->z:I

    .line 94
    iput-wide v7, v9, LwI;->A:J

    goto :goto_2

    .line 95
    :cond_2
    iget-wide v7, v3, LQI;->B:J

    .line 96
    invoke-virtual {v4}, LFF;->g()V

    .line 97
    iget-object v9, v4, LFF;->x:LTF;

    check-cast v9, LwI;

    .line 98
    iget v10, v9, LwI;->z:I

    or-int/2addr v10, v5

    iput v10, v9, LwI;->z:I

    .line 99
    iput-wide v7, v9, LwI;->B:J

    .line 100
    :goto_2
    invoke-virtual {v4}, LFF;->e()LTF;

    move-result-object v4

    check-cast v4, LwI;

    .line 101
    :goto_3
    iget-object v7, v3, LQI;->A:Ljava/lang/String;

    const-string v8, "$HEAD"

    .line 102
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-array v3, v0, [Ljava/lang/Object;

    .line 103
    iget-wide v5, v4, LwI;->A:J

    .line 104
    invoke-static {v5, v6}, Liy;->a(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    const-string v5, "SessionCache"

    const-string v6, "Updating $HEAD state, lastAdded %s"

    .line 105
    invoke-static {v5, v6, v3}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v8, p0, Lrz;->a:Ljava/lang/Object;

    monitor-enter v8

    .line 107
    :try_start_0
    iget-object v3, p0, Lrz;->c:Ljava/util/Map;

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 109
    :cond_3
    iget-object v8, p0, Lrz;->d:Lmz;

    if-eqz v8, :cond_9

    const-string v8, "$HEAD"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 110
    iget-wide v7, v4, LwI;->B:J

    .line 111
    iget-wide v9, p0, Lrz;->h:J

    add-long/2addr v7, v9

    iget-object v9, p0, Lrz;->k:Lky;

    check-cast v9, Lly;

    if-eqz v9, :cond_5

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v6, v7, v9

    if-lez v6, :cond_4

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    throw v6

    :cond_6
    :goto_4
    const/4 v6, 0x1

    :goto_5
    if-nez v6, :cond_7

    new-array v2, v5, [Ljava/lang/Object;

    .line 113
    iget-object v3, v3, LQI;->A:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 114
    iget-wide v3, v4, LwI;->B:J

    .line 115
    invoke-static {v3, v4}, Liy;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "SessionCache"

    const-string v4, "Found expired session %s, created %s"

    .line 116
    invoke-static {v3, v4, v2}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 117
    :cond_7
    iget-object v5, p0, Lrz;->a:Ljava/lang/Object;

    monitor-enter v5

    .line 118
    :try_start_1
    iget-object v6, p0, Lrz;->c:Ljava/util/Map;

    .line 119
    iget-object v7, v3, LQI;->A:Ljava/lang/String;

    .line 120
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 121
    monitor-exit v5

    goto/16 :goto_0

    .line 122
    :cond_8
    iget-object v6, p0, Lrz;->c:Ljava/util/Map;

    .line 123
    iget-object v3, v3, LQI;->A:Ljava/lang/String;

    .line 124
    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 126
    :cond_9
    throw v6

    .line 127
    :cond_a
    throw v6

    :cond_b
    const/4 p1, 0x5

    if-eqz v2, :cond_c

    .line 128
    iget-object v1, p0, Lrz;->f:LFx;

    new-instance v2, Lpz;

    invoke-direct {v2, p0}, Lpz;-><init>(Lrz;)V

    invoke-virtual {v1, v0, p1, v2}, LFx;->a(IILjava/lang/Runnable;)V

    .line 129
    :cond_c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "FSM::Sessions::0"

    .line 130
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ct"

    .line 131
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, Lrz;->f:LFx;

    const/16 v2, 0xb

    iget-object v3, p0, Lrz;->e:Lpx;

    .line 133
    new-instance v4, Lqz;

    invoke-direct {v4, p0}, Lqz;-><init>(Lrz;)V

    .line 134
    invoke-virtual {p0}, Lrz;->i()Z

    move-result v5

    .line 135
    invoke-interface {v3, v0, v4, v5}, Lpx;->a(Ljava/util/Set;LLx;Z)Ljava/lang/Runnable;

    move-result-object v0

    .line 136
    invoke-virtual {v1, v2, p1, v0}, LFx;->a(IILjava/lang/Runnable;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lrz;->j:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 2
    iget v0, p0, Lrz;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrz;->n:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lrz;->g()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    iget-object v1, p0, Lrz;->d:Lmz;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lrz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lrz;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    return-object v0

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lrz;->j:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 11
    iget v0, p0, Lrz;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrz;->p:I

    .line 12
    iget-object v0, p0, Lrz;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lrz;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lrz;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lrz;->b:Ljava/util/Map;

    .line 16
    invoke-interface {p1}, Ljava/util/Map;->size()I

    iget-object p1, p0, Lrz;->c:Ljava/util/Map;

    .line 17
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {p0}, Lrz;->j()V

    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c()Ljava/util/List;
    .locals 3

    .line 1
    iget v0, p0, Lrz;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrz;->m:I

    .line 2
    iget-object v0, p0, Lrz;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lrz;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrz;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_0
.end method

.method public d()Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "FSM::Sessions::0"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lrz;->e:Lpx;

    invoke-interface {v1, v0}, Lpx;->b(Ljava/util/List;)Lsx;

    move-result-object v0

    .line 4
    iget-boolean v1, v0, Lsx;->b:Z

    const-string v2, "SessionCache"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "getPayloads failed to read the Persisted sessions"

    .line 5
    invoke-static {v2, v1, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lsx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Persisted Sessions were not found"

    .line 9
    invoke-static {v2, v1, v0}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 11
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWw;

    iget-object v0, v0, LWw;->b:LNI;

    .line 12
    iget v1, v0, LNI;->A:I

    const/4 v4, 0x6

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Persisted Sessions StreamSessions was not set"

    .line 13
    invoke-static {v2, v1, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 15
    :cond_3
    iget v1, v0, LNI;->A:I

    if-ne v1, v4, :cond_4

    .line 16
    iget-object v0, v0, LNI;->B:Ljava/lang/Object;

    check-cast v0, LTI;

    goto :goto_1

    .line 17
    :cond_4
    sget-object v0, LTI;->A:LTI;

    .line 18
    :goto_1
    iget-object v0, v0, LTI;->z:LbG;

    return-object v0
.end method

.method public e()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lrz;->j:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 2
    iget-object v0, p0, Lrz;->i:Lry;

    const-string v1, "SessionCache"

    invoke-virtual {v0, v1}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lrz;->e:Lpx;

    iget-object v2, p0, Lrz;->d:Lmz;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    const-string v2, "$HEAD"

    invoke-interface {v1, v2}, Lpx;->b(Ljava/lang/String;)Lsx;

    move-result-object v1

    .line 4
    iget-boolean v2, v1, Lsx;->b:Z

    const/4 v4, 0x0

    if-nez v2, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "SessionCache"

    const-string v2, "unable to get head stream structures"

    .line 5
    invoke-static {v1, v2, v0}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 6
    :cond_0
    invoke-virtual {p0}, Lrz;->d()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LQI;

    .line 8
    iget-object v7, v6, LQI;->A:Ljava/lang/String;

    .line 9
    iget-object v8, p0, Lrz;->d:Lmz;

    if-eqz v8, :cond_2

    const-string v8, "$HEAD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 10
    invoke-virtual {v6}, LQI;->j()LwI;

    move-result-object v5

    .line 11
    iget v5, v5, LwI;->C:I

    goto :goto_0

    .line 12
    :cond_2
    throw v3

    .line 13
    :cond_3
    :goto_0
    iget-object v5, p0, Lrz;->d:Lmz;

    invoke-virtual {v1}, Lsx;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v5, :cond_7

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "HeadSessionImpl"

    const-string v9, "Initialize HEAD %s items"

    invoke-static {v8, v9, v7}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object v5, v5, Lmz;->c:Lsz;

    invoke-virtual {v5, v1}, Lsz;->a(Ljava/util/List;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v1, v4

    const-string v4, "createHead"

    aput-object v4, v1, v6

    .line 16
    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0, v2}, Lrz;->a(Ljava/util/List;)V

    .line 18
    iget-object v0, p0, Lrz;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lrz;->c:Ljava/util/Map;

    iget-object v2, p0, Lrz;->d:Lmz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    const-string v2, "$HEAD"

    :try_start_1
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 20
    iget-object v1, p0, Lrz;->c:Ljava/util/Map;

    iget-object v2, p0, Lrz;->d:Lmz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    const-string v2, "$HEAD"

    .line 21
    :try_start_2
    sget-object v3, LwI;->D:LwI;

    .line 22
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 23
    :cond_4
    throw v3

    .line 24
    :cond_5
    :goto_1
    iget-object v1, p0, Lrz;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 25
    monitor-exit v0

    return v6

    .line 26
    :cond_6
    throw v3

    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 28
    :cond_7
    throw v3

    .line 29
    :cond_8
    throw v3
.end method

.method public final synthetic f()Ljava/util/Set;
    .locals 8

    .line 1
    iget-object v0, p0, Lrz;->j:LYw;

    invoke-virtual {v0}, LYw;->b()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SessionCache"

    const-string v3, "Determining accessible content"

    .line 2
    invoke-static {v2, v3, v1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lrz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lrz;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p0, Lrz;->d:Lmz;

    .line 7
    iget-object v3, v3, Lmz;->c:Lsz;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 8
    new-instance v5, Ljava/util/HashSet;

    iget-object v3, v3, Lsz;->b:Ljava/util/Set;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 11
    iget-object v5, p0, Lrz;->d:Lmz;

    if-eqz v5, :cond_2

    const-string v5, "$HEAD"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v5, Lsz;

    invoke-direct {v5, v0}, Lsz;-><init>(Z)V

    .line 13
    iget-object v6, p0, Lrz;->e:Lpx;

    invoke-interface {v6, v3}, Lpx;->b(Ljava/lang/String;)Lsx;

    move-result-object v3

    .line 14
    iget-boolean v6, v3, Lsx;->b:Z

    if-eqz v6, :cond_1

    .line 15
    invoke-virtual {v3}, Lsx;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v5, v3}, Lsz;->a(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    new-array v3, v0, [Ljava/lang/Object;

    const-string v6, "SessionCache"

    const-string v7, "Failed to read unbound session state, ignored"

    .line 16
    invoke-static {v6, v7, v3}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :goto_1
    new-instance v3, Ljava/util/HashSet;

    iget-object v5, v5, Lsz;->b:Ljava/util/Set;

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 18
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 19
    :cond_2
    throw v4

    :cond_3
    return-object v1

    .line 20
    :cond_4
    throw v4

    :catchall_0
    move-exception v0

    .line 21
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g()Ljava/util/Collection;
    .locals 19

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lrz;->j:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lrz;->d()Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v2, v1, Lrz;->d:Lmz;

    invoke-static {v2}, Ltx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lmz;

    if-eqz v2, :cond_5

    const-string v2, "$HEAD"

    .line 4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LQI;

    .line 6
    iget-object v4, v4, LQI;->A:Ljava/lang/String;

    .line 7
    iget-object v5, v1, Lrz;->a:Ljava/lang/Object;

    monitor-enter v5

    .line 8
    :try_start_0
    iget-object v6, v1, Lrz;->b:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v1, Lrz;->c:Ljava/util/Map;

    .line 9
    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 10
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 11
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v5, v1, Lrz;->g:Ltz;

    .line 13
    iget-boolean v6, v5, Ltz;->e:Z

    if-eqz v6, :cond_1

    .line 14
    new-instance v6, LFz;

    iget-object v8, v5, Ltz;->a:Lpx;

    iget-boolean v9, v5, Ltz;->f:Z

    iget-object v10, v5, Ltz;->b:LFx;

    iget-object v11, v5, Ltz;->c:Lry;

    iget-object v12, v5, Ltz;->d:LYw;

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, LFz;-><init>(Lpx;ZLFx;Lry;LYw;)V

    goto :goto_1

    .line 15
    :cond_1
    new-instance v6, Lvz;

    iget-object v14, v5, Ltz;->a:Lpx;

    iget-boolean v15, v5, Ltz;->f:Z

    iget-object v7, v5, Ltz;->b:LFx;

    iget-object v8, v5, Ltz;->c:Lry;

    iget-object v5, v5, Ltz;->d:LYw;

    move-object v13, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Lvz;-><init>(Lpx;ZLFx;Lry;LYw;)V

    .line 16
    :goto_1
    iput-object v4, v6, Lvz;->h:Ljava/lang/String;

    .line 17
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v5, v7

    const-string v8, "SessionCache"

    const-string v9, "Populate unbound session %s"

    .line 18
    invoke-static {v8, v9, v5}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object v5, v1, Lrz;->e:Lpx;

    invoke-interface {v5, v4}, Lpx;->b(Ljava/lang/String;)Lsx;

    move-result-object v4

    .line 20
    iget-boolean v5, v4, Lsx;->b:Z

    if-eqz v5, :cond_2

    .line 21
    invoke-virtual {v4}, Lsx;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 22
    sget-object v5, LkJ;->B:LkJ;

    .line 23
    invoke-interface {v6, v4, v7, v7, v5}, Lnz;->a(Ljava/util/List;ZZLkJ;)V

    goto :goto_0

    :cond_2
    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "SessionCache"

    const-string v6, "Failed to read unbound session state, ignored"

    .line 24
    invoke-static {v5, v6, v4}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 25
    :cond_3
    :goto_2
    :try_start_1
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 26
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 27
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    .line 28
    throw v0
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lrz;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrz;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loz;

    .line 5
    invoke-interface {v1}, Loz;->c()Lcx;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Lcx;->e()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lrz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 8
    :try_start_1
    iget-object v0, p0, Lrz;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 9
    iget-object v0, p0, Lrz;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 10
    iget-object v0, p0, Lrz;->d:Lmz;

    .line 11
    iget-object v0, v0, Lmz;->c:Lsz;

    .line 12
    iget-object v0, v0, Lsz;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 13
    iget-object v0, p0, Lrz;->c:Ljava/util/Map;

    iget-object v2, p0, Lrz;->d:Lmz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    const-string v2, "$HEAD"

    .line 14
    :try_start_2
    sget-object v3, LwI;->D:LwI;

    .line 15
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    monitor-exit v1

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 17
    throw v0

    :catchall_0
    move-exception v0

    .line 18
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 19
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public final i()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lrz;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lrz;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v3, p0, Lrz;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LwI;

    .line 4
    iget v2, v2, LwI;->C:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    const/4 v1, 0x1

    .line 5
    monitor-exit v0

    return v1

    .line 6
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j()V
    .locals 12

    .line 1
    iget-object v0, p0, Lrz;->j:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 2
    iget-object v0, p0, Lrz;->i:Lry;

    const-string v1, "SessionCache"

    invoke-virtual {v0, v1}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v0

    .line 3
    sget-object v1, LTI;->A:LTI;

    invoke-virtual {v1}, LTF;->c()LFF;

    move-result-object v1

    check-cast v1, LSI;

    .line 4
    iget-object v2, p0, Lrz;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v3, p0, Lrz;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    .line 6
    iget-object v4, p0, Lrz;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    iget-object v9, p0, Lrz;->c:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LwI;

    if-eqz v9, :cond_0

    .line 8
    sget-object v10, LQI;->D:LQI;

    invoke-virtual {v10}, LTF;->c()LFF;

    move-result-object v10

    check-cast v10, LPI;

    .line 9
    invoke-virtual {v10}, LFF;->g()V

    .line 10
    iget-object v11, v10, LFF;->x:LTF;

    check-cast v11, LQI;

    if-eqz v5, :cond_2

    .line 11
    iget v8, v11, LQI;->z:I

    or-int/2addr v6, v8

    iput v6, v11, LQI;->z:I

    .line 12
    iput-object v5, v11, LQI;->A:Ljava/lang/String;

    .line 13
    invoke-virtual {v10}, LFF;->g()V

    .line 14
    iget-object v5, v10, LFF;->x:LTF;

    check-cast v5, LQI;

    .line 15
    iput-object v9, v5, LQI;->C:LwI;

    .line 16
    iget v6, v5, LQI;->z:I

    or-int/2addr v6, v7

    iput v6, v5, LQI;->z:I

    .line 17
    invoke-virtual {v1}, LFF;->g()V

    .line 18
    iget-object v5, v1, LFF;->x:LTF;

    check-cast v5, LTI;

    .line 19
    iget-object v6, v5, LTI;->z:LbG;

    move-object v7, v6

    check-cast v7, LhF;

    .line 20
    iget-boolean v7, v7, LhF;->w:Z

    if-nez v7, :cond_1

    .line 21
    invoke-static {v6}, LTF;->a(LbG;)LbG;

    move-result-object v6

    iput-object v6, v5, LTI;->z:LbG;

    .line 22
    :cond_1
    iget-object v5, v5, LTI;->z:LbG;

    invoke-virtual {v10}, LFF;->e()LTF;

    move-result-object v6

    check-cast v6, LQI;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_2
    throw v8

    .line 24
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v2, p0, Lrz;->e:Lpx;

    .line 26
    invoke-interface {v2}, Lpx;->f()Lmx;

    move-result-object v2

    .line 27
    invoke-static {}, LNI;->n()LLI;

    move-result-object v4

    .line 28
    invoke-virtual {v4}, LFF;->g()V

    .line 29
    iget-object v5, v4, LFF;->x:LTF;

    check-cast v5, LNI;

    if-eqz v5, :cond_4

    .line 30
    invoke-virtual {v1}, LFF;->e()LTF;

    move-result-object v1

    iput-object v1, v5, LNI;->B:Ljava/lang/Object;

    const/4 v1, 0x6

    .line 31
    iput v1, v5, LNI;->A:I

    .line 32
    invoke-virtual {v4}, LFF;->e()LTF;

    move-result-object v1

    check-cast v1, LNI;

    .line 33
    check-cast v2, LTz;

    .line 34
    iget-object v4, v2, LTz;->a:Ljava/util/List;

    new-instance v5, LWw;

    const-string v8, "FSM::Sessions::0"

    invoke-direct {v5, v8, v1}, LWw;-><init>(Ljava/lang/String;LNI;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v2}, LTz;->a()Lxw;

    new-array v1, v7, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "task"

    aput-object v4, v1, v2

    const-string v2, "updatePersistedSessionsMetadata(Content)"

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string v4, "sessionCount"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 37
    invoke-virtual {v0, v1}, Lny;->a([Ljava/lang/Object;)V

    return-void

    .line 38
    :cond_4
    throw v8

    :catchall_0
    move-exception v0

    .line 39
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
