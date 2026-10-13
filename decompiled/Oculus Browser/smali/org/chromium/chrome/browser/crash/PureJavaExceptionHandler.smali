.class public Lorg/chromium/chrome/browser/crash/PureJavaExceptionHandler;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static c:Z


# instance fields
.field public final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public b:Z


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/crash/PureJavaExceptionHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static uninstallHandler()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lorg/chromium/chrome/browser/crash/PureJavaExceptionHandler;->c:Z

    .line 2
    invoke-static {}, Lorg/chromium/components/crash/CrashKeys;->getInstance()Lorg/chromium/components/crash/CrashKeys;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/crash/CrashKeys;->flushToNative()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/crash/PureJavaExceptionHandler;->b:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lorg/chromium/chrome/browser/crash/PureJavaExceptionHandler;->c:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/crash/PureJavaExceptionHandler;->b:Z

    .line 3
    new-instance v1, Lc60;

    invoke-direct {v1}, Lc60;-><init>()V

    .line 4
    invoke-static {}, LqU;->e()LqU;

    move-result-object v2

    .line 5
    :try_start_0
    invoke-virtual {v1, p2}, Lc60;->a(Ljava/lang/Throwable;)V

    .line 6
    iget-object v3, v1, Lc60;->b:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 8
    iget-object v3, v1, Lc60;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v3, 0x0

    .line 9
    :try_start_2
    iput-object v3, v1, Lc60;->b:Ljava/io/FileOutputStream;

    .line 10
    iput-object v3, v1, Lc60;->a:Ljava/io/File;

    .line 11
    :cond_0
    :goto_0
    iget-object v1, v1, Lc60;->a:Ljava/io/File;

    if-nez v1, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    new-instance v3, LX50;

    invoke-direct {v3, v1}, LX50;-><init>(Ljava/io/File;)V

    .line 13
    invoke-virtual {v3, v0}, LX50;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :goto_1
    invoke-virtual {v2}, LqU;->close()V

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 15
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    .line 16
    :try_start_4
    invoke-virtual {v2}, LqU;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    .line 17
    sget-object v1, LRB;->a:LLB;

    invoke-virtual {v1, p1, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 18
    :goto_2
    throw p2

    .line 19
    :cond_2
    :goto_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/crash/PureJavaExceptionHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    .line 20
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method
