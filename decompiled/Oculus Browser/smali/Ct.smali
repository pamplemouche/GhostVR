.class public final LCt;
.super LDu;
.source "PG"


# instance fields
.field public final a:Lgn;


# direct methods
.method public constructor <init>(Lgn;)V
    .locals 0

    invoke-direct {p0}, LDu;-><init>()V

    iput-object p1, p0, LCt;->a:Lgn;

    return-void
.end method


# virtual methods
.method public final declared-synchronized A()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LCt;->a:Lgn;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Lgn;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/location/Location;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LCt;->a:Lgn;

    new-instance v1, LDt;

    invoke-direct {v1, p1}, LDt;-><init>(Landroid/location/Location;)V

    if-eqz v0, :cond_0

    const-string p1, "Notifier must not be null"

    .line 1
    invoke-static {v1, p1}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v0, Lgn;->a:Lfn;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, v0, Lgn;->a:Lfn;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
