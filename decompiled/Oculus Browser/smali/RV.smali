.class public LRV;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:LQV;

.field public final c:[Ljava/lang/String;

.field public final d:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

.field public final e:LsV;

.field public final f:Ljava/util/List;

.field public g:LLV;


# direct methods
.method public constructor <init>(Landroid/os/Handler;LQV;[Ljava/lang/String;[Lorg/chromium/base/process_launcher/FileDescriptorInfo;LsV;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LRV;->a:Landroid/os/Handler;

    .line 3
    invoke-virtual {p0}, LRV;->a()Z

    .line 4
    iput-object p3, p0, LRV;->c:[Ljava/lang/String;

    .line 5
    iput-object p5, p0, LRV;->e:LsV;

    .line 6
    iput-object p2, p0, LRV;->b:LQV;

    .line 7
    iput-object p4, p0, LRV;->d:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    .line 8
    iput-object p6, p0, LRV;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 11
    iget-object v0, p0, LRV;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final a(LKV;ZZ)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, LRV;->b:LQV;

    check-cast v1, LWV0;

    if-eqz v1, :cond_3

    .line 3
    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    iget-object v1, p0, LRV;->e:LsV;

    .line 5
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v1, v2, v0, p1}, LsV;->a(Landroid/content/Context;Landroid/os/Bundle;LKV;)LLV;

    move-result-object v0

    iput-object v0, p0, LRV;->g:LLV;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 7
    :cond_0
    iget-object v1, p0, LRV;->e:LsV;

    new-instance v2, LMV;

    invoke-direct {v2, p0, p1, p2, p3}, LMV;-><init>(LRV;LKV;ZZ)V

    .line 8
    invoke-virtual {v1, v2}, LsV;->a(Ljava/lang/Runnable;)V

    return v0

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p0}, LRV;->b()V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public a(ZZ)Z
    .locals 4

    const-string v0, "ChildProcessLauncher.start"

    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v1, LOV;

    invoke-direct {v1, p0, p1, p2}, LOV;-><init>(LRV;ZZ)V

    .line 14
    iget-object v2, p0, LRV;->b:LQV;

    iget-object v3, p0, LRV;->e:LsV;

    invoke-virtual {v2, v3, v1}, LQV;->a(LsV;LKV;)LLV;

    move-result-object v2

    iput-object v2, p0, LRV;->g:LLV;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {p0}, LRV;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return v3

    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1, p1, p2}, LRV;->a(LKV;ZZ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 18
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return p1

    :cond_1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return v3

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 7

    .line 1
    new-instance v0, LPV;

    invoke-direct {v0, p0}, LPV;-><init>(LRV;)V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v2, p0, LRV;->c:[Ljava/lang/String;

    const-string v3, "org.chromium.base.process_launcher.extra.command_line"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, LRV;->d:[Lorg/chromium/base/process_launcher/FileDescriptorInfo;

    const-string v3, "org.chromium.base.process_launcher.extra.extraFiles"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5
    iget-object v2, p0, LRV;->b:LQV;

    check-cast v2, LWV0;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 6
    invoke-static {}, LJ/N;->MOiBJ1qS()I

    move-result v2

    const-string v4, "com.google.android.apps.chrome.extra.cpu_count"

    .line 7
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    invoke-static {}, LJ/N;->ML0T8q1U()J

    move-result-wide v4

    const-string v2, "com.google.android.apps.chrome.extra.cpu_features"

    .line 9
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 10
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->f()Lorg/chromium/base/library_loader/Linker;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/base/library_loader/Linker;->d()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "org.chromium.base.android.linker.shared_relros"

    .line 11
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12
    iget-object v2, p0, LRV;->g:LLV;

    .line 13
    iget-object v4, p0, LRV;->f:Ljava/util/List;

    const-string v5, "ChildProcessConnection.setupConnection"

    .line 14
    iget-boolean v6, v2, LLV;->l:Z

    if-eqz v6, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ChildProcessConn"

    const-string v4, "Tried to setup a connection that already disconnected."

    .line 15
    invoke-static {v2, v4, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v0, v3}, LPV;->a(LLV;)V

    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    invoke-static {v5, v3}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iput-object v0, v2, LLV;->h:LIV;

    .line 19
    new-instance v0, LJV;

    invoke-direct {v0, v1, v4}, LJV;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    iput-object v0, v2, LLV;->g:LJV;

    .line 20
    iget-boolean v0, v2, LLV;->k:Z

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v2}, LLV;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    invoke-static {v5}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v5}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_2
    throw v3
.end method
