.class public final synthetic LXy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Liz;


# direct methods
.method public constructor <init>(Liz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXy;->w:Liz;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, LXy;->w:Liz;

    .line 1
    iget-object v2, v1, Liz;->j:LYw;

    invoke-virtual {v2}, LYw;->b()V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "JardinExecutor"

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 4
    iget-object v4, v1, Liz;->k:Lry;

    invoke-virtual {v4, v2, v3}, Lry;->a(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 5
    iget-object v2, v1, Liz;->k:Lry;

    const-string v3, "FeedSessionManagerImpl"

    invoke-virtual {v2, v3}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v2

    .line 6
    iget-object v4, v1, Liz;->k:Lry;

    invoke-virtual {v4, v3}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v4

    .line 7
    iget-object v5, v1, Liz;->i:Lpx;

    invoke-interface {v5}, Lpx;->i()Lsx;

    move-result-object v5

    .line 8
    iget-boolean v6, v5, Lsx;->b:Z

    const-string v7, "switchToEphemeralMode"

    const-string v8, "sharedStateTimeTracker"

    const-string v9, ""

    const-string v10, "Initialization"

    const-string v11, "task"

    const-string v12, "error"

    const/4 v13, 0x2

    const/16 v16, 0x3

    if-eqz v6, :cond_2

    .line 9
    invoke-virtual {v5}, Lsx;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LXI;

    .line 10
    iget-object v15, v1, Liz;->b:Ljava/util/Map;

    .line 11
    iget-object v14, v6, LXI;->C:Ljava/lang/String;

    .line 12
    invoke-interface {v15, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array v5, v13, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    const/4 v9, 0x1

    aput-object v8, v5, v9

    .line 13
    invoke-virtual {v4, v5}, Lny;->a([Ljava/lang/Object;)V

    .line 14
    iget-object v4, v1, Liz;->c:Lrz;

    invoke-virtual {v4}, Lrz;->e()Z

    move-result v4

    if-nez v4, :cond_1

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "unable to initialize the sessionCache"

    .line 15
    invoke-static {v3, v5, v4}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v1, v1, Liz;->i:Lpx;

    invoke-interface {v1}, Lpx;->j()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v11, v1, v6

    const/4 v3, 0x1

    aput-object v10, v1, v3

    aput-object v12, v1, v13

    aput-object v7, v1, v16

    .line 17
    invoke-virtual {v2, v1}, Lny;->a([Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    new-array v1, v13, [Ljava/lang/Object;

    aput-object v11, v1, v6

    aput-object v10, v1, v3

    .line 18
    invoke-virtual {v2, v1}, Lny;->a([Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    new-array v5, v6, [Ljava/lang/Object;

    const-string v14, "SharedStates failed to load, no shared states are loaded."

    .line 19
    invoke-static {v3, v14, v5}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v3, v1, Liz;->i:Lpx;

    invoke-interface {v3}, Lpx;->j()V

    .line 21
    iget-object v1, v1, Liz;->n:LFx;

    invoke-virtual {v1}, LFx;->h()V

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v9, v3, v6

    const/4 v5, 0x1

    aput-object v8, v3, v5

    aput-object v12, v3, v13

    const-string v8, "store error"

    aput-object v8, v3, v16

    .line 22
    invoke-virtual {v4, v3}, Lny;->a([Ljava/lang/Object;)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v11, v1, v6

    aput-object v10, v1, v5

    aput-object v12, v1, v13

    aput-object v7, v1, v16

    .line 23
    invoke-virtual {v2, v1}, Lny;->a([Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
