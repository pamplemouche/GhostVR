.class Lcom/facebook/systrace/TraceListenerNotifier;
.super Ljava/lang/Object;
.source "TraceListenerNotifier.java"


# static fields
.field private static final TRACE_DATA_FILE:Ljava/io/File;


# instance fields
.field private mIsTracing:Z

.field private final mListeners:Ljava/util/List;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.util.ArrayList._Constructor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/systrace/TraceListener;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/kernel/debug/tracing/trace"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/systrace/TraceListenerNotifier;->TRACE_DATA_FILE:Ljava/io/File;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/systrace/TraceListenerNotifier;->mLock:Ljava/lang/Object;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/systrace/TraceListenerNotifier;->mListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/systrace/TraceListenerNotifier;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/systrace/TraceListenerNotifier;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/facebook/systrace/TraceListenerNotifier;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/io/File;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/facebook/systrace/TraceListenerNotifier;->TRACE_DATA_FILE:Ljava/io/File;

    return-object v0
.end method

.method private issueNotifications(Z)V
    .locals 3
    .param p1, "isTraceStarted"    # Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/facebook/systrace/TraceListenerNotifier;->mIsTracing:Z

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/systrace/TraceListenerNotifier;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/facebook/systrace/TraceListenerNotifier;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/systrace/TraceListener;

    .line 122
    .local v1, "listener":Lcom/facebook/systrace/TraceListener;
    if-eqz p1, :cond_0

    .line 123
    invoke-interface {v1}, Lcom/facebook/systrace/TraceListener;->onTraceStarted()V

    .line 120
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {v1}, Lcom/facebook/systrace/TraceListener;->onTraceStopped()V

    goto :goto_1

    .line 128
    .end local v1    # "listener":Lcom/facebook/systrace/TraceListener;
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/facebook/systrace/TraceListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/facebook/systrace/TraceListener;

    .prologue
    .line 23
    iget-object v1, p0, Lcom/facebook/systrace/TraceListenerNotifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/facebook/systrace/TraceListenerNotifier;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-boolean v0, p0, Lcom/facebook/systrace/TraceListenerNotifier;->mIsTracing:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {p1}, Lcom/facebook/systrace/TraceListener;->onTraceStarted()V

    .line 29
    :cond_0
    monitor-exit v1

    .line 30
    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public asyncNotifyListenersForTraceStart()V
    .locals 6

    .prologue
    .line 50
    iget-object v4, p0, Lcom/facebook/systrace/TraceListenerNotifier;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 51
    :try_start_0
    sget-object v1, Lcom/facebook/systrace/TraceListenerNotifier;->TRACE_DATA_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 53
    .local v2, "traceFileLastModifiedTime":J
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/systrace/TraceListenerNotifier$1;

    invoke-direct {v1, p0, v2, v3}, Lcom/facebook/systrace/TraceListenerNotifier$1;-><init>(Lcom/facebook/systrace/TraceListenerNotifier;J)V

    const-string v5, "fbsystrace notification thread"

    invoke-direct {v0, v1, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 90
    .local v0, "notifierThread":Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 91
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    monitor-exit v4

    .line 93
    return-void

    .line 92
    .end local v0    # "notifierThread":Ljava/lang/Thread;
    .end local v2    # "traceFileLastModifiedTime":J
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyListenersForTraceStart()V
    .locals 4

    .prologue
    .line 96
    iget-object v1, p0, Lcom/facebook/systrace/TraceListenerNotifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    const-wide/16 v2, 0x1

    :try_start_0
    const-string v0, "Run Trace Listeners"

    invoke-static {v2, v3, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/facebook/systrace/TraceListenerNotifier;->issueNotifications(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    const-wide/16 v2, 0x1

    :try_start_2
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 103
    monitor-exit v1

    .line 104
    return-void

    .line 101
    :catchall_0
    move-exception v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    throw v0

    .line 103
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public notifyListenersForTraceStop()V
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/facebook/systrace/TraceListenerNotifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/systrace/TraceListenerNotifier;->issueNotifications(Z)V

    .line 114
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeListener(Lcom/facebook/systrace/TraceListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/facebook/systrace/TraceListener;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/facebook/systrace/TraceListenerNotifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/facebook/systrace/TraceListenerNotifier;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35
    iget-boolean v0, p0, Lcom/facebook/systrace/TraceListenerNotifier;->mIsTracing:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {p1}, Lcom/facebook/systrace/TraceListener;->onTraceStopped()V

    .line 38
    :cond_0
    monitor-exit v1

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
