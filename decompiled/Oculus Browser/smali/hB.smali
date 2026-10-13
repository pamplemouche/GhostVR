.class public final LhB;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final l:Ljava/util/Map;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LuB;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;

.field public e:Z

.field public final f:Landroid/content/Intent;

.field public final g:LoB;

.field public final h:Ljava/lang/ref/WeakReference;

.field public final i:Landroid/os/IBinder$DeathRecipient;

.field public j:Landroid/content/ServiceConnection;

.field public k:Landroid/os/IInterface;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LhB;->l:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LuB;Ljava/lang/String;Landroid/content/Intent;LoB;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LhB;->d:Ljava/util/List;

    new-instance v0, LkB;

    invoke-direct {v0, p0}, LkB;-><init>(LhB;)V

    iput-object v0, p0, LhB;->i:Landroid/os/IBinder$DeathRecipient;

    iput-object p1, p0, LhB;->a:Landroid/content/Context;

    iput-object p2, p0, LhB;->b:LuB;

    iput-object p3, p0, LhB;->c:Ljava/lang/String;

    iput-object p4, p0, LhB;->f:Landroid/content/Intent;

    iput-object p5, p0, LhB;->g:LoB;

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LhB;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, LmB;

    invoke-direct {v0, p0}, LmB;-><init>(LhB;)V

    .line 1
    invoke-virtual {p0}, LhB;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(LiB;)V
    .locals 2

    new-instance v0, LjB;

    .line 2
    iget-object v1, p1, LiB;->w:LHB;

    .line 3
    invoke-direct {v0, p0, v1, p1}, LjB;-><init>(LhB;LHB;LiB;)V

    .line 4
    invoke-virtual {p0}, LhB;->b()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()Landroid/os/Handler;
    .locals 5

    sget-object v0, LhB;->l:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, LhB;->l:Ljava/util/Map;

    iget-object v2, p0, LhB;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    iget-object v2, p0, LhB;->c:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    sget-object v2, LhB;->l:Ljava/util/Map;

    iget-object v3, p0, LhB;->c:Ljava/lang/String;

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, LhB;->l:Ljava/util/Map;

    iget-object v2, p0, LhB;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
