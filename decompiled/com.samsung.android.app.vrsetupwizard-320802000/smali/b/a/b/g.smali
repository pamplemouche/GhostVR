.class public final Lb/a/b/g;
.super Ljava/lang/Object;


# static fields
.field static final synthetic b:Z


# instance fields
.field public final a:Lb/a;

.field private c:Lb/bh;

.field private final d:Lb/p;

.field private final e:Ljava/lang/Object;

.field private final f:Lb/a/b/f;

.field private g:I

.field private h:Lb/a/b/c;

.field private i:Z

.field private j:Z

.field private k:Lb/a/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lb/a/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lb/a/b/g;->b:Z

    return-void
.end method

.method public constructor <init>(Lb/p;Lb/a;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/b/g;->d:Lb/p;

    iput-object p2, p0, Lb/a/b/g;->a:Lb/a;

    new-instance p1, Lb/a/b/f;

    invoke-direct {p0}, Lb/a/b/g;->g()Lb/a/b/d;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lb/a/b/f;-><init>(Lb/a;Lb/a/b/d;)V

    iput-object p1, p0, Lb/a/b/g;->f:Lb/a/b/f;

    iput-object p3, p0, Lb/a/b/g;->e:Ljava/lang/Object;

    return-void
.end method

.method private a(IIIZ)Lb/a/b/c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/g;->d:Lb/p;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lb/a/b/g;->i:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lb/a/b/g;->k:Lb/a/c/c;

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lb/a/b/g;->j:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lb/a/b/g;->h:Lb/a/b/c;

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lb/a/b/c;->a:Z

    if-nez v2, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    sget-object v1, Lb/a/a;->a:Lb/a/a;

    iget-object v2, p0, Lb/a/b/g;->d:Lb/p;

    iget-object v3, p0, Lb/a/b/g;->a:Lb/a;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p0, v4}, Lb/a/a;->a(Lb/p;Lb/a;Lb/a/b/g;Lb/bh;)Lb/a/b/c;

    iget-object v1, p0, Lb/a/b/g;->h:Lb/a/b/c;

    if-eqz v1, :cond_1

    iget-object p1, p0, Lb/a/b/g;->h:Lb/a/b/c;

    monitor-exit v0

    return-object p1

    :cond_1
    iget-object v1, p0, Lb/a/b/g;->c:Lb/bh;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_2

    iget-object v0, p0, Lb/a/b/g;->f:Lb/a/b/f;

    invoke-virtual {v0}, Lb/a/b/f;->b()Lb/bh;

    move-result-object v1

    :cond_2
    iget-object v2, p0, Lb/a/b/g;->d:Lb/p;

    monitor-enter v2

    :try_start_1
    iget-boolean v0, p0, Lb/a/b/g;->j:Z

    if-nez v0, :cond_5

    sget-object v0, Lb/a/a;->a:Lb/a/a;

    iget-object v3, p0, Lb/a/b/g;->d:Lb/p;

    iget-object v5, p0, Lb/a/b/g;->a:Lb/a;

    invoke-virtual {v0, v3, v5, p0, v1}, Lb/a/a;->a(Lb/p;Lb/a;Lb/a/b/g;Lb/bh;)Lb/a/b/c;

    iget-object v0, p0, Lb/a/b/g;->h:Lb/a/b/c;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lb/a/b/g;->c:Lb/bh;

    iget-object p1, p0, Lb/a/b/g;->h:Lb/a/b/c;

    monitor-exit v2

    return-object p1

    :cond_3
    iput-object v1, p0, Lb/a/b/g;->c:Lb/bh;

    const/4 v0, 0x0

    iput v0, p0, Lb/a/b/g;->g:I

    new-instance v0, Lb/a/b/c;

    iget-object v3, p0, Lb/a/b/g;->d:Lb/p;

    invoke-direct {v0, v3, v1}, Lb/a/b/c;-><init>(Lb/p;Lb/bh;)V

    invoke-virtual {p0, v0}, Lb/a/b/g;->a(Lb/a/b/c;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/a/b/c;->a(IIIZ)V

    invoke-direct {p0}, Lb/a/b/g;->g()Lb/a/b/d;

    move-result-object p1

    invoke-virtual {v0}, Lb/a/b/c;->a()Lb/bh;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/a/b/d;->b(Lb/bh;)V

    iget-object p1, p0, Lb/a/b/g;->d:Lb/p;

    monitor-enter p1

    :try_start_2
    sget-object p2, Lb/a/a;->a:Lb/a/a;

    iget-object p3, p0, Lb/a/b/g;->d:Lb/p;

    invoke-virtual {p2, p3, v0}, Lb/a/a;->b(Lb/p;Lb/a/b/c;)V

    invoke-virtual {v0}, Lb/a/b/c;->f()Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lb/a/a;->a:Lb/a/a;

    iget-object p3, p0, Lb/a/b/g;->d:Lb/p;

    iget-object p4, p0, Lb/a/b/g;->a:Lb/a;

    invoke-virtual {p2, p3, p4, p0}, Lb/a/a;->a(Lb/p;Lb/a;Lb/a/b/g;)Ljava/net/Socket;

    move-result-object v4

    iget-object v0, p0, Lb/a/b/g;->h:Lb/a/b/c;

    :cond_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4}, Lb/a/c;->a(Ljava/net/Socket;)V

    return-object v0

    :catchall_0
    move-exception p2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2

    :cond_5
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_6
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "codec != null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "released"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method private a(IIIZZ)Lb/a/b/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lb/a/b/g;->a(IIIZ)Lb/a/b/c;

    move-result-object v0

    iget-object v1, p0, Lb/a/b/g;->d:Lb/p;

    monitor-enter v1

    :try_start_0
    iget v2, v0, Lb/a/b/c;->b:I

    if-nez v2, :cond_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p5}, Lb/a/b/c;->a(Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lb/a/b/g;->d()V

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(ZZZ)Ljava/net/Socket;
    .locals 1

    sget-boolean v0, Lb/a/b/g;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/b/g;->d:Lb/p;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iput-object v0, p0, Lb/a/b/g;->k:Lb/a/c/c;

    :cond_2
    const/4 p3, 0x1

    if-eqz p2, :cond_3

    iput-boolean p3, p0, Lb/a/b/g;->i:Z

    :cond_3
    iget-object p2, p0, Lb/a/b/g;->h:Lb/a/b/c;

    if-eqz p2, :cond_7

    if-eqz p1, :cond_4

    iput-boolean p3, p2, Lb/a/b/c;->a:Z

    :cond_4
    iget-object p1, p0, Lb/a/b/g;->k:Lb/a/c/c;

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lb/a/b/g;->i:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lb/a/b/g;->h:Lb/a/b/c;

    iget-boolean p1, p1, Lb/a/b/c;->a:Z

    if-eqz p1, :cond_7

    :cond_5
    iget-object p1, p0, Lb/a/b/g;->h:Lb/a/b/c;

    invoke-direct {p0, p1}, Lb/a/b/g;->c(Lb/a/b/c;)V

    iget-object p1, p0, Lb/a/b/g;->h:Lb/a/b/c;

    iget-object p1, p1, Lb/a/b/c;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lb/a/b/g;->h:Lb/a/b/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lb/a/b/c;->e:J

    sget-object p1, Lb/a/a;->a:Lb/a/a;

    iget-object p2, p0, Lb/a/b/g;->d:Lb/p;

    iget-object p3, p0, Lb/a/b/g;->h:Lb/a/b/c;

    invoke-virtual {p1, p2, p3}, Lb/a/a;->a(Lb/p;Lb/a/b/c;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lb/a/b/g;->h:Lb/a/b/c;

    invoke-virtual {p1}, Lb/a/b/c;->d()Ljava/net/Socket;

    move-result-object p1

    goto :goto_1

    :cond_6
    move-object p1, v0

    :goto_1
    iput-object v0, p0, Lb/a/b/g;->h:Lb/a/b/c;

    goto :goto_2

    :cond_7
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method private c(Lb/a/b/c;)V
    .locals 3

    iget-object v0, p1, Lb/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p1, Lb/a/b/c;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    iget-object p1, p1, Lb/a/b/c;->d:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private g()Lb/a/b/d;
    .locals 2

    sget-object v0, Lb/a/a;->a:Lb/a/a;

    iget-object v1, p0, Lb/a/b/g;->d:Lb/p;

    invoke-virtual {v0, v1}, Lb/a/a;->a(Lb/p;)Lb/a/b/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lb/a/c/c;
    .locals 2

    iget-object v0, p0, Lb/a/b/g;->d:Lb/p;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/a/b/g;->k:Lb/a/c/c;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lb/ar;Z)Lb/a/c/c;
    .locals 6

    invoke-virtual {p1}, Lb/ar;->a()I

    move-result v1

    invoke-virtual {p1}, Lb/ar;->b()I

    move-result v2

    invoke-virtual {p1}, Lb/ar;->c()I

    move-result v3

    invoke-virtual {p1}, Lb/ar;->r()Z

    move-result v4

    move-object v0, p0

    move v5, p2

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lb/a/b/g;->a(IIIZZ)Lb/a/b/c;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lb/a/b/c;->a(Lb/ar;Lb/a/b/g;)Lb/a/c/c;

    move-result-object p1

    iget-object p2, p0, Lb/a/b/g;->d:Lb/p;

    monitor-enter p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object p1, p0, Lb/a/b/g;->k:Lb/a/c/c;

    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lb/a/b/e;

    invoke-direct {p2, p1}, Lb/a/b/e;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public a(Lb/a/b/c;)V
    .locals 2

    sget-boolean v0, Lb/a/b/g;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/b/g;->d:Lb/p;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lb/a/b/g;->h:Lb/a/b/c;

    if-nez v0, :cond_2

    iput-object p1, p0, Lb/a/b/g;->h:Lb/a/b/c;

    iget-object p1, p1, Lb/a/b/c;->d:Ljava/util/List;

    new-instance v0, Lb/a/b/h;

    iget-object v1, p0, Lb/a/b/g;->e:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lb/a/b/h;-><init>(Lb/a/b/g;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a(Ljava/io/IOException;)V
    .locals 6

    iget-object v0, p0, Lb/a/b/g;->d:Lb/p;

    monitor-enter v0

    :try_start_0
    instance-of v1, p1, Lb/a/e/am;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    check-cast p1, Lb/a/e/am;

    iget-object v1, p1, Lb/a/e/am;->a:Lb/a/e/b;

    sget-object v5, Lb/a/e/b;->e:Lb/a/e/b;

    if-ne v1, v5, :cond_0

    iget v1, p0, Lb/a/b/g;->g:I

    add-int/2addr v1, v4

    iput v1, p0, Lb/a/b/g;->g:I

    :cond_0
    iget-object p1, p1, Lb/a/e/am;->a:Lb/a/e/b;

    sget-object v1, Lb/a/e/b;->e:Lb/a/e/b;

    if-ne p1, v1, :cond_3

    iget p1, p0, Lb/a/b/g;->g:I

    if-le p1, v4, :cond_5

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lb/a/b/g;->h:Lb/a/b/c;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lb/a/b/g;->h:Lb/a/b/c;

    invoke-virtual {v1}, Lb/a/b/c;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p1, Lb/a/e/a;

    if-eqz v1, :cond_5

    :cond_2
    iget-object v1, p0, Lb/a/b/g;->h:Lb/a/b/c;

    iget v1, v1, Lb/a/b/c;->b:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lb/a/b/g;->c:Lb/bh;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v1, p0, Lb/a/b/g;->f:Lb/a/b/f;

    iget-object v5, p0, Lb/a/b/g;->c:Lb/bh;

    invoke-virtual {v1, v5, p1}, Lb/a/b/f;->a(Lb/bh;Ljava/io/IOException;)V

    :cond_3
    :goto_0
    iput-object v2, p0, Lb/a/b/g;->c:Lb/bh;

    :cond_4
    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1, v3, v4}, Lb/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lb/a/c;->a(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(ZLb/a/c/c;)V
    .locals 3

    iget-object v0, p0, Lb/a/b/g;->d:Lb/p;

    monitor-enter v0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v1, p0, Lb/a/b/g;->k:Lb/a/c/c;

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iget-object v1, p0, Lb/a/b/g;->h:Lb/a/b/c;

    iget v2, v1, Lb/a/b/c;->b:I

    add-int/2addr v2, p2

    iput v2, v1, Lb/a/b/c;->b:I

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lb/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lb/a/c;->a(Ljava/net/Socket;)V

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/b/g;->k:Lb/a/c/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized b()Lb/a/b/c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/b/g;->h:Lb/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lb/a/b/c;)Ljava/net/Socket;
    .locals 3

    sget-boolean v0, Lb/a/b/g;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/b/g;->d:Lb/p;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lb/a/b/g;->k:Lb/a/c/c;

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/a/b/g;->h:Lb/a/b/c;

    iget-object v0, v0, Lb/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lb/a/b/g;->h:Lb/a/b/c;

    iget-object v0, v0, Lb/a/b/c;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-direct {p0, v1, v2, v2}, Lb/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    iput-object p1, p0, Lb/a/b/g;->h:Lb/a/b/c;

    iget-object p1, p1, Lb/a/b/c;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lb/a/b/g;->d:Lb/p;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, v1, v2}, Lb/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lb/a/c;->a(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lb/a/b/g;->d:Lb/p;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, v2, v2}, Lb/a/b/g;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lb/a/c;->a(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lb/a/b/g;->d:Lb/p;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lb/a/b/g;->j:Z

    iget-object v1, p0, Lb/a/b/g;->k:Lb/a/c/c;

    iget-object v2, p0, Lb/a/b/g;->h:Lb/a/b/c;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lb/a/c/c;->c()V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lb/a/b/c;->c()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lb/a/b/g;->c:Lb/bh;

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/b/g;->f:Lb/a/b/f;

    invoke-virtual {v0}, Lb/a/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lb/a/b/g;->b()Lb/a/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/a/b/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
