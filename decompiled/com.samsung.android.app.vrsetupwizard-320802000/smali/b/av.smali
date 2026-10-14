.class final Lb/av;
.super Ljava/lang/Object;

# interfaces
.implements Lb/g;


# instance fields
.field final a:Lb/ar;

.field final b:Lb/a/c/k;

.field final c:Lb/z;

.field final d:Lb/ax;

.field final e:Z

.field private f:Z


# direct methods
.method constructor <init>(Lb/ar;Lb/ax;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lb/ar;->x()Lb/ac;

    move-result-object v0

    iput-object p1, p0, Lb/av;->a:Lb/ar;

    iput-object p2, p0, Lb/av;->d:Lb/ax;

    iput-boolean p3, p0, Lb/av;->e:Z

    new-instance p2, Lb/a/c/k;

    invoke-direct {p2, p1, p3}, Lb/a/c/k;-><init>(Lb/ar;Z)V

    iput-object p2, p0, Lb/av;->b:Lb/a/c/k;

    invoke-interface {v0, p0}, Lb/ac;->a(Lb/g;)Lb/z;

    move-result-object p1

    iput-object p1, p0, Lb/av;->c:Lb/z;

    return-void
.end method

.method private g()V
    .locals 2

    invoke-static {}, Lb/a/g/h;->b()Lb/a/g/h;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lb/a/g/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lb/av;->b:Lb/a/c/k;

    invoke-virtual {v1, v0}, Lb/a/c/k;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb/av;->b:Lb/a/c/k;

    invoke-virtual {v0}, Lb/a/c/k;->a()V

    return-void
.end method

.method public a(Lb/i;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lb/av;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/av;->f:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lb/av;->g()V

    iget-object v0, p0, Lb/av;->a:Lb/ar;

    invoke-virtual {v0}, Lb/ar;->s()Lb/w;

    move-result-object v0

    new-instance v1, Lb/aw;

    invoke-direct {v1, p0, p1}, Lb/aw;-><init>(Lb/av;Lb/i;)V

    invoke-virtual {v0, v1}, Lb/w;->a(Lb/aw;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lb/av;->b:Lb/a/c/k;

    invoke-virtual {v0}, Lb/a/c/k;->b()Z

    move-result v0

    return v0
.end method

.method public c()Lb/av;
    .locals 4

    new-instance v0, Lb/av;

    iget-object v1, p0, Lb/av;->a:Lb/ar;

    iget-object v2, p0, Lb/av;->d:Lb/ax;

    iget-boolean v3, p0, Lb/av;->e:Z

    invoke-direct {v0, v1, v2, v3}, Lb/av;-><init>(Lb/ar;Lb/ax;Z)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lb/av;->c()Lb/av;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/av;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lb/av;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/av;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/av;->d:Lb/ax;

    invoke-virtual {v0}, Lb/ax;->a()Lb/ai;

    move-result-object v0

    invoke-virtual {v0}, Lb/ai;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Lb/bc;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lb/av;->a:Lb/ar;

    invoke-virtual {v0}, Lb/ar;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lb/av;->b:Lb/a/c/k;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lb/a/c/a;

    iget-object v2, p0, Lb/av;->a:Lb/ar;

    invoke-virtual {v2}, Lb/ar;->f()Lb/u;

    move-result-object v2

    invoke-direct {v0, v2}, Lb/a/c/a;-><init>(Lb/u;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lb/a/a/a;

    iget-object v2, p0, Lb/av;->a:Lb/ar;

    invoke-virtual {v2}, Lb/ar;->g()Lb/a/a/i;

    move-result-object v2

    invoke-direct {v0, v2}, Lb/a/a/a;-><init>(Lb/a/a/i;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lb/a/b/a;

    iget-object v2, p0, Lb/av;->a:Lb/ar;

    invoke-direct {v0, v2}, Lb/a/b/a;-><init>(Lb/ar;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lb/av;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/av;->a:Lb/ar;

    invoke-virtual {v0}, Lb/ar;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Lb/a/c/b;

    iget-boolean v2, p0, Lb/av;->e:Z

    invoke-direct {v0, v2}, Lb/a/c/b;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lb/a/c/h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lb/av;->d:Lb/ax;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lb/a/c/h;-><init>(Ljava/util/List;Lb/a/b/g;Lb/a/c/c;Lb/a/b/c;ILb/ax;)V

    iget-object v0, p0, Lb/av;->d:Lb/ax;

    invoke-interface {v7, v0}, Lb/am;->a(Lb/ax;)Lb/bc;

    move-result-object v0

    return-object v0
.end method
