.class public LgJ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LGI0;


# static fields
.field public static final g:Ljava/lang/Object;

.field public static final h:Ljava/lang/Object;

.field public static final i:Ljava/lang/Object;

.field public static final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static k:LkW;

.field public static l:LkW;

.field public static m:Ljava/io/File;


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:I

.field public final c:I

.field public final d:Z

.field public e:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LgJ0;->g:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LgJ0;->h:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LgJ0;->i:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LgJ0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 3
    iput-object v0, p0, LgJ0;->a:Landroid/content/SharedPreferences;

    .line 4
    iput p1, p0, LgJ0;->b:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput p1, p0, LgJ0;->c:I

    .line 6
    iput-boolean p2, p0, LgJ0;->d:Z

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LYI0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d()Ljava/io/File;
    .locals 5

    .line 1
    sget-object v0, LgJ0;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LgJ0;->m:Ljava/io/File;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    invoke-static {}, LYI0;->g()Ljava/io/File;

    move-result-object v2

    const-string v3, "0"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, LgJ0;->m:Ljava/io/File;

    .line 5
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    sget-object v2, LgJ0;->m:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, LgJ0;->m:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tabmodel"

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create state folder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, LgJ0;->m:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_0
    :try_start_2
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v2

    .line 9
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    sget-object v0, LgJ0;->m:Ljava/io/File;

    return-object v0

    :catchall_1
    move-exception v1

    .line 11
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 13
    sget-object v0, LgJ0;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, LgJ0;->l:LkW;

    if-eqz v1, :cond_0

    sget-object v1, LgJ0;->l:LkW;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LkW;->cancel(Z)Z

    .line 15
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lorg/chromium/base/Callback;)V
    .locals 3

    .line 16
    sget-object v0, LgJ0;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, LgJ0;->l:LkW;

    if-eqz v1, :cond_0

    sget-object v1, LgJ0;->l:LkW;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LkW;->cancel(Z)Z

    .line 18
    :cond_0
    new-instance v1, LfJ0;

    invoke-direct {v1, p0, p1}, LfJ0;-><init>(LgJ0;Lorg/chromium/base/Callback;)V

    sput-object v1, LgJ0;->l:LkW;

    .line 19
    sget-object p1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, p1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    .line 20
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(LCW;)Z
    .locals 5

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iget-object v0, p0, LgJ0;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "org.chromium.chrome.browser.tabmodel.TabPersistentStore.HAS_RUN_FILE_MIGRATION"

    .line 4
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5
    iget-object v2, p0, LgJ0;->a:Landroid/content/SharedPreferences;

    const-string v3, "org.chromium.chrome.browser.tabmodel.TabPersistentStore.HAS_RUN_MULTI_INSTANCE_FILE_MIGRATION"

    .line 6
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    return v1

    .line 7
    :cond_0
    sget-object v1, LgJ0;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v3, LgJ0;->k:LkW;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    monitor-exit v1

    return v4

    .line 9
    :cond_1
    new-instance v3, LeJ0;

    invoke-direct {v3, p0, v0, v2}, LeJ0;-><init>(LgJ0;ZZ)V

    .line 10
    invoke-virtual {v3, p1}, LkW;->executeOnTaskRunner(LCW;)LkW;

    move-result-object p1

    sput-object p1, LgJ0;->k:LkW;

    .line 11
    monitor-exit v1

    return v4

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, LgJ0;->b:I

    invoke-static {v0}, LgJ0;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    sget-object v0, LgJ0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
