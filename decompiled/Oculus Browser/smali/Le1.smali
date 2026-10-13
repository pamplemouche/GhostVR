.class public abstract LLe1;
.super LIe1;
.source "PG"


# instance fields
.field public final c:Landroid/util/SparseArray;

.field public final d:LKe1;


# direct methods
.method public constructor <init>(ILHe1;LKe1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LIe1;-><init>(ILHe1;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, LLe1;->c:Landroid/util/SparseArray;

    .line 3
    iput-object p3, p0, LLe1;->d:LKe1;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LLe1;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJe1;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, LkW;->cancel(Z)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0}, LkW;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCe1;

    invoke-virtual {p0, v0, p1}, LLe1;->a(LCe1;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object v0, p0, LIe1;->b:LHe1;

    if-eqz v0, :cond_0

    .line 5
    iget v2, p0, LIe1;->a:I

    .line 6
    invoke-interface {v0, v2, p1, v1}, LHe1;->a(IILCe1;)V

    goto :goto_0

    .line 7
    :catch_1
    iget-object v0, p0, LIe1;->b:LHe1;

    if-eqz v0, :cond_0

    .line 8
    iget v2, p0, LIe1;->a:I

    .line 9
    invoke-interface {v0, v2, p1, v1}, LHe1;->a(IILCe1;)V

    :cond_0
    :goto_0
    return-void

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, LLe1;->c(I)LCe1;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LLe1;->a(LCe1;I)V

    return-void
.end method

.method public final a(LCe1;I)V
    .locals 2

    .line 11
    iget-object v0, p0, LIe1;->b:LHe1;

    if-eqz v0, :cond_0

    .line 12
    iget v1, p0, LIe1;->a:I

    .line 13
    invoke-interface {v0, v1, p2, p1}, LHe1;->a(IILCe1;)V

    .line 14
    :cond_0
    iget-object p1, p0, LLe1;->c:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LLe1;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, LJe1;

    invoke-direct {v0, p0, p1}, LJe1;-><init>(LLe1;I)V

    .line 3
    sget-object v1, LkW;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    .line 4
    iget-object v1, p0, LLe1;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final c(I)LCe1;
    .locals 2

    const-string v0, "AsyncPreloadResourceLoader.createResource"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, LLe1;->d:LKe1;

    invoke-interface {v1, p1}, LKe1;->a(I)LCe1;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw p1
.end method
