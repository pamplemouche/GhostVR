.class public abstract Leu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leu;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu;->d:Z

    iput-object p1, p0, Leu;->a:Landroid/content/Context;

    iput-object p2, p0, Leu;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Llq;Landroid/content/Context;)Ljava/lang/Object;
.end method

.method public final a()Z
    .locals 1

    invoke-virtual {p0}, Leu;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()V
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Leu;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leu;->e:Ljava/lang/Object;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Leu;->b()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Leu;->c:Ljava/lang/String;

    const-string v3, "Could not finalize native handle"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final d()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Leu;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leu;->e:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leu;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Leu;->a:Landroid/content/Context;

    sget-object v2, Llq;->i:Liq;

    const-string v3, "com.google.android.gms.vision.dynamite"

    invoke-static {v1, v2, v3}, Llq;->a(Landroid/content/Context;Liq;Ljava/lang/String;)Llq;

    move-result-object v1

    iget-object v2, p0, Leu;->a:Landroid/content/Context;

    invoke-virtual {p0, v1, v2}, Leu;->a(Llq;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Leu;->e:Ljava/lang/Object;
    :try_end_1
    .catch Lfq; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    :try_start_2
    iget-object v2, p0, Leu;->c:Ljava/lang/String;

    const-string v3, "Error creating remote native handle"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-boolean v1, p0, Leu;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Leu;->e:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v1, p0, Leu;->c:Ljava/lang/String;

    const-string v2, "Native handle not yet available. Reverting to no-op handle."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Leu;->d:Z

    goto :goto_2

    :cond_1
    iget-boolean v1, p0, Leu;->d:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Leu;->e:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, Leu;->c:Ljava/lang/String;

    const-string v2, "Native handle is now available."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    iget-object v1, p0, Leu;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
