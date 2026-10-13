.class public abstract LFF;
.super LeF;
.source "PG"


# instance fields
.field public final w:LTF;

.field public x:LTF;

.field public y:Z


# direct methods
.method public constructor <init>(LTF;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LeF;-><init>()V

    .line 2
    iput-object p1, p0, LFF;->w:LTF;

    .line 3
    sget-object v0, LRF;->A:LRF;

    .line 4
    invoke-virtual {p1, v0}, LTF;->a(LRF;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTF;

    iput-object p1, p0, LFF;->x:LTF;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, LFF;->y:Z

    return-void
.end method


# virtual methods
.method public a(LTF;)LFF;
    .locals 2

    .line 1
    invoke-virtual {p0}, LFF;->g()V

    .line 2
    iget-object v0, p0, LFF;->x:LTF;

    sget-object v1, LQF;->a:LQF;

    invoke-virtual {v0, v1, p1}, LTF;->a(LSF;LTF;)V

    return-object p0
.end method

.method public a(LtF;LBF;)LgG;
    .locals 2

    .line 3
    invoke-virtual {p0}, LFF;->g()V

    .line 4
    :try_start_0
    iget-object v0, p0, LFF;->x:LTF;

    sget-object v1, LRF;->y:LRF;

    invoke-virtual {v0, v1, p1, p2}, LTF;->a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 7
    :cond_0
    throw p1
.end method

.method public b()LhG;
    .locals 1

    .line 1
    iget-object v0, p0, LFF;->w:LTF;

    return-object v0
.end method

.method public clone()LFF;
    .locals 2

    .line 2
    iget-object v0, p0, LFF;->w:LTF;

    .line 3
    invoke-virtual {v0}, LTF;->d()LFF;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, LFF;->f()LTF;

    move-result-object v1

    invoke-virtual {v0, v1}, LFF;->a(LTF;)LFF;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LFF;->clone()LFF;

    move-result-object v0

    return-object v0
.end method

.method public final e()LTF;
    .locals 2

    .line 1
    invoke-virtual {p0}, LFF;->f()LTF;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, LTF;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, LvG;

    invoke-direct {v0}, LvG;-><init>()V

    .line 4
    throw v0
.end method

.method public f()LTF;
    .locals 1

    .line 1
    iget-boolean v0, p0, LFF;->y:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LFF;->x:LTF;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, LFF;->x:LTF;

    invoke-virtual {v0}, LTF;->i()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, LFF;->y:Z

    .line 5
    iget-object v0, p0, LFF;->x:LTF;

    return-object v0
.end method

.method public g()V
    .locals 3

    .line 1
    iget-boolean v0, p0, LFF;->y:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LFF;->x:LTF;

    sget-object v1, LRF;->A:LRF;

    .line 3
    invoke-virtual {v0, v1}, LTF;->a(LRF;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTF;

    .line 4
    sget-object v1, LQF;->a:LQF;

    iget-object v2, p0, LFF;->x:LTF;

    invoke-virtual {v0, v1, v2}, LTF;->a(LSF;LTF;)V

    .line 5
    iput-object v0, p0, LFF;->x:LTF;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, LFF;->y:Z

    :cond_0
    return-void
.end method
