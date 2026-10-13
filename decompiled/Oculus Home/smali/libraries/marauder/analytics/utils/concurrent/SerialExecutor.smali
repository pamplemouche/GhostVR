.class public Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$RunnableWrapper;,
        Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;
    }
.end annotation


# instance fields
.field private final mBackingExecutor:Ljava/util/concurrent/Executor;

.field private mIsExecuting:Z

.field private final mRunnables:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$RunnableWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;)V
    .locals 1
    .param p1, "builder"    # Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;->access$100(Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;->mBackingExecutor:Ljava/util/concurrent/Executor;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;->mRunnables:Ljava/util/Queue;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;->mIsExecuting:Z

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;
    .param p2, "x1"    # Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;-><init>(Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;)V

    return-void
.end method

.method static synthetic access$202(Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;Z)Z
    .locals 0
    .param p0, "x0"    # Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;->mIsExecuting:Z

    return p1
.end method

.method static synthetic access$300(Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;)V
    .locals 0
    .param p0, "x0"    # Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;

    .prologue
    .line 13
    invoke-direct {p0}, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;->scheduleNext()V

    return-void
.end method

.method private scheduleNext()V
    .locals 2

    .prologue
    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget-boolean v1, p0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;->mIsExecuting:Z

    if-eqz v1, :cond_0

    .line 59
    monitor-exit p0

    .line 70
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;->mRunnables:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$RunnableWrapper;

    .line 62
    .local v0, "runnableWrapper":Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$RunnableWrapper;
    if-nez v0, :cond_1

    .line 65
    monitor-exit p0

    goto :goto_0

    .line 68
    .end local v0    # "runnableWrapper":Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$RunnableWrapper;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 67
    .restart local v0    # "runnableWrapper":Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$RunnableWrapper;
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;->mIsExecuting:Z

    .line 68
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    iget-object v1, p0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;->mBackingExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;->mRunnables:Ljava/util/Queue;

    new-instance v1, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$RunnableWrapper;

    invoke-direct {v1, p0, p1}, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$RunnableWrapper;-><init>(Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-direct {p0}, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
