.class public final Ljv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpv;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/Object;

.field public c:LXu;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;LXu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljv;->b:Ljava/lang/Object;

    iput-object p1, p0, Ljv;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ljv;->c:LXu;

    return-void
.end method


# virtual methods
.method public final a(Lbv;)V
    .locals 2

    iget-object v0, p0, Ljv;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljv;->c:LXu;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ljv;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lkv;

    invoke-direct {v1, p0, p1}, Lkv;-><init>(Ljv;Lbv;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
