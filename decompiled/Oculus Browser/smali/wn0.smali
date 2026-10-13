.class public Lwn0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lm81;


# instance fields
.field public A:Ljava/lang/String;

.field public B:I

.field public C:I

.field public D:Landroid/os/Handler;

.field public E:Ljava/lang/Runnable;

.field public w:Lvn0;

.field public x:Ltn0;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Lvn0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lwn0;->y:I

    .line 3
    iput v0, p0, Lwn0;->z:I

    .line 4
    iput v0, p0, Lwn0;->B:I

    .line 5
    iput-object p1, p0, Lwn0;->w:Lvn0;

    .line 6
    new-instance p1, Lun0;

    invoke-direct {p1, p0}, Lun0;-><init>(Lwn0;)V

    iput-object p1, p0, Lwn0;->x:Ltn0;

    .line 7
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lwn0;->D:Landroid/os/Handler;

    .line 8
    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Lm81;)V

    .line 9
    sget-object p1, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    .line 10
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifier;->getCurrentConnectionType()I

    move-result p1

    invoke-virtual {p0, p1}, Lwn0;->a(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 10
    iget-object v0, p0, Lwn0;->x:Ltn0;

    check-cast v0, Lun0;

    if-eqz v0, :cond_2

    .line 11
    iget v0, p0, Lwn0;->B:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1388

    new-instance v2, Lqn0;

    invoke-direct {v2, p0}, Lqn0;-><init>(Lwn0;)V

    if-eqz v0, :cond_1

    const-string v0, "https://www.google.com/generate_204"

    goto :goto_1

    :cond_1
    const-string v0, "http://connectivitycheck.gstatic.com/generate_204"

    .line 12
    :goto_1
    new-instance v3, Lrn0;

    invoke-direct {v3, p0, v0, v1, v2}, Lrn0;-><init>(Lwn0;Ljava/lang/String;ILorg/chromium/base/Callback;)V

    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 13
    invoke-virtual {v3, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 14
    throw v0
.end method

.method public a(I)V
    .locals 4

    .line 1
    iget v0, p0, Lwn0;->y:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput p1, p0, Lwn0;->y:I

    const-string p1, "onConnectionTypeChanged "

    .line 3
    invoke-static {p1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v3, p0, Lwn0;->y:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "OfflineIndicator"

    invoke-static {v3, p1, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget p1, p0, Lwn0;->y:I

    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lwn0;->b(I)V

    .line 6
    invoke-virtual {p0}, Lwn0;->e()V

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 7
    iget p1, p0, Lwn0;->B:I

    if-eqz p1, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0}, Lwn0;->e()V

    .line 9
    invoke-virtual {p0}, Lwn0;->b()V

    return-void
.end method

.method public final b()V
    .locals 11

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lwn0;->B:I

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lwn0;->C:I

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    iget-object v2, p0, Lwn0;->x:Ltn0;

    check-cast v2, Lun0;

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    const-string v2, "OfflineIndicatorAlwaysHttpProbe"

    .line 5
    invoke-static {v2}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v2, v5, :cond_1

    .line 7
    sget-object v2, LzT;->a:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 8
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/net/ConnectivityManager;

    :cond_1
    if-nez v3, :cond_2

    :goto_0
    const/4 v0, 0x0

    goto :goto_3

    .line 9
    :cond_2
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    .line 10
    array-length v5, v2

    if-nez v5, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    array-length v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v0, :cond_7

    aget-object v7, v2, v5

    .line 12
    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    const-string v8, "Reported by system: "

    .line 13
    invoke-static {v8}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Object;

    const-string v10, "OfflineIndicator"

    invoke-static {v10, v8, v9}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v8, 0x10

    .line 14
    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0xc

    .line 15
    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0xd

    .line 16
    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v0, 0x4

    goto :goto_3

    :cond_5
    const/16 v8, 0x11

    .line 17
    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v6, 0x1

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    const/4 v0, 0x3

    goto :goto_3

    :cond_8
    const/4 v0, 0x2

    :goto_3
    if-eqz v0, :cond_9

    .line 18
    invoke-virtual {p0, v0}, Lwn0;->b(I)V

    .line 19
    invoke-virtual {p0}, Lwn0;->c()V

    return-void

    .line 20
    :cond_9
    iget-object v0, p0, Lwn0;->A:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 21
    invoke-static {}, LJ/N;->M5LbL2nl()Ljava/lang/String;

    move-result-object v0

    .line 22
    iput-object v0, p0, Lwn0;->A:Ljava/lang/String;

    .line 23
    :cond_a
    iput v4, p0, Lwn0;->B:I

    .line 24
    invoke-virtual {p0}, Lwn0;->a()V

    return-void

    .line 25
    :cond_b
    throw v3
.end method

.method public b(I)V
    .locals 2

    .line 26
    iget v0, p0, Lwn0;->z:I

    if-ne v0, p1, :cond_0

    return-void

    .line 27
    :cond_0
    iput p1, p0, Lwn0;->z:I

    .line 28
    iget-object v0, p0, Lwn0;->w:Lvn0;

    check-cast v0, Lyn0;

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 29
    :goto_0
    invoke-virtual {v0, p1}, Lyn0;->a(Z)V

    :goto_1
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 30
    throw p1
.end method

.method public final c()V
    .locals 3

    .line 1
    iget v0, p0, Lwn0;->z:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lwn0;->e()V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lwn0;->B:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput v2, p0, Lwn0;->B:I

    .line 5
    invoke-virtual {p0}, Lwn0;->d()V

    goto :goto_0

    .line 6
    :cond_2
    iput v1, p0, Lwn0;->B:I

    .line 7
    invoke-virtual {p0}, Lwn0;->a()V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lwn0;->d()V

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget v0, p0, Lwn0;->C:I

    const/4 v1, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x1388

    .line 2
    iput v0, p0, Lwn0;->C:I

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 3
    iput v0, p0, Lwn0;->C:I

    .line 4
    :goto_0
    iget v0, p0, Lwn0;->C:I

    const v2, 0x1d4c0

    const/4 v3, 0x0

    const-string v4, "OfflineIndicator"

    if-lt v0, v2, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "No more retry after exceeding 120000ms"

    .line 5
    invoke-static {v4, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget v0, p0, Lwn0;->z:I

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Lwn0;->b(I)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "Retry after "

    .line 8
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lwn0;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    new-instance v0, Lsn0;

    invoke-direct {v0, p0}, Lsn0;-><init>(Lwn0;)V

    iput-object v0, p0, Lwn0;->E:Ljava/lang/Runnable;

    .line 10
    iget-object v1, p0, Lwn0;->D:Landroid/os/Handler;

    iget v2, p0, Lwn0;->C:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget v0, p0, Lwn0;->B:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lwn0;->E:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lwn0;->D:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lwn0;->E:Ljava/lang/Runnable;

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lwn0;->B:I

    return-void
.end method
