.class Lcom/facebook/analytics2/logger/UploadJobHandlerManager;
.super Ljava/lang/Object;
.source "UploadJobHandlerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobStateManagementCallback;,
        Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mStartedJobs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->mStartedJobs:Landroid/util/SparseArray;

    .line 33
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/analytics2/logger/UploadJobHandlerManager;Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->runJobInternal(Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/analytics2/logger/UploadJobHandlerManager;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->mStartedJobs:Landroid/util/SparseArray;

    return-object v0
.end method

.method private declared-synchronized createAndInitUploadJobHandler(Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobStateManagementCallback;)V
    .locals 2

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->mContext:Landroid/content/Context;

    .line 137
    invoke-static {v0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->jobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    .line 138
    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/UploadJobConfig;->getThreadHandlerFactoryClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedHandlerThreadFactory(Ljava/lang/String;)Lcom/facebook/analytics2/logger/HandlerThreadFactory;

    move-result-object v0

    .line 140
    iget v1, p1, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->jobId:I

    .line 141
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->createAndSetUploadJobHandler(Lcom/facebook/analytics2/logger/HandlerThreadFactory;ILcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)Lcom/facebook/analytics2/logger/UploadJobHandler;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->sendInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized createAndSetUploadJobHandler(Lcom/facebook/analytics2/logger/HandlerThreadFactory;ILcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)Lcom/facebook/analytics2/logger/UploadJobHandler;
    .locals 3

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->mStartedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->mStartedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;->getCurrentJobHandler()Lcom/facebook/analytics2/logger/UploadJobHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a new handler when one already exists for jobId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 114
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 117
    :cond_0
    :try_start_1
    iget-object v0, p3, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->jobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    .line 118
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadJobConfig;->getNetworkPriority()Lcom/facebook/analytics2/logger/UploadJob$Priority;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadThreadPriority;->getThreadPriority(Lcom/facebook/analytics2/logger/UploadJob$Priority;)I

    move-result v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadJobHandlerManager-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/facebook/analytics2/logger/HandlerThreadFactory;->createAndStartHandlerThread(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p3, p4}, Lcom/facebook/analytics2/logger/UploadJobHandlerFactory;->create(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)Lcom/facebook/analytics2/logger/UploadJobHandler;

    move-result-object v1

    .line 122
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->mStartedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;

    .line 123
    if-nez v0, :cond_1

    .line 124
    new-instance v0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;-><init>(Lcom/facebook/analytics2/logger/UploadJobHandlerManager$1;)V

    .line 125
    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->mStartedJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    :cond_1
    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;->setCurrentJobHandler(Lcom/facebook/analytics2/logger/UploadJobHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    monitor-exit p0

    return-object v1
.end method

.method private declared-synchronized maybeRunJobNow(Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)Z
    .locals 1
    .param p2    # Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;->getCurrentJobHandler()Lcom/facebook/analytics2/logger/UploadJobHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 54
    :goto_0
    if-eqz v0, :cond_1

    .line 55
    const/4 v0, 0x0

    .line 59
    :goto_1
    monitor-exit p0

    return v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p3}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->runJobInternal(Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    const/4 v0, 0x1

    goto :goto_1

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized runJobInternal(Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)V
    .locals 2

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobStateManagementCallback;

    iget v1, p1, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->jobId:I

    invoke-direct {v0, p0, v1, p2}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobStateManagementCallback;-><init>(Lcom/facebook/analytics2/logger/UploadJobHandlerManager;ILcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->createAndInitUploadJobHandler(Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobStateManagementCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized haltCurrentJob(I)V
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->mStartedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;

    .line 93
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;->getCurrentJobHandler()Lcom/facebook/analytics2/logger/UploadJobHandler;

    move-result-object v0

    .line 94
    :goto_0
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->sendHalt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maybeRunJobNow(Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)Z
    .locals 2

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->mStartedJobs:Landroid/util/SparseArray;

    iget v1, p1, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->jobId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;

    .line 46
    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->maybeRunJobNow(Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queueJob(Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)V
    .locals 2

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->mStartedJobs:Landroid/util/SparseArray;

    iget v1, p1, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->jobId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;

    .line 73
    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->maybeRunJobNow(Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;

    new-instance v1, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$1;-><init>(Lcom/facebook/analytics2/logger/UploadJobHandlerManager;Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;->offerJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
