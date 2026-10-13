.class public Lc61;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LL61;


# instance fields
.field public final w:LL61;

.field public final x:Ljava/util/concurrent/Executor;

.field public final y:Ljava/lang/Exception;

.field public z:Z


# direct methods
.method public constructor <init>(Lj71;LL61;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lc61;->w:LL61;

    .line 3
    sget-object p2, Lw61;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Lv61;

    invoke-direct {p2, p1}, Lv61;-><init>(Lj71;)V

    .line 5
    sget-object p1, Lw61;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 6
    :cond_0
    iput-object p2, p0, Lc61;->x:Ljava/util/concurrent/Executor;

    .line 7
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "AutocloseableRouter allocated at:"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lc61;->y:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public a(LH61;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc61;->w:LL61;

    invoke-interface {v0, p1}, LJ61;->a(LH61;)Z

    move-result p1

    return p1
.end method

.method public a(LH61;LJ61;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lc61;->w:LL61;

    invoke-interface {v0, p1, p2}, LK61;->a(LH61;LJ61;)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc61;->w:LL61;

    invoke-interface {v0}, LJ61;->close()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc61;->z:Z

    return-void
.end method

.method public finalize()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc61;->z:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc61;->x:Ljava/util/concurrent/Executor;

    new-instance v1, Lb61;

    invoke-direct {v1, p0}, Lb61;-><init>(Lc61;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lc61;->y:Ljava/lang/Exception;

    const-string v2, "Warning: Router objects should be explicitly closed when no longer required otherwise you may leak handles."

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public y()Lq71;
    .locals 1

    .line 1
    iget-object v0, p0, Lc61;->w:LL61;

    invoke-interface {v0}, Lx61;->y()Lq71;

    move-result-object v0

    check-cast v0, Lx71;

    return-object v0
.end method
