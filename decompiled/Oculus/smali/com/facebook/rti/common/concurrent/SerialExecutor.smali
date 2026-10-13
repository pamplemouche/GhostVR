.class public Lcom/facebook/rti/common/concurrent/SerialExecutor;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;,
        Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;
    }
.end annotation


# instance fields
.field private final mBackingExecutor:Ljava/util/concurrent/Executor;

.field private mIsExecuting:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mMaxmimumComputeTimeMs:I

.field private final mMaxmimumDispatchTimeMs:I

.field private final mMaxmimumWallclockRuntimeMs:I

.field private final mName:Ljava/lang/String;

.field private final mRunnables:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->access$100(Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor;->mName:Ljava/lang/String;

    .line 95
    invoke-static {p1}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->access$200(Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor;->mBackingExecutor:Ljava/util/concurrent/Executor;

    .line 96
    invoke-static {p1}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->access$300(Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor;->mMaxmimumComputeTimeMs:I

    .line 97
    invoke-static {p1}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->access$400(Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor;->mMaxmimumWallclockRuntimeMs:I

    .line 98
    invoke-static {p1}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->access$500(Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor;->mMaxmimumDispatchTimeMs:I

    .line 99
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor;->mRunnables:Ljava/util/Queue;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor;->mIsExecuting:Z

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;Lcom/facebook/rti/common/concurrent/SerialExecutor$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/rti/common/concurrent/SerialExecutor;-><init>(Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/facebook/rti/common/concurrent/SerialExecutor;Z)Z
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor;->mIsExecuting:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/facebook/rti/common/concurrent/SerialExecutor;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->scheduleNext()V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/rti/common/concurrent/SerialExecutor;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor;->mMaxmimumDispatchTimeMs:I

    return v0
.end method

.method static synthetic access$700(Lcom/facebook/rti/common/concurrent/SerialExecutor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/rti/common/concurrent/SerialExecutor;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor;->mMaxmimumComputeTimeMs:I

    return v0
.end method

.method static synthetic access$900(Lcom/facebook/rti/common/concurrent/SerialExecutor;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor;->mMaxmimumWallclockRuntimeMs:I

    return v0
.end method

.method public static newInstanceWithDedicatedPool(Ljava/lang/String;)Lcom/facebook/rti/common/concurrent/SerialExecutor;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->create(Ljava/util/concurrent/Executor;)Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->setName(Ljava/lang/String;)Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->build()Lcom/facebook/rti/common/concurrent/SerialExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceWithSharedPool(Ljava/lang/String;)Lcom/facebook/rti/common/concurrent/SerialExecutor;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->createWithDefaultSharedPool()Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->setName(Ljava/lang/String;)Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->build()Lcom/facebook/rti/common/concurrent/SerialExecutor;

    move-result-object v0

    return-object v0
.end method

.method private scheduleNext()V
    .locals 2

    .prologue
    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor;->mIsExecuting:Z

    if-eqz v0, :cond_0

    .line 121
    monitor-exit p0

    .line 132
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor;->mRunnables:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;

    .line 124
    if-nez v0, :cond_1

    .line 127
    monitor-exit p0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 129
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor;->mIsExecuting:Z

    .line 130
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    iget-object v1, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor;->mBackingExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor;->mRunnables:Ljava/util/Queue;

    new-instance v1, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;

    invoke-direct {v1, p0, p1}, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;-><init>(Lcom/facebook/rti/common/concurrent/SerialExecutor;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-direct {p0}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->scheduleNext()V

    .line 107
    return-void
.end method
