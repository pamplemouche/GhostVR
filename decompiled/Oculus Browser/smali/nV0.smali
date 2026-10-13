.class public LnV0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final i:Ljava/lang/Object;

.field public static j:LnV0;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/String;

.field public final c:LpV0;

.field public d:Landroid/accounts/Account;

.field public e:Z

.field public f:Z

.field public g:Z

.field public final h:LWT;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LnV0;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LpV0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LnV0;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, LnV0;->h:LWT;

    .line 4
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LnV0;->b:Ljava/lang/String;

    .line 6
    iput-object p1, p0, LnV0;->c:LpV0;

    .line 7
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object p1

    invoke-virtual {p1}, LKU0;->b()Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, LnV0;->d:Landroid/accounts/Account;

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, LnV0;->a(Lorg/chromium/base/Callback;)V

    .line 9
    invoke-virtual {p0}, LnV0;->c()Z

    .line 10
    iget-object v0, p0, LnV0;->c:LpV0;

    const/4 v1, 0x1

    new-instance v2, LlV0;

    invoke-direct {v2, p0, p1}, LlV0;-><init>(LnV0;LkV0;)V

    check-cast v0, LqV0;

    if-eqz v0, :cond_0

    .line 11
    invoke-static {v1, v2}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    return-void

    :cond_0
    throw p1
.end method

