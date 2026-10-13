.class public abstract Lhv;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Lbv;)Ljava/lang/Object;
    .locals 5

    const-string v0, "Must not be called on the main application thread"

    .line 1
    invoke-static {v0}, Lxp;->c(Ljava/lang/String;)V

    const-string v0, "Task must not be null"

    .line 2
    invoke-static {p0, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lbv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lhv;->b(Lbv;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lfv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfv;-><init>(Ltv;)V

    .line 3
    sget-object v1, Lev;->b:Ljava/util/concurrent/Executor;

    move-object v2, p0

    check-cast v2, Lsv;

    .line 4
    iget-object v3, v2, Lsv;->b:Lqv;

    new-instance v4, Lnv;

    invoke-direct {v4, v1, v0}, Lnv;-><init>(Ljava/util/concurrent/Executor;LZu;)V

    invoke-virtual {v3, v4}, Lqv;->a(Lpv;)V

    invoke-virtual {v2}, Lsv;->e()V

    .line 5
    sget-object v1, Lev;->b:Ljava/util/concurrent/Executor;

    .line 6
    iget-object v3, v2, Lsv;->b:Lqv;

    new-instance v4, Llv;

    invoke-direct {v4, v1, v0}, Llv;-><init>(Ljava/util/concurrent/Executor;LYu;)V

    invoke-virtual {v3, v4}, Lqv;->a(Lpv;)V

    invoke-virtual {v2}, Lsv;->e()V

    .line 7
    sget-object v1, Lev;->b:Ljava/util/concurrent/Executor;

    .line 8
    iget-object v3, v2, Lsv;->b:Lqv;

    new-instance v4, Liv;

    invoke-direct {v4, v1, v0}, Liv;-><init>(Ljava/util/concurrent/Executor;LWu;)V

    invoke-virtual {v3, v4}, Lqv;->a(Lpv;)V

    invoke-virtual {v2}, Lsv;->e()V

    .line 9
    iget-object v0, v0, Lfv;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 10
    invoke-static {p0}, Lhv;->b(Lbv;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lbv;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbv;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbv;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lbv;->a()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
