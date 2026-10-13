.class public LG01;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LBW;


# static fields
.field public static b:Z

.field public static c:Z


# instance fields
.field public final a:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, LG01;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static a()V
    .locals 2

    .line 3
    sget-boolean v0, LG01;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    sput-boolean v0, LG01;->b:Z

    .line 5
    sget-object v1, LYW0;->b:LGW;

    .line 6
    check-cast v1, LXW0;

    if-eqz v1, :cond_1

    new-instance v1, LG01;

    invoke-direct {v1}, LG01;-><init>()V

    .line 7
    invoke-static {v0, v1}, Lorg/chromium/base/task/PostTask;->a(ILBW;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 8
    throw v0
.end method


# virtual methods
.method public a(LFW;)LuW;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LG01;->d(LFW;)LzW;

    move-result-object p1

    return-object p1
.end method

.method public a(LFW;Ljava/lang/Runnable;J)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, LG01;->d(LFW;)LzW;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, LCW;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public b(LFW;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LG01;->d(LFW;)LzW;

    move-result-object p1

    invoke-interface {p1}, LzW;->b()Z

    move-result p1

    return p1
.end method

.method public c(LFW;)LCW;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LG01;->d(LFW;)LzW;

    move-result-object p1

    return-object p1
.end method

.method public d(LFW;)LzW;
    .locals 7

    .line 1
    iget-object v0, p0, LG01;->a:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, LG01;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LzW;

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :cond_0
    new-instance v1, LAW;

    .line 6
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->d()Landroid/os/Handler;

    move-result-object v2

    .line 7
    sget-boolean v3, LG01;->c:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v3, LYW0;->b:LGW;

    .line 9
    iget-byte v6, p1, LFW;->f:B

    check-cast v3, LXW0;

    const/4 v3, 0x0

    if-ne v6, v5, :cond_2

    .line 10
    iget-object v3, p1, LFW;->g:[B

    .line 11
    aget-byte v3, v3, v5

    .line 12
    new-instance v6, LYW0;

    .line 13
    invoke-direct {v6}, LYW0;-><init>()V

    .line 14
    iput v3, v6, LYW0;->a:I

    move-object v3, v6

    :cond_2
    if-nez v3, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    iget v3, v3, LYW0;->a:I

    if-eq v3, v5, :cond_4

    const/4 v6, 0x2

    if-eq v3, v6, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    .line 16
    :goto_0
    invoke-direct {v1, v2, p1, v4}, LAW;-><init>(Landroid/os/Handler;LFW;Z)V

    .line 17
    iget-object v2, p0, LG01;->a:Ljava/util/WeakHashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
