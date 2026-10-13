.class public final Lvr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public c:Lxr;

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lxr;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lxr;-><init>(Lvr;Lwr;)V

    iput-object v1, p0, Lvr;->c:Lxr;

    const/4 v1, 0x1

    iput v1, p0, Lvr;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lvr;->a:Landroid/content/Context;

    iput-object v0, p0, Lvr;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lvr;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lvr;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(LDr;)Lbv;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    :cond_0
    iget-object v0, p0, Lvr;->c:Lxr;

    invoke-virtual {v0, p1}, Lxr;->a(LDr;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lxr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxr;-><init>(Lvr;Lwr;)V

    iput-object v0, p0, Lvr;->c:Lxr;

    invoke-virtual {v0, p1}, Lxr;->a(LDr;)Z

    :cond_1
    iget-object p1, p1, LDr;->b:Lcv;

    .line 1
    iget-object p1, p1, Lcv;->a:Lsv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
