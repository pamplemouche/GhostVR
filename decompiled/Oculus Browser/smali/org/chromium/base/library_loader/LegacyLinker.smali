.class public Lorg/chromium/base/library_loader/LegacyLinker;
.super Lorg/chromium/base/library_loader/Linker;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/base/library_loader/Linker;-><init>()V

    return-void
.end method

.method public static a(Lorg/chromium/base/library_loader/Linker$LibInfo;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lorg/chromium/base/library_loader/Linker$LibInfo;->w:Ljava/lang/String;

    .line 6
    invoke-static {v0, p0}, Lorg/chromium/base/library_loader/LegacyLinker;->nativeUseSharedRelro(Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "LegacyLinker"

    const-string v1, "Could not use shared RELRO section for %s"

    .line 7
    invoke-static {v0, v1, p0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static native nativeAddZipArchivePath(Ljava/lang/String;)Z
.end method

.method public static native nativeCreateSharedRelro(Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method public static native nativeLoadLibrary(Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method public static native nativeUseSharedRelro(Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/base/library_loader/Linker;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/base/library_loader/Linker;->b()V

    .line 3
    invoke-static {p1}, Lorg/chromium/base/library_loader/LegacyLinker;->nativeAddZipArchivePath(Ljava/lang/String;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/chromium/base/library_loader/Linker;->b()V

    .line 2
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/Linker;->b:Z

    if-eqz p2, :cond_0

    .line 3
    iget-wide v1, p0, Lorg/chromium/base/library_loader/Linker;->c:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 4
    :goto_0
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-direct {p2}, Lorg/chromium/base/library_loader/Linker$LibInfo;-><init>()V

    .line 6
    invoke-static {p1, v1, v2, p2}, Lorg/chromium/base/library_loader/LegacyLinker;->nativeLoadLibrary(Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "LegacyLinker"

    if-eqz v1, :cond_5

    .line 7
    iput-object p1, p2, Lorg/chromium/base/library_loader/Linker$LibInfo;->w:Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 8
    iget-wide v4, p0, Lorg/chromium/base/library_loader/Linker;->c:J

    invoke-static {p1, v4, v5, p2}, Lorg/chromium/base/library_loader/LegacyLinker;->nativeCreateSharedRelro(Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result v0

    const/4 v4, 0x2

    if-nez v0, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const/4 p1, 0x1

    .line 9
    iget-wide v5, p0, Lorg/chromium/base/library_loader/Linker;->c:J

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, p1

    const-string p1, "Could not create shared RELRO for %s at %x"

    .line 11
    invoke-static {v3, p1, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iput v1, p2, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    .line 13
    :cond_1
    iput-object p2, p0, Lorg/chromium/base/library_loader/Linker;->a:Lorg/chromium/base/library_loader/Linker$LibInfo;

    .line 14
    invoke-static {p2}, Lorg/chromium/base/library_loader/LegacyLinker;->a(Lorg/chromium/base/library_loader/Linker$LibInfo;)V

    .line 15
    iput v4, p0, Lorg/chromium/base/library_loader/Linker;->d:I

    goto :goto_2

    .line 16
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/chromium/base/library_loader/Linker;->a:Lorg/chromium/base/library_loader/Linker$LibInfo;

    if-nez p1, :cond_3

    .line 17
    :try_start_0
    sget-object p1, Lorg/chromium/base/library_loader/Linker;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {p1}, Lorg/chromium/base/library_loader/LegacyLinker;->a(Lorg/chromium/base/library_loader/Linker$LibInfo;)V

    .line 19
    iget-object p1, p0, Lorg/chromium/base/library_loader/Linker;->a:Lorg/chromium/base/library_loader/Linker$LibInfo;

    .line 20
    iget p2, p1, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    if-ltz p2, :cond_4

    .line 21
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    invoke-static {p2}, LpU;->a(Ljava/io/Closeable;)V

    .line 22
    iput v1, p1, Lorg/chromium/base/library_loader/Linker$LibInfo;->mRelroFd:I

    :cond_4
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lorg/chromium/base/library_loader/Linker;->a:Lorg/chromium/base/library_loader/Linker$LibInfo;

    const/4 p1, 0x3

    .line 24
    iput p1, p0, Lorg/chromium/base/library_loader/Linker;->d:I

    :goto_2
    return-void

    :cond_5
    const-string p2, "Unable to load library: "

    .line 25
    invoke-static {p2, p1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 26
    invoke-static {v3, p1, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    new-instance p2, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {p2, p1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p2
.end method
