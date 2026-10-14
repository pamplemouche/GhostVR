.class final Ld/u;
.super Ljava/lang/Object;

# interfaces
.implements Ld/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ld/az;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/az<",
            "TT;*>;"
        }
    .end annotation
.end field

.field private final b:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile c:Z

.field private d:Lb/g;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private e:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private f:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ld/az;[Ljava/lang/Object;)V
    .locals 0
    .param p2    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/az<",
            "TT;*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/u;->a:Ld/az;

    iput-object p2, p0, Ld/u;->b:[Ljava/lang/Object;

    return-void
.end method

.method private d()Lb/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ld/u;->a:Ld/az;

    iget-object v1, p0, Ld/u;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ld/az;->a([Ljava/lang/Object;)Lb/ax;

    move-result-object v0

    iget-object v1, p0, Ld/u;->a:Ld/az;

    iget-object v1, v1, Ld/az;->c:Lb/h;

    invoke-interface {v1, v0}, Lb/h;->a(Lb/ax;)Lb/g;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Call.Factory returned null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(Lb/bc;)Ld/av;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/bc;",
            ")",
            "Ld/av<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lb/bc;->g()Lb/be;

    move-result-object v0

    invoke-virtual {p1}, Lb/bc;->h()Lb/bd;

    move-result-object p1

    new-instance v1, Ld/y;

    invoke-virtual {v0}, Lb/be;->a()Lb/an;

    move-result-object v2

    invoke-virtual {v0}, Lb/be;->b()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Ld/y;-><init>(Lb/an;J)V

    invoke-virtual {p1, v1}, Lb/bd;->a(Lb/be;)Lb/bd;

    move-result-object p1

    invoke-virtual {p1}, Lb/bd;->a()Lb/bc;

    move-result-object p1

    invoke-virtual {p1}, Lb/bc;->b()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_3

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ld/w;

    invoke-direct {v1, v0}, Ld/w;-><init>(Lb/be;)V

    :try_start_0
    iget-object v0, p0, Ld/u;->a:Ld/az;

    invoke-virtual {v0, v1}, Ld/az;->a(Lb/be;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ld/av;->a(Ljava/lang/Object;Lb/bc;)Ld/av;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {v1}, Ld/w;->e()V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lb/be;->close()V

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ld/av;->a(Ljava/lang/Object;Lb/bc;)Ld/av;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    :try_start_1
    invoke-static {v0}, Ld/bb;->a(Lb/be;)Lb/be;

    move-result-object v1

    invoke-static {v1, p1}, Ld/av;->a(Lb/be;Lb/bc;)Ld/av;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lb/be;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lb/be;->close()V

    throw p1
.end method

.method public a(Ld/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/j<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Ld/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld/u;->f:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/u;->f:Z

    iget-object v0, p0, Ld/u;->d:Lb/g;

    iget-object v1, p0, Ld/u;->e:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-direct {p0}, Ld/u;->d()Lb/g;

    move-result-object v2

    iput-object v2, p0, Ld/u;->d:Lb/g;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iput-object v1, p0, Ld/u;->e:Ljava/lang/Throwable;

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {p1, p0, v1}, Ld/j;->a(Ld/g;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Ld/u;->c:Z

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lb/g;->a()V

    :cond_2
    new-instance v1, Ld/v;

    invoke-direct {v1, p0, p1}, Ld/v;-><init>(Ld/u;Ld/j;)V

    invoke-interface {v0, v1}, Lb/g;->a(Lb/i;)V

    return-void

    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 2

    iget-boolean v0, p0, Ld/u;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld/u;->d:Lb/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/u;->d:Lb/g;

    invoke-interface {v0}, Lb/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic b()Ld/g;
    .locals 1

    invoke-virtual {p0}, Ld/u;->c()Ld/u;

    move-result-object v0

    return-object v0
.end method

.method public c()Ld/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/u<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ld/u;

    iget-object v1, p0, Ld/u;->a:Ld/az;

    iget-object v2, p0, Ld/u;->b:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ld/u;-><init>(Ld/az;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ld/u;->c()Ld/u;

    move-result-object v0

    return-object v0
.end method
