.class public abstract Lorg/chromium/base/library_loader/Linker;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final e:Ljava/lang/Object;

.field public static f:Lorg/chromium/base/library_loader/Linker;


# instance fields
.field public a:Lorg/chromium/base/library_loader/Linker$LibInfo;

.field public b:Z

.field public c:J

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/library_loader/Linker;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/base/library_loader/Linker;->b:Z

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lorg/chromium/base/library_loader/Linker;->c:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/chromium/base/library_loader/Linker;->d:I

    return-void
.end method

.method public static f()Lorg/chromium/base/library_loader/Linker;
    .locals 6

    .line 1
    sget-object v0, Lorg/chromium/base/library_loader/Linker;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lorg/chromium/base/library_loader/Linker;->f:Lorg/chromium/base/library_loader/Linker;

    if-nez v1, :cond_1

    .line 3
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "incrementalinstall"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    :cond_0
    new-instance v1, Lorg/chromium/base/library_loader/LegacyLinker;

    invoke-direct {v1}, Lorg/chromium/base/library_loader/LegacyLinker;-><init>()V

    sput-object v1, Lorg/chromium/base/library_loader/Linker;->f:Lorg/chromium/base/library_loader/Linker;

    const-string v2, "Linker"

    const-string v3, "Using linker: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_1
    sget-object v1, Lorg/chromium/base/library_loader/Linker;->f:Lorg/chromium/base/library_loader/Linker;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static native nativeGetRandomBaseLoadAddress()J
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/base/library_loader/Linker;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/base/library_loader/Linker;->b()V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/Linker;->b:Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(J)V
    .locals 2

    .line 12
    sget-object v0, Lorg/chromium/base/library_loader/Linker;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/base/library_loader/Linker;->b()V

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/Linker;->b:Z

    .line 15
    iput-wide p1, p0, Lorg/chromium/base/library_loader/Linker;->c:J

    .line 16
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 8
    sget-object v0, Lorg/chromium/base/library_loader/Linker;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-static {p1}, Lorg/chromium/base/library_loader/Linker$LibInfo;->a(Landroid/os/Bundle;)Lorg/chromium/base/library_loader/Linker$LibInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/base/library_loader/Linker;->a:Lorg/chromium/base/library_loader/Linker$LibInfo;

    .line 10
    sget-object p1, Lorg/chromium/base/library_loader/Linker;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 11
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    .line 5
    sget-object v0, Lorg/chromium/base/library_loader/Linker;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/base/library_loader/Linker;->b(Ljava/lang/String;Z)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/chromium/base/library_loader/Linker;->d:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "chromium_android_linker"

    .line 2
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->b()V

    .line 3
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    sget-boolean v2, Lorg/chromium/base/library_loader/LibraryLoader;->g:Z

    if-eqz v2, :cond_2

    .line 5
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 7
    invoke-static {v1, v0}, Lorg/chromium/base/library_loader/LibraryLoader;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/Linker;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/base/library_loader/Linker;->e()V

    :cond_1
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lorg/chromium/base/library_loader/Linker;->d:I

    return-void

    .line 10
    :cond_2
    throw v1
.end method

.method public abstract b(Ljava/lang/String;Z)V
.end method

.method public final c()J
    .locals 3

    .line 1
    sget-object v0, Lorg/chromium/base/library_loader/Linker;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/base/library_loader/Linker;->b()V

    .line 3
    invoke-virtual {p0}, Lorg/chromium/base/library_loader/Linker;->e()V

    .line 4
    iget-wide v1, p0, Lorg/chromium/base/library_loader/Linker;->c:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()Landroid/os/Bundle;
    .locals 4

    .line 1
    sget-object v0, Lorg/chromium/base/library_loader/Linker;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/chromium/base/library_loader/Linker;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lorg/chromium/base/library_loader/Linker;->a:Lorg/chromium/base/library_loader/Linker$LibInfo;

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "libinfo"

    .line 5
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    monitor-exit v0

    return-object v2

    .line 7
    :cond_0
    throw v3

    .line 8
    :cond_1
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/base/library_loader/Linker;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->nativeGetRandomBaseLoadAddress()J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lorg/chromium/base/library_loader/Linker;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Linker"

    const-string v2, "Disabling shared RELROs due address space pressure"

    .line 4
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