.method public static synthetic a(Ljava/lang/Throwable;LqU;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 38
    :try_start_0
    invoke-virtual {p1}, LqU;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 39
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, LqU;->close()V

    :goto_0
    return-void
.end method

.method public static d()LnV0;
    .locals 3

    .line 1
    sget-object v0, LnV0;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LnV0;->j:LnV0;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, LqV0;

    invoke-direct {v1}, LqV0;-><init>()V

    .line 4
    new-instance v2, LnV0;

    invoke-direct {v2, v1}, LnV0;-><init>(LpV0;)V

    sput-object v2, LnV0;->j:LnV0;

    .line 5
    :cond_0
    sget-object v1, LnV0;->j:LnV0;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Landroid/accounts/Account;Lorg/chromium/base/Callback;)V
    .locals 1

    .line 2
    iget-object v0, p0, LnV0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iput-object p1, p0, LnV0;->d:Landroid/accounts/Account;

    .line 4
    invoke-virtual {p0, p2}, LnV0;->a(Lorg/chromium/base/Callback;)V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, LnV0;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, LnV0;->b()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(LmV0;)V
    .locals 2

    .line 9
    iget-object v0, p0, LnV0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, LnV0;->h:LWT;

    invoke-virtual {v1, p1}, LWT;->a(Ljava/lang/Object;)Z

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lorg/chromium/base/Callback;)V
    .locals 6

    .line 25
    iget-object v0, p0, LnV0;->d:Landroid/accounts/Account;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-boolean v3, p0, LnV0;->e:Z

    if-ne v3, v0, :cond_2

    if-eqz p1, :cond_1

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 28
    :cond_2
    iput-boolean v0, p0, LnV0;->e:Z

    .line 29
    invoke-static {}, LqU;->e()LqU;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 30
    :try_start_0
    iget-object v0, p0, LnV0;->c:LpV0;

    iget-object v4, p0, LnV0;->d:Landroid/accounts/Account;

    iget-object v5, p0, LnV0;->b:Ljava/lang/String;

    check-cast v0, LqV0;

    if-eqz v0, :cond_4

    .line 31
    invoke-static {v4, v5, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 32
    iget-object v0, p0, LnV0;->c:LpV0;

    iget-object v2, p0, LnV0;->d:Landroid/accounts/Account;

    iget-object v4, p0, LnV0;->b:Ljava/lang/String;

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    check-cast v0, LqV0;

    if-eqz v0, :cond_3

    .line 33
    invoke-static {v2, v4, v5}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    throw v3

    .line 34
    :cond_4
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 36
    invoke-static {p1, v1}, LnV0;->a(Ljava/lang/Throwable;LqU;)V

    throw v0

    :cond_5
    :goto_1
    invoke-static {v3, v1}, LnV0;->a(Ljava/lang/Throwable;LqU;)V

    .line 37
    new-instance v0, LiV0;

    invoke-direct {v0, p0, p1}, LiV0;-><init>(LnV0;Lorg/chromium/base/Callback;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic a(Lorg/chromium/base/Callback;Ljava/util/List;)V
    .locals 8

    .line 41
    iget-object v0, p0, LnV0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_0
    invoke-static {}, LqU;->e()LqU;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 43
    :goto_0
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_3

    .line 44
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    .line 45
    iget-object v6, p0, LnV0;->d:Landroid/accounts/Account;

    invoke-virtual {v4, v6}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, LnV0;->c:LpV0;

    iget-object v7, p0, LnV0;->b:Ljava/lang/String;

    .line 46
    check-cast v6, LqV0;

    if-eqz v6, :cond_1

    .line 47
    invoke-static {v4, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    .line 48
    iget-object v6, p0, LnV0;->c:LpV0;

    iget-object v7, p0, LnV0;->b:Ljava/lang/String;

    check-cast v6, LqV0;

    if-eqz v6, :cond_0

    .line 49
    invoke-static {v4, v7, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    throw v5

    .line 50
    :cond_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    :cond_3
    :try_start_2
    invoke-static {v5, v1}, LnV0;->a(Ljava/lang/Throwable;LqU;)V

    .line 52
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    .line 53
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 54
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 55
    :try_start_4
    invoke-static {p1, v1}, LnV0;->a(Ljava/lang/Throwable;LqU;)V

    throw p2

    :catchall_2
    move-exception p1

    .line 56
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public final a(Z)V
    .locals 6

    .line 12
    iget-object v0, p0, LnV0;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0, v1}, LnV0;->a(Lorg/chromium/base/Callback;)V

    .line 14
    iget-boolean v2, p0, LnV0;->f:Z

    if-eq p1, v2, :cond_2

    iget-object v2, p0, LnV0;->d:Landroid/accounts/Account;

    if-nez v2, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iput-boolean p1, p0, LnV0;->f:Z

    .line 16
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 17
    iget-object v3, p0, LnV0;->c:LpV0;

    iget-object v4, p0, LnV0;->d:Landroid/accounts/Account;

    iget-object v5, p0, LnV0;->b:Ljava/lang/String;

    check-cast v3, LqV0;

    if-eqz v3, :cond_1

    .line 18
    invoke-static {v4, v5, p1}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 19
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {p0}, LnV0;->b()V

    return-void

    .line 22
    :cond_1
    :try_start_1
    throw v1

    .line 23
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LnV0;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LnV0;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()V
    .locals 2

    .line 4
    iget-object v0, p0, LnV0;->h:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LmV0;

    .line 5
    invoke-interface {v1}, LmV0;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(LmV0;)V
    .locals 2

    .line 1
    iget-object v0, p0, LnV0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, LnV0;->h:LWT;

    invoke-virtual {v1, p1}, LWT;->b(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()Z
    .locals 10

    .line 1
    iget-object v0, p0, LnV0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, LnV0;->f:Z

    .line 3
    iget-boolean v2, p0, LnV0;->g:Z

    .line 4
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 5
    iget-object v4, p0, LnV0;->d:Landroid/accounts/Account;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 6
    iget-object v4, p0, LnV0;->c:LpV0;

    iget-object v8, p0, LnV0;->d:Landroid/accounts/Account;

    iget-object v9, p0, LnV0;->b:Ljava/lang/String;

    .line 7
    check-cast v4, LqV0;

    if-eqz v4, :cond_2

    .line 8
    invoke-static {v8, v9}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 9
    :goto_0
    iput-boolean v4, p0, LnV0;->e:Z

    .line 10
    iget-object v4, p0, LnV0;->c:LpV0;

    iget-object v8, p0, LnV0;->d:Landroid/accounts/Account;

    iget-object v9, p0, LnV0;->b:Ljava/lang/String;

    check-cast v4, LqV0;

    if-eqz v4, :cond_1

    .line 11
    invoke-static {v8, v9}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 12
    iput-boolean v4, p0, LnV0;->f:Z

    goto :goto_1

    .line 13
    :cond_1
    throw v5

    .line 14
    :cond_2
    throw v5

    .line 15
    :cond_3
    iput-boolean v7, p0, LnV0;->e:Z

    .line 16
    iput-boolean v7, p0, LnV0;->f:Z

    .line 17
    :goto_1
    iget-object v4, p0, LnV0;->c:LpV0;

    check-cast v4, LqV0;

    if-eqz v4, :cond_6

    .line 18
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    .line 19
    iput-boolean v4, p0, LnV0;->g:Z

    .line 20
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 21
    iget-boolean v3, p0, LnV0;->f:Z

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, LnV0;->g:Z

    if-eq v2, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :cond_5
    :goto_2
    monitor-exit v0

    return v6

    .line 22
    :cond_6
    throw v5

    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
