.class public final Liz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llx;
.implements Lqx;
.implements Lvy;
.implements Ldy;


# static fields
.field public static final u:J


# instance fields
.field public final a:LTx;

.field public final b:Ljava/util/Map;

.field public final c:Lrz;

.field public final d:Ljz;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/util/List;

.field public final h:LEz;

.field public final i:Lpx;

.field public final j:LYw;

.field public final k:Lry;

.field public final l:Lgx;

.field public final m:Lfx;

.field public final n:LFx;

.field public final o:Z

.field public final p:Ljava/util/Set;

.field public q:I

.field public r:I

.field public s:I

.field public t:Lew;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Liz;->u:J

    return-void
.end method

.method public constructor <init>(LFx;Ltz;Lrz;LEz;Ljz;Lpx;Lry;LYw;Ldx;Lgx;Lfx;Lww;Lpw;Lky;LGx;Lxx;Lrw;)V
    .locals 6

    move-object v0, p0

    move-object/from16 v1, p13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, LTx;

    new-instance v3, Lhz;

    invoke-direct {v3}, Lhz;-><init>()V

    invoke-direct {v2, v3}, LTx;-><init>(LQx;)V

    iput-object v2, v0, Liz;->a:LTx;

    .line 3
    new-instance v2, LPx;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v0, Liz;->a:LTx;

    invoke-direct {v2, v3, v4}, LPx;-><init>(Ljava/util/Map;LQx;)V

    iput-object v2, v0, Liz;->b:Ljava/util/Map;

    .line 4
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Liz;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Liz;->f:Ljava/lang/Object;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Liz;->g:Ljava/util/List;

    .line 7
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Liz;->p:Ljava/util/Set;

    .line 8
    iput v3, v0, Liz;->q:I

    .line 9
    iput v3, v0, Liz;->r:I

    .line 10
    iput v3, v0, Liz;->s:I

    move-object v2, p1

    .line 11
    iput-object v2, v0, Liz;->n:LFx;

    move-object v2, p3

    .line 12
    iput-object v2, v0, Liz;->c:Lrz;

    move-object v2, p4

    .line 13
    iput-object v2, v0, Liz;->h:LEz;

    move-object v2, p5

    .line 14
    iput-object v2, v0, Liz;->d:Ljz;

    move-object v2, p6

    .line 15
    iput-object v2, v0, Liz;->i:Lpx;

    move-object v2, p7

    .line 16
    iput-object v2, v0, Liz;->k:Lry;

    move-object v2, p8

    .line 17
    iput-object v2, v0, Liz;->j:LYw;

    move-object/from16 v2, p10

    .line 18
    iput-object v2, v0, Liz;->l:Lgx;

    move-object/from16 v2, p11

    .line 19
    iput-object v2, v0, Liz;->m:Lfx;

    const-string v2, "undoable_actions_enabled"

    .line 20
    invoke-virtual {v1, v2, v3}, Lpw;->a(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Liz;->o:Z

    .line 21
    sget-wide v4, Liz;->u:J

    const-string v2, "timeout_timeout_ms"

    .line 22
    invoke-virtual {v1, v2, v4, v5}, Lpw;->a(Ljava/lang/String;J)J

    move-object/from16 v1, p15

    .line 23
    invoke-virtual {v1, p0}, LGx;->a(Ljava/lang/Object;)V

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "FeedSessionManagerImpl"

    const-string v3, "FeedSessionManagerImpl has been created"

    .line 24
    invoke-static {v2, v3, v1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()LfQ;
    .locals 4

    .line 42
    iget-object v0, p0, Liz;->j:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 43
    iget-boolean v0, p0, Liz;->o:Z

    if-nez v0, :cond_0

    .line 44
    sget-object v0, LfQ;->B:LfQ;

    return-object v0

    .line 45
    :cond_0
    iget-object v0, p0, Liz;->i:Lpx;

    const-string v1, "ct"

    .line 46
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lpx;->b(Ljava/util/List;)Lsx;

    move-result-object v0

    .line 47
    iget-boolean v1, v0, Lsx;->b:Z

    if-eqz v1, :cond_4

    .line 48
    invoke-virtual {v0}, Lsx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LWw;

    .line 49
    iget-object v2, v1, LWw;->b:LNI;

    .line 50
    iget v2, v2, LNI;->A:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 51
    iget-object v0, v1, LWw;->b:LNI;

    .line 52
    iget v1, v0, LNI;->A:I

    if-ne v1, v3, :cond_3

    .line 53
    iget-object v0, v0, LNI;->B:Ljava/lang/Object;

    check-cast v0, LfQ;

    goto :goto_1

    .line 54
    :cond_3
    sget-object v0, LfQ;->B:LfQ;

    :goto_1
    return-object v0

    .line 55
    :cond_4
    sget-object v0, LfQ;->B:LfQ;

    return-object v0
.end method

.method public a(Lfy;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    new-instance v1, Ley;

    iget v2, p1, Lfy;->a:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "FeedSessionManagerImpl"

    invoke-direct {v1, v2, v3}, Ley;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p1, Lfy;->a:I

    .line 3
    new-instance v1, Ley;

    const-string v2, "newSessionCount"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 4
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget v0, p0, Liz;->q:I

    .line 6
    iget-object v1, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    iget v0, p1, Lfy;->a:I

    .line 8
    new-instance v1, Ley;

    const-string v2, "existingSessionCount"

    invoke-direct {v1, v0, v2}, Ley;-><init>(ILjava/lang/String;)V

    .line 9
    iget-object v0, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget v0, p0, Liz;->r:I

    .line 11
    iget-object v2, v1, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, v1, Ley;->d:Z

    .line 13
    iget v1, p1, Lfy;->a:I

    .line 14
    new-instance v2, Ley;

    const-string v3, "handleTokenCount"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 15
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget v1, p0, Liz;->s:I

    .line 17
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    iput-boolean v0, v2, Ley;->d:Z

    .line 19
    iget v1, p1, Lfy;->a:I

    .line 20
    new-instance v2, Ley;

    const-string v3, "sharedStateSize"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 21
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v1, p0, Liz;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 23
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    iput-boolean v0, v2, Ley;->d:Z

    .line 25
    iget v1, p1, Lfy;->a:I

    .line 26
    new-instance v2, Ley;

    const-string v3, "sharedStateInternerSize"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 27
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v1, p0, Liz;->a:LTx;

    invoke-virtual {v1}, LTx;->size()I

    move-result v1

    .line 29
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    iput-boolean v0, v2, Ley;->d:Z

    .line 31
    iget v1, p1, Lfy;->a:I

    .line 32
    new-instance v2, Ley;

    const-string v3, "sharedStateInternerStats"

    invoke-direct {v2, v1, v3}, Ley;-><init>(ILjava/lang/String;)V

    .line 33
    iget-object v1, p1, Lfy;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v1, p0, Liz;->a:LTx;

    .line 35
    invoke-virtual {v1}, LTx;->a()Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-object v3, v2, Ley;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iput-boolean v0, v2, Ley;->d:Z

    .line 38
    iget-object v0, p0, Liz;->d:Ljz;

    invoke-virtual {p1, v0}, Lfy;->a(Ldy;)V

    .line 39
    iget-object v0, p0, Liz;->n:LFx;

    invoke-virtual {p1, v0}, Lfy;->a(Ldy;)V

    .line 40
    iget-object v0, p0, Liz;->c:Lrz;

    invoke-virtual {p1, v0}, Lfy;->a(Ldy;)V

    .line 41
    iget-object v0, p0, Liz;->h:LEz;

    invoke-virtual {p1, v0}, Lfy;->a(Ldy;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Liz;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FeedSessionManagerImpl"

    const-string v2, "FeedSessionManagerImpl has previously been initialized"

    .line 2
    invoke-static {v1, v2, v0}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Liz;->i:Lpx;

    invoke-interface {v0, p0}, LHx;->a(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Liz;->n:LFx;

    new-instance v1, LXy;

    invoke-direct {v1, p0}, LXy;-><init>(Liz;)V

    invoke-virtual {v0, v1}, LFx;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "FeedSessionManagerImpl"

    const-string v4, "onLifecycleEvent %s"

    .line 1
    invoke-static {v3, v4, v1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v4, -0x30c9497f

    const/4 v5, 0x2

    if-eq v1, v4, :cond_2

    const v4, 0x2f1a8c14

    if-eq v1, v4, :cond_1

    const v4, 0x33ebcb90

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "initialize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "clearAll"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "clearAllWithRefresh"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_5

    if-eq p1, v5, :cond_4

    goto :goto_2

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Liz;->p:Ljava/util/Set;

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "CLEAR_ALL_WITH_REFRESH will cancel %s mutations"

    .line 5
    invoke-static {v3, v0, p1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Liz;->p:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto :goto_2

    :cond_5
    new-array p1, v0, [Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Liz;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "CLEAR_ALL will cancel %s mutations"

    invoke-static {v3, v0, p1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Liz;->p:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto :goto_2

    .line 9
    :cond_6
    invoke-virtual {p0}, Liz;->b()V

    :goto_2
    return-void
.end method

.method public reset()V
    .locals 4

    .line 1
    iget-object v0, p0, Liz;->j:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 2
    iget-object v0, p0, Liz;->h:LEz;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    new-instance v2, Lxz;

    invoke-direct {v2, v0}, Lxz;-><init>(LEz;)V

    .line 4
    invoke-virtual {v2, v1}, Lxz;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Liz;->c:Lrz;

    invoke-virtual {v0}, Lrz;->h()V

    .line 6
    iget-object v0, p0, Liz;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Liz;->g:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    iget-object v3, p0, Liz;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz;

    .line 11
    check-cast v2, Lvz;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    throw v1

    .line 13
    :cond_1
    iget-object v0, p0, Liz;->d:Ljz;

    .line 14
    iget-object v0, v0, Ljz;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 15
    iget-object v0, p0, Liz;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 17
    :cond_2
    throw v1
.end method
