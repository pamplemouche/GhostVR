.class public LJz;
.super LGx;
.source "PG"

# interfaces
.implements Lpx;
.implements Lax;
.implements Lvy;


# instance fields
.field public final b:LjA;

.field public final c:Lxx;

.field public d:LKz;

.field public final e:LFx;

.field public final f:LWz;

.field public final g:Lrw;

.field public final h:Lky;

.field public final i:Lry;

.field public final j:LYw;

.field public k:Z


# direct methods
.method public constructor <init>(Lpw;Lry;Ljy;LHw;LQw;LYw;LFx;Lky;Lrw;Lxx;)V
    .locals 14

    move-object v0, p0

    .line 1
    invoke-direct {p0}, LGx;-><init>()V

    .line 2
    new-instance v10, LWz;

    invoke-direct {v10}, LWz;-><init>()V

    iput-object v10, v0, LJz;->f:LWz;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, LJz;->k:Z

    move-object/from16 v7, p7

    .line 4
    iput-object v7, v0, LJz;->e:LFx;

    move-object/from16 v9, p8

    .line 5
    iput-object v9, v0, LJz;->h:Lky;

    move-object/from16 v3, p2

    .line 6
    iput-object v3, v0, LJz;->i:Lry;

    move-object/from16 v8, p6

    .line 7
    iput-object v8, v0, LJz;->j:LYw;

    move-object/from16 v11, p9

    .line 8
    iput-object v11, v0, LJz;->g:Lrw;

    move-object/from16 v12, p10

    .line 9
    iput-object v12, v0, LJz;->c:Lxx;

    .line 10
    new-instance v13, LjA;

    move-object v1, v13

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v12}, LjA;-><init>(Lpw;Lry;Ljy;LHw;LQw;LFx;LYw;Lky;LWz;Lrw;Lxx;)V

    iput-object v13, v0, LJz;->b:LjA;

    .line 11
    iput-object v13, v0, LJz;->d:LKz;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;
    .locals 1

    .line 5
    iget-object v0, p0, LJz;->d:LKz;

    invoke-interface {v0, p1, p2}, Lpx;->a(Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Set;LLx;Z)Ljava/lang/Runnable;
    .locals 1

    .line 4
    iget-object v0, p0, LJz;->d:LKz;

    invoke-interface {v0, p1, p2, p3}, Lpx;->a(Ljava/util/Set;LLx;Z)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Lsx;
    .locals 1

    .line 1
    iget-object v0, p0, LJz;->d:LKz;

    invoke-interface {v0, p1}, Lpx;->a(Ljava/util/List;)Lsx;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, LJz;->d:LKz;

    invoke-interface {v0}, Lpx;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, LJz;->d:LKz;

    invoke-interface {v0, p1}, Lpx;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lsx;
    .locals 1

    .line 2
    iget-object v0, p0, LJz;->d:LKz;

    invoke-interface {v0, p1}, Lpx;->b(Ljava/lang/String;)Lsx;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)Lsx;
    .locals 1

    .line 1
    iget-object v0, p0, LJz;->d:LKz;

    invoke-interface {v0, p1}, Lpx;->b(Ljava/util/List;)Lsx;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lox;
    .locals 1

    .line 2
    iget-object v0, p0, LJz;->d:LKz;

    invoke-interface {v0, p1}, Lpx;->c(Ljava/lang/String;)Lox;

    move-result-object p1

    return-object p1
.end method

.method public c()Lsx;
    .locals 1

    .line 1
    iget-object v0, p0, LJz;->d:LKz;

    invoke-interface {v0}, Lpx;->c()Lsx;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    const-string v0, "background"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, LJz;->k:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, LJz;->e:LFx;

    const/16 v0, 0x9

    const/4 v1, 0x5

    new-instance v2, LIz;

    invoke-direct {v2, p0}, LIz;-><init>(LJz;)V

    invoke-virtual {p1, v0, v1, v2}, LFx;->a(IILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public f()Lmx;
    .locals 1

    .line 1
    iget-object v0, p0, LJz;->d:LKz;

    invoke-interface {v0}, Lpx;->f()Lmx;

    move-result-object v0

    return-object v0
.end method

.method public g()Lnx;
    .locals 1

    .line 1
    iget-object v0, p0, LJz;->d:LKz;

    invoke-interface {v0}, Lpx;->g()Lnx;

    move-result-object v0

    return-object v0
.end method

.method public h()Lrx;
    .locals 1

    .line 1
    iget-object v0, p0, LJz;->d:LKz;

    invoke-interface {v0}, Lpx;->h()Lrx;

    move-result-object v0

    return-object v0
.end method

.method public i()Lsx;
    .locals 1

    .line 1
    iget-object v0, p0, LJz;->d:LKz;

    invoke-interface {v0}, Lpx;->i()Lsx;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, LJz;->j:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 2
    iget-boolean v0, p0, LJz;->k:Z

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, LJz;->b:LjA;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, LSz;

    iget-object v1, p0, LJz;->h:Lky;

    iget-object v2, p0, LJz;->i:Lry;

    iget-object v3, p0, LJz;->f:LWz;

    invoke-direct {v0, v1, v2, v3}, LSz;-><init>(Lky;Lry;LWz;)V

    iput-object v0, p0, LJz;->d:LKz;

    .line 5
    iget-object v0, p0, LJz;->e:LFx;

    const/4 v1, 0x4

    const/4 v2, 0x5

    new-instance v3, LGz;

    invoke-direct {v3, p0}, LGz;-><init>(LJz;)V

    invoke-virtual {v0, v1, v2, v3}, LFx;->a(IILjava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, LJz;->k:Z

    .line 7
    iget-object v0, p0, LGx;->a:Ljava/util/Set;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, LGx;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqx;

    .line 9
    check-cast v2, Liz;

    .line 10
    invoke-virtual {v2}, Liz;->reset()V

    goto :goto_0

    .line 11
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, LJz;->c:Lxx;

    new-instance v1, LHz;

    invoke-direct {v1, p0}, LHz;-><init>(LJz;)V

    const-string v2, "log ephemeral switch"

    invoke-virtual {v0, v2, v1}, Lxx;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    const/4 v0, 0x0

    .line 14
    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public k()Lsx;
    .locals 1

    .line 1
    iget-object v0, p0, LJz;->d:LKz;

    invoke-interface {v0}, Lpx;->k()Lsx;

    move-result-object v0

    return-object v0
.end method

.method public l()Lsx;
    .locals 1

    .line 1
    iget-object v0, p0, LJz;->d:LKz;

    invoke-interface {v0}, Lpx;->l()Lsx;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, LJz;->b:LjA;

    invoke-virtual {v0}, LjA;->m()Z

    return-void
.end method
