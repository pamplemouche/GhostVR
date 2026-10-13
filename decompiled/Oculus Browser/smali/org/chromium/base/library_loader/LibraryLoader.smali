.class public Lorg/chromium/base/library_loader/LibraryLoader;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final g:Z = false

.field public static h:Lorg/chromium/base/library_loader/LibraryLoader;

.field public static final i:LKU;


# instance fields
.field public volatile a:Z

.field public final b:Ljava/lang/Object;

.field public c:Z

.field public d:Z

.field public e:I

.field public f:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-direct {v0}, Lorg/chromium/base/library_loader/LibraryLoader;-><init>()V

    sput-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 2
    new-instance v0, LKU;

    invoke-direct {v0}, LKU;-><init>()V

    sput-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->i:LKU;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "LibraryLoader"

    const-string v4, "Failed to load libName %s, attempting fallback extraction then trying again"

    .line 36
    invoke-static {v3, v4, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-static {p1, v2, v2}, Lorg/chromium/base/library_loader/LibraryLoader;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v1

    const-string v3, "native_libraries"

    if-nez v1, :cond_0

    .line 39
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 40
    invoke-static {v1}, LR3;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 41
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 43
    invoke-virtual {v1, v0, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 44
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 45
    invoke-virtual {v4, v0, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 46
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 47
    sget-object v4, LzT;->a:Landroid/content/Context;

    .line 48
    invoke-static {v4}, LR3;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    sget-object v4, LrT;->a:Lorg/chromium/base/BuildInfo;

    .line 53
    iget-object v4, v4, Lorg/chromium/base/BuildInfo;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 56
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 58
    invoke-virtual {v3, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    .line 59
    invoke-static {p0, v4}, LFT;->a(Ljava/io/InputStream;Ljava/io/File;)V

    .line 60
    invoke-virtual {v4, v0, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 61
    invoke-virtual {v4, v0, v2}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 63
    :cond_1
    :try_start_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find ZipEntry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v3, v1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 64
    :goto_0
    :try_start_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    .line 65
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 66
    :catch_2
    :goto_2
    throw p0

    .line 67
    :catch_3
    :cond_3
    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_0

    const-string p2, "arm64-v8a"

    goto :goto_0

    :cond_0
    const-string p2, "armeabi-v7a"

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "crazy."

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 83
    :goto_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    .line 84
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p1

    const-string p0, "lib/%s/%s%s"

    .line 85
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 21
    :try_start_0
    iget-object p1, p1, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 22
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p1, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {p0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Lorg/chromium/base/library_loader/Linker;Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 30
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/chromium/base/library_loader/Linker;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sget-object p0, Lorg/chromium/base/library_loader/LibraryLoader;->i:LKU;

    invoke-virtual {p0, v1, p2, v1}, LKU;->a(ZZZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v2, "LibraryLoader"

    const-string v3, "Failed to load native library with shared RELRO, retrying without"

    new-array v4, v0, [Ljava/lang/Object;

    .line 32
    invoke-static {v2, v3, v4}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    sget-object v2, Lorg/chromium/base/library_loader/LibraryLoader;->i:LKU;

    invoke-virtual {v2, v0, p2, v1}, LKU;->a(ZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lorg/chromium/base/library_loader/Linker;->a(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    sget-object p0, Lorg/chromium/base/library_loader/LibraryLoader;->i:LKU;

    invoke-virtual {p0, v1, p2, v0}, LKU;->a(ZZZ)V

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    const/4 v1, 0x0

    :goto_1
    sget-object p1, Lorg/chromium/base/library_loader/LibraryLoader;->i:LKU;

    invoke-virtual {p1, v1, p2, v0}, LKU;->a(ZZZ)V

    throw p0
.end method

.method public static a(Z)V
    .locals 2

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "reached_code_profiler_enabled"

    .line 2
    invoke-static {v0, v1, p0}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static b()V
    .locals 0

    return-void
.end method

.method public static b(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 5

    .line 7
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->f()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    .line 8
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v4, "/system/"

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "LibraryLoader"

    if-eqz v1, :cond_1

    .line 10
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, p0}, Lorg/chromium/base/library_loader/Linker;->a(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p0, v1, v2

    const-string p0, " Loading %s from within %s"

    .line 12
    invoke-static {v4, p0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-array p0, v2, [Ljava/lang/Object;

    aput-object p1, p0, v3

    const-string v1, "Loading %s"

    .line 13
    invoke-static {v4, v1, p0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :goto_1
    :try_start_0
    invoke-static {v0, p1, v2}, Lorg/chromium/base/library_loader/LibraryLoader;->a(Lorg/chromium/base/library_loader/Linker;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 15
    throw p0
.end method

.method public static onUmaRecordingReadyInRenderer()V
    .locals 0

    .line 1
    invoke-static {}, LeV;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 86
    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-wide v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->f:J

    .line 88
    invoke-static {v1, v2}, LJ/N;->MiAWbgCC(J)V

    .line 89
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(I)V
    .locals 3

    .line 3
    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 5
    :cond_0
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/chromium/base/library_loader/LibraryLoader;->a(Landroid/content/pm/ApplicationInfo;Z)V

    .line 7
    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->c(I)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->c:Z

    if-eqz v1, :cond_1

    .line 26
    sget-object v1, LzT;->a:Landroid/content/Context;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to load again from alternate context."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/chromium/base/library_loader/LibraryLoader;->a(Landroid/content/pm/ApplicationInfo;Z)V

    .line 29
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/content/pm/ApplicationInfo;)V
    .locals 10

    const-string v0, "LibraryLoader.preloadAlreadyLocked"

    .line 9
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 10
    invoke-static {v1, v0}, Lorg/chromium/base/library_loader/LibraryLoader;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    .line 11
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v3, "/system/"

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13
    :goto_0
    sget-object v3, LLU;->a:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    if-nez v0, :cond_2

    .line 14
    invoke-static {v6}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_2
    invoke-static {}, LzU;->c()Z

    move-result v7

    .line 16
    iget-object v8, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v9, "!/"

    .line 17
    invoke-static {v8, v9}, LZi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 18
    invoke-static {v6, v1, v7}, Lorg/chromium/base/library_loader/LibraryLoader;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v6, v7, v1

    const-string v8, "LibraryLoader"

    const-string v9, "libraryName: %s"

    .line 19
    invoke-static {v8, v9, v7}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {v6}, Ljava/lang/System;->load(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final a(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 7

    :try_start_0
    const-string v0, "LibraryLoader.loadAlreadyLocked"

    .line 68
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 69
    :try_start_1
    iget-boolean v2, p0, Lorg/chromium/base/library_loader/LibraryLoader;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 70
    :try_start_2
    invoke-static {v1, v0}, Lorg/chromium/base/library_loader/LibraryLoader;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    .line 71
    :cond_1
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    if-nez p2, :cond_2

    .line 72
    sget-object p2, LLU;->a:[Ljava/lang/String;

    aget-object p2, p2, v4

    .line 73
    invoke-static {p1, p2}, Lorg/chromium/base/library_loader/LibraryLoader;->b(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->a(Landroid/content/pm/ApplicationInfo;)V

    .line 75
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    .line 76
    iput-wide p1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->f:J

    const-string v2, "LibraryLoader"

    const-string v3, "Time to load native libraries: %d ms"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 77
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v4

    invoke-static {v2, v3, v6}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iput-boolean v5, p0, Lorg/chromium/base/library_loader/LibraryLoader;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    .line 79
    :try_start_4
    invoke-static {v1, v0}, Lorg/chromium/base/library_loader/LibraryLoader;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 80
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_4

    .line 81
    :try_start_6
    invoke-static {p1, v0}, Lorg/chromium/base/library_loader/LibraryLoader;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_4
    throw p2
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 82
    new-instance p2, LMU;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p1}, LMU;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

.method public b(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->c(I)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(I)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->e:I

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, LMU;

    invoke-direct {p1, v1}, LMU;-><init>(I)V

    throw p1

    .line 4
    :cond_1
    iput p1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->e:I

    .line 5
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->i:LKU;

    .line 6
    iput p1, v0, LKU;->b:I

    .line 7
    iget-object p1, v0, LKU;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, LKU;->a(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, v0, LKU;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget p1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->e:I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 10
    invoke-static {}, LqU;->a()LqU;

    move-result-object p1

    .line 11
    :try_start_0
    sget-object v3, LyT;->a:Landroid/content/SharedPreferences;

    const-string v4, "reached_code_profiler_enabled"

    .line 12
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p1}, LqU;->close()V

    if-eqz v3, :cond_3

    .line 14
    invoke-static {}, LwT;->c()LwT;

    move-result-object p1

    const-string v3, "enable-reached-code-profiler"

    invoke-virtual {p1, v3}, LwT;->a(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 16
    :try_start_2
    invoke-virtual {p1}, LqU;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 17
    sget-object v2, LRB;->a:LLB;

    invoke-virtual {v2, v0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 18
    :goto_1
    throw v1

    .line 19
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->d:Z

    if-eqz p1, :cond_4

    goto :goto_4

    .line 20
    :cond_4
    sget-object p1, LwT;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, LvT;

    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LwT;

    if-eqz v4, :cond_5

    .line 22
    invoke-virtual {v4}, LwT;->b()[Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 23
    :goto_3
    invoke-direct {v3, v4}, LvT;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 24
    iput-boolean v2, p0, Lorg/chromium/base/library_loader/LibraryLoader;->d:Z

    .line 25
    :goto_4
    iget p1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->e:I

    .line 26
    invoke-static {p1}, LJ/N;->M81WqFvs(I)Z

    move-result p1

    const-string v3, "LibraryLoader"

    if-eqz p1, :cond_7

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "79.0.3945.126"

    aput-object v1, p1, v0

    .line 27
    invoke-static {}, LJ/N;->M$HdV9JM()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "Expected native library version number \"%s\", actual native library version number \"%s\""

    .line 28
    invoke-static {v3, v0, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-static {}, LJ/N;->M$HdV9JM()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 31
    invoke-static {}, LJ/N;->MFFzPOVw()V

    .line 32
    iput-boolean v2, p0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    return-void

    .line 33
    :cond_6
    new-instance p1, LMU;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, LMU;-><init>(I)V

    throw p1

    :cond_7
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "error calling LibraryLoaderJni.get().libraryLoaded"

    .line 34
    invoke-static {v3, v0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    new-instance p1, LMU;

    invoke-direct {p1, v2}, LMU;-><init>(I)V

    throw p1
.end method
