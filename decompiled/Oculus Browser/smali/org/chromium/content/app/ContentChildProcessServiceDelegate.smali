.class public Lorg/chromium/content/app/ContentChildProcessServiceDelegate;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LXV;


# instance fields
.field public a:LAV0;

.field public b:I

.field public c:Ly01;

.field public d:I

.field public e:J

.field public f:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lorg/chromium/base/BuildInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, LDV0;

    invoke-direct {v0}, LDV0;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :goto_0
    return-void
.end method

.method private forwardSurfaceForSurfaceRequest(Lorg/chromium/base/UnguessableToken;Landroid/view/Surface;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->c:Ly01;

    const/4 v1, 0x0

    const-string v2, "ContentCPSDelegate"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "No callback interface has been provided."

    .line 2
    invoke-static {v2, p2, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Ly01;->a(Lorg/chromium/base/UnguessableToken;Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "Unable to call forwardSurfaceForSurfaceRequest: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    .line 5
    invoke-static {v2, v0, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    return-void

    :goto_0
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    throw p1
.end method

.method private getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->c:Ly01;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "ContentCPSDelegate"

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "No callback interface has been provided."

    .line 2
    invoke-static {v3, v0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 3
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Ly01;->d(I)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Unable to call getViewSurface: %s"

    .line 4
    invoke-static {v3, p1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private setFileDescriptorsIdsToKeys([I[Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->f:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->f:Landroid/util/SparseArray;

    aget v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 21
    iget v0, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->d:I

    iget-wide v1, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->e:J

    .line 22
    invoke-static {p0, v0, v1, v2}, LJ/N;->MBlO3kR9(Ljava/lang/Object;IJ)V

    .line 23
    sget-object v0, LZ01;->a:LFW;

    sget-object v1, LCV0;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    .line 24
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    .line 25
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/chromium/base/JNIUtils;->a:Ljava/lang/Boolean;

    .line 27
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->f()Lorg/chromium/base/library_loader/Linker;

    move-result-object v1

    .line 28
    iget-object v2, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->a:LAV0;

    iget-boolean v3, v2, LAV0;->b:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 29
    iget-wide v2, v2, LAV0;->a:J

    invoke-virtual {v1, v2, v3}, Lorg/chromium/base/library_loader/Linker;->a(J)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/base/library_loader/Linker;->a()V

    const/4 v0, 0x0

    .line 31
    :goto_0
    :try_start_0
    sget-object v2, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 32
    invoke-virtual {v2, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->a(Landroid/content/Context;)V
    :try_end_0
    .catch LMU; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    if-eqz v0, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "ContentCPSDelegate"

    const-string v3, "Failed to load native library with shared RELRO, retrying without"

    .line 33
    invoke-static {v2, v3, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v1}, Lorg/chromium/base/library_loader/Linker;->a()V

    .line 35
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 36
    invoke-virtual {v0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->a(Landroid/content/Context;)V

    .line 37
    :goto_1
    sget-object p1, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 38
    invoke-virtual {p1}, Lorg/chromium/base/library_loader/LibraryLoader;->a()V

    .line 39
    sget-object p1, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 40
    iget v0, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->b:I

    invoke-virtual {p1, v0}, Lorg/chromium/base/library_loader/LibraryLoader;->b(I)V

    .line 41
    invoke-static {p0}, LJ/N;->M0zXFFiu(Ljava/lang/Object;)V

    return-void

    .line 42
    :cond_1
    throw v2

    :cond_2
    const/4 p1, 0x0

    .line 43
    throw p1
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "org.chromium.content.common.linker_params.base_load_address"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "org.chromium.content.common.linker_params.wait_for_shared_relro"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "org.chromium.content.common.linker_params.test_runner_class_name"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "org.chromium.content.common.linker_params.linker_implementation"

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, LAV0;

    invoke-direct {v1, v0}, LAV0;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 7
    :goto_1
    iput-object v1, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->a:LAV0;

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "org.chromium.content.common.child_service_params.library_process_type"

    const/4 v1, 0x2

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 10
    iput p1, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->b:I

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 11
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 12
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    invoke-static {p2}, Lx01;->a(Landroid/os/IBinder;)Ly01;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 13
    :goto_0
    iput-object p2, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->c:Ly01;

    const-string p2, "com.google.android.apps.chrome.extra.cpu_count"

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->d:I

    const-string p2, "com.google.android.apps.chrome.extra.cpu_features"

    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->e:J

    .line 16
    sget-object p2, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    if-eqz p2, :cond_2

    const-string p2, "org.chromium.base.android.linker.shared_relros"

    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 18
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->f()Lorg/chromium/base/library_loader/Linker;

    move-result-object p2

    .line 19
    invoke-virtual {p2, p1}, Lorg/chromium/base/library_loader/Linker;->a(Landroid/os/Bundle;)V

    :cond_1
    return-void

    .line 20
    :cond_2
    throw v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 2
    invoke-virtual {v0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->b(Landroid/content/Context;)V

    return-void
.end method

.method public c()Landroid/util/SparseArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;->f:Landroid/util/SparseArray;

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, LJ/N;->M1Y_XVCN(Z)I

    return-void
.end method
