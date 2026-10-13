.class public Lcom/facebook/react/jstasks/HeadlessJsTaskContext;
.super Ljava/lang/Object;
.source "HeadlessJsTaskContext.java"


# static fields
.field private static final INSTANCES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/facebook/react/bridge/ReactContext;",
            "Lcom/facebook/react/jstasks/HeadlessJsTaskContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveTaskConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mActiveTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHeadlessJsTaskEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastTaskId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mReactContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/react/bridge/ReactContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskTimeouts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->INSTANCES:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mHeadlessJsTaskEventListeners:Ljava/util/Set;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mLastTaskId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mActiveTasks:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mActiveTaskConfigs:Ljava/util/Map;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mTaskTimeouts:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mReactContext:Ljava/lang/ref/WeakReference;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/jstasks/HeadlessJsTaskContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->startTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/jstasks/HeadlessJsTaskContext;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mHeadlessJsTaskEventListeners:Ljava/util/Set;

    return-object v0
.end method

.method public static getInstance(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/jstasks/HeadlessJsTaskContext;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->INSTANCES:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    .line 41
    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    invoke-direct {v0, p0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 43
    sget-object v1, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->INSTANCES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    return-object v0
.end method

.method private removeTimeout(I)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mTaskTimeouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 183
    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mTaskTimeouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 187
    :cond_0
    return-void
.end method

.method private scheduleTaskTimeout(IJ)V
    .locals 2

    .prologue
    .line 198
    new-instance v0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext$3;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext$3;-><init>(Lcom/facebook/react/jstasks/HeadlessJsTaskContext;I)V

    .line 205
    iget-object v1, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mTaskTimeouts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 206
    iget-object v1, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    return-void
.end method

.method private declared-synchronized startTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;I)V
    .locals 4

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 94
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mReactContext:Ljava/lang/ref/WeakReference;

    .line 96
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Tried to start a task on a react context that has already been destroyed"

    .line 95
    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 98
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getLifecycleState()Lcom/facebook/react/common/LifecycleState;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne v1, v2, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->isAllowedInForeground()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to start task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->getTaskKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while in foreground, but this is not allowed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 105
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mActiveTasks:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mActiveTaskConfigs:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    invoke-direct {v3, p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;-><init>(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-class v1, Lcom/facebook/react/modules/appregistry/AppRegistry;

    .line 108
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/appregistry/AppRegistry;

    .line 109
    invoke-virtual {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->getTaskKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->getData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lcom/facebook/react/modules/appregistry/AppRegistry;->startHeadlessTask(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 110
    invoke-virtual {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->getTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 111
    invoke-virtual {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->getTimeout()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->scheduleTaskTimeout(IJ)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mHeadlessJsTaskEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;

    .line 114
    invoke-interface {v0, p2}, Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;->onHeadlessJsTaskStart(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :cond_2
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public addTaskEventListener(Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mHeadlessJsTaskEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public declared-synchronized finishTask(I)V
    .locals 3

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mActiveTasks:Ljava/util/Set;

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to finish non-existent task with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mActiveTaskConfigs:Ljava/util/Map;

    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to remove non-existent task config with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->removeTimeout(I)V

    .line 170
    new-instance v0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext$2;-><init>(Lcom/facebook/react/jstasks/HeadlessJsTaskContext;I)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasActiveTasks()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mActiveTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isTaskRunning(I)Z
    .locals 2

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mActiveTasks:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeTaskEventListener(Lcom/facebook/react/jstasks/HeadlessJsTaskEventListener;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mHeadlessJsTaskEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public declared-synchronized retryTask(I)Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->mActiveTaskConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    .line 127
    if-eqz v0, :cond_0

    move v2, v8

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to retrieve non-existent task config with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->getRetryPolicy()Lcom/facebook/react/jstasks/HeadlessJsTaskRetryPolicy;

    move-result-object v9

    .line 132
    invoke-interface {v9}, Lcom/facebook/react/jstasks/HeadlessJsTaskRetryPolicy;->canRetry()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 154
    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    move v2, v1

    .line 127
    goto :goto_0

    .line 136
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->removeTimeout(I)V

    .line 137
    new-instance v1, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    .line 139
    invoke-virtual {v0}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->getTaskKey()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v0}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->getData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 141
    invoke-virtual {v0}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->getTimeout()J

    move-result-wide v4

    .line 142
    invoke-virtual {v0}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->isAllowedInForeground()Z

    move-result v6

    .line 143
    invoke-interface {v9}, Lcom/facebook/react/jstasks/HeadlessJsTaskRetryPolicy;->update()Lcom/facebook/react/jstasks/HeadlessJsTaskRetryPolicy;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;JZLcom/facebook/react/jstasks/HeadlessJsTaskRetryPolicy;)V

    .line 145
    new-instance v0, Lcom/facebook/react/jstasks/HeadlessJsTaskContext$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext$1;-><init>(Lcom/facebook/react/jstasks/HeadlessJsTaskContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;I)V

    .line 153
    invoke-interface {v9}, Lcom/facebook/react/jstasks/HeadlessJsTaskRetryPolicy;->getDelay()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v8

    .line 154
    goto :goto_1

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
