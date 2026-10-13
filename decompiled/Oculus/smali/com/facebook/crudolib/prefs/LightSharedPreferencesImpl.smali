.class Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;
.super Ljava/lang/Object;
.source "LightSharedPreferencesImpl.java"

# interfaces
.implements Lcom/facebook/crudolib/prefs/LightSharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;
    }
.end annotation


# static fields
.field private static final sMainHandler:Landroid/os/Handler;

.field private static final sRemovedSentinel:Ljava/lang/Object;


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mCacheLock"
    .end annotation
.end field

.field private final mCacheLock:Ljava/lang/Object;

.field private final mCommitOnMainThreadPolicy:I

.field private final mDiskIoExecutor:Ljava/util/concurrent/Executor;

.field private final mInitThread:Ljava/lang/Thread;

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mLastCommitCallStack:Ljava/lang/Throwable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/crudolib/prefs/LightSharedPreferences$OnSharedPreferenceChangeListener;",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile mLoaded:Z

.field private final mStorage:Lcom/facebook/crudolib/prefs/LightSharedPreferencesStorage;

.field private final maybeOutOfSync:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->sRemovedSentinel:Ljava/lang/Object;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->sMainHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/util/concurrent/Executor;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mCacheLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->maybeOutOfSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    iput-boolean v1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mLoaded:Z

    .line 55
    new-instance v1, Lcom/facebook/crudolib/prefs/LightSharedPreferencesStorage;

    invoke-static {p1}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {v1, v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesStorage;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mStorage:Lcom/facebook/crudolib/prefs/LightSharedPreferencesStorage;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mCache:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mListeners:Ljava/util/Map;

    .line 58
    invoke-static {p2}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mDiskIoExecutor:Ljava/util/concurrent/Executor;

    .line 59
    iput p3, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mCommitOnMainThreadPolicy:I

    .line 60
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$1;

    invoke-direct {v1, p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$1;-><init>(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LSP-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 77
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mInitThread:Ljava/lang/Thread;

    .line 78
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mInitThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mDiskIoExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->maybeOutOfSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mLastCommitCallStack:Ljava/lang/Throwable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Lcom/facebook/crudolib/prefs/LightSharedPreferencesStorage;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mStorage:Lcom/facebook/crudolib/prefs/LightSharedPreferencesStorage;

    return-object v0
.end method

.method static synthetic access$302(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mLoaded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->sRemovedSentinel:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mCommitOnMainThreadPolicy:I

    return v0
.end method

.method static synthetic access$800(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->notifyListeners(Ljava/util/Set;)V

    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 534
    if-nez p0, :cond_0

    .line 535
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 537
    :cond_0
    return-object p0
.end method

.method private createRuntimeExceptionWithRawData(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 3

    .prologue
    .line 542
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LightSharedPreferences threw an exception for Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Raw file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mStorage:Lcom/facebook/crudolib/prefs/LightSharedPreferencesStorage;

    .line 544
    invoke-virtual {v2}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesStorage;->tryReadRawFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private declared-synchronized maybeUpdateThreadPriority()V
    .locals 2

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mInitThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 109
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mInitThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mInitThread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyListeners(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/Throwable;

    const-string v0, "commit stack"

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 500
    iget-object v1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mListeners:Ljava/util/Map;

    .line 501
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 502
    if-eqz v1, :cond_0

    .line 503
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 504
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/crudolib/prefs/LightSharedPreferences$OnSharedPreferenceChangeListener;

    .line 505
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 506
    new-instance v6, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$2;

    invoke-direct {v6, p0, v3, v2, v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$2;-><init>(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;Ljava/lang/Throwable;Lcom/facebook/crudolib/prefs/LightSharedPreferences$OnSharedPreferenceChangeListener;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 518
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mLastCommitCallStack:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    monitor-exit p0

    return-void
.end method

.method private waitIfNotLoaded()V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mLoaded:Z

    if-nez v0, :cond_1

    .line 83
    const-string v0, "LightSharedPreferences.waitIfNotLoaded"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 84
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mLoaded:Z

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->maybeUpdateThreadPriority()V

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 96
    :cond_1
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public edit()Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;
    .locals 1

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->waitIfNotLoaded()V

    .line 461
    new-instance v0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;-><init>(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)V

    return-object v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->waitIfNotLoaded()V

    .line 375
    iget-object v1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 378
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    :cond_0
    :try_start_1
    monitor-exit v1

    return p2

    .line 379
    :catch_0
    move-exception v0

    .line 380
    invoke-direct {p0, v0, p1}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->createRuntimeExceptionWithRawData(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->waitIfNotLoaded()V

    .line 388
    iget-object v1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 391
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide p2

    :cond_0
    :try_start_1
    monitor-exit v1

    return-wide p2

    .line 392
    :catch_0
    move-exception v0

    .line 393
    invoke-direct {p0, v0, p1}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->createRuntimeExceptionWithRawData(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
