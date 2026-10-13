.class public LVV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LWV;


# direct methods
.method public constructor <init>(LWV;)V
    .locals 0

    .line 1
    iput-object p1, p0, LVV;->w:LWV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, LVV;->w:LWV;

    .line 2
    iget-object v2, v2, LWV;->h:Ljava/lang/Thread;

    .line 3
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :goto_0
    :try_start_1
    iget-object v3, p0, LVV;->w:LWV;

    .line 5
    iget-object v3, v3, LWV;->i:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 6
    iget-object v3, p0, LVV;->w:LWV;

    .line 7
    iget-object v3, v3, LWV;->h:Ljava/lang/Thread;

    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 9
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 10
    :try_start_2
    iget-object v2, p0, LVV;->w:LWV;

    .line 11
    iget-object v2, v2, LWV;->i:[Ljava/lang/String;

    .line 12
    invoke-static {v2}, LwT;->a([Ljava/lang/String;)V

    .line 13
    invoke-static {}, LwT;->c()LwT;

    move-result-object v2

    const-string v3, "renderer-wait-for-java-debugger"

    invoke-virtual {v2, v3}, LwT;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 15
    :cond_1
    iget-object v2, p0, LVV;->w:LWV;

    .line 16
    iget-object v2, v2, LWV;->a:LXV;

    .line 17
    iget-object v3, p0, LVV;->w:LWV;

    .line 18
    iget-object v3, v3, LWV;->c:Landroid/content/Context;

    .line 19
    invoke-interface {v2, v3}, LXV;->a(Landroid/content/Context;)V

    .line 20
    iget-object v2, p0, LVV;->w:LWV;

    .line 21
    iget-object v2, v2, LWV;->e:Ljava/lang/Object;

    .line 22
    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 23
    :try_start_3
    iget-object v3, p0, LVV;->w:LWV;

    .line 24
    iput-boolean v0, v3, LWV;->k:Z

    .line 25
    iget-object v3, p0, LVV;->w:LWV;

    .line 26
    iget-object v3, v3, LWV;->e:Ljava/lang/Object;

    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 28
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    :try_start_4
    iget-object v2, p0, LVV;->w:LWV;

    .line 30
    iget-object v2, v2, LWV;->h:Ljava/lang/Thread;

    .line 31
    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 32
    :try_start_5
    iget-object v3, p0, LVV;->w:LWV;

    .line 33
    iget-object v3, v3, LWV;->h:Ljava/lang/Thread;

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 35
    :goto_1
    iget-object v3, p0, LVV;->w:LWV;

    .line 36
    iget-object v3, v3, LWV;->j:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    if-nez v3, :cond_2

    .line 37
    iget-object v3, p0, LVV;->w:LWV;

    .line 38
    iget-object v3, v3, LWV;->h:Ljava/lang/Thread;

    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 40
    :cond_2
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 41
    :try_start_6
    iget-object v2, p0, LVV;->w:LWV;

    .line 42
    iget-object v2, v2, LWV;->a:LXV;

    .line 43
    invoke-interface {v2}, LXV;->c()Landroid/util/SparseArray;

    move-result-object v2

    .line 44
    iget-object v3, p0, LVV;->w:LWV;

    .line 45
    iget-object v3, v3, LWV;->j:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    .line 46
    array-length v3, v3

    new-array v3, v3, [I

    .line 47
    iget-object v4, p0, LVV;->w:LWV;

    .line 48
    iget-object v4, v4, LWV;->j:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    .line 49
    array-length v4, v4

    new-array v4, v4, [Ljava/lang/String;

    .line 50
    iget-object v5, p0, LVV;->w:LWV;

    .line 51
    iget-object v5, v5, LWV;->j:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    .line 52
    array-length v5, v5

    new-array v5, v5, [I

    .line 53
    iget-object v6, p0, LVV;->w:LWV;

    .line 54
    iget-object v6, v6, LWV;->j:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    .line 55
    array-length v6, v6

    new-array v6, v6, [J

    .line 56
    iget-object v7, p0, LVV;->w:LWV;

    .line 57
    iget-object v7, v7, LWV;->j:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    .line 58
    array-length v7, v7

    new-array v7, v7, [J

    const/4 v8, 0x0

    .line 59
    :goto_2
    iget-object v9, p0, LVV;->w:LWV;

    .line 60
    iget-object v9, v9, LWV;->j:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    .line 61
    array-length v9, v9

    if-ge v8, v9, :cond_5

    .line 62
    iget-object v9, p0, LVV;->w:LWV;

    .line 63
    iget-object v9, v9, LWV;->j:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    .line 64
    aget-object v9, v9, v8

    if-eqz v2, :cond_3

    .line 65
    iget v10, v9, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->w:I

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_4

    .line 66
    aput-object v10, v4, v8

    goto :goto_4

    .line 67
    :cond_4
    iget v10, v9, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->w:I

    aput v10, v3, v8

    .line 68
    :goto_4
    iget-object v10, v9, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->x:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v10

    aput v10, v5, v8

    .line 69
    iget-wide v10, v9, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->y:J

    aput-wide v10, v6, v8

    .line 70
    iget-wide v9, v9, Lorg/chromium/base/process_launcher/FileDescriptorInfo;->z:J

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 71
    :cond_5
    invoke-static {v4, v3, v5, v6, v7}, LJ/N;->Ma6rsNQO([Ljava/lang/String;[I[I[J[J)V

    .line 72
    iget-object v2, p0, LVV;->w:LWV;

    .line 73
    iget-object v2, v2, LWV;->a:LXV;

    .line 74
    invoke-interface {v2}, LXV;->a()V

    .line 75
    iget-object v2, p0, LVV;->w:LWV;

    .line 76
    iget-object v2, v2, LWV;->a:LXV;

    .line 77
    invoke-interface {v2}, LXV;->d()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 78
    :try_start_7
    iget-object v2, p0, LVV;->w:LWV;

    .line 79
    iget-object v2, v2, LWV;->m:LeW;

    .line 80
    invoke-interface {v2}, LeW;->c()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catch_0
    move-exception v2

    :try_start_8
    const-string v3, "ChildProcessService"

    const-string v4, "Failed to call clean exit callback."

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    .line 81
    invoke-static {v3, v4, v5}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :goto_5
    invoke-static {}, LJ/N;->McvJWQ0j()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    :catchall_0
    move-exception v3

    .line 83
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v3
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    :catchall_1
    move-exception v3

    .line 84
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v3
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1

    :catchall_2
    move-exception v3

    .line 85
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v3
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_1

    :catch_1
    move-exception v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ChildProcessMain"

    aput-object v4, v3, v1

    aput-object v2, v3, v0

    const-string v0, "ChildProcessService"

    const-string v1, "%s startup failed: %s"

    .line 86
    invoke-static {v0, v1, v3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    return-void
.end method
