.class public abstract LkW;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final STEAL_RUNNABLE_HANDLER:LjW;

.field public static final TAG:Ljava/lang/String; = "AsyncTask"

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field public final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mFuture:Ljava/util/concurrent/FutureTask;

.field public volatile mStatus:I

.field public final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mWorker:Ljava/util/concurrent/Callable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, LgW;->a:Ljava/util/concurrent/Executor;

    sput-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v0, LyW;

    invoke-direct {v0}, LyW;-><init>()V

    sput-object v0, LkW;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, LjW;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LjW;-><init>(LhW;)V

    sput-object v0, LkW;->STEAL_RUNNABLE_HANDLER:LjW;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LkW;->mStatus:I

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LkW;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LkW;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, LhW;

    invoke-direct {v0, p0}, LhW;-><init>(LkW;)V

    iput-object v0, p0, LkW;->mWorker:Ljava/util/concurrent/Callable;

    .line 6
    new-instance v0, LiW;

    iget-object v1, p0, LkW;->mWorker:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p0, v1}, LiW;-><init>(LkW;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, LkW;->mFuture:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method public static final synthetic a(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    sget-object v0, LFW;->j:LFW;

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {v0, p0, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic a(LkW;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 3
    instance-of v0, p0, LlW;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    .line 4
    iput p1, p0, LkW;->mStatus:I

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, LfW;

    invoke-direct {v0, p0, p1}, LfW;-><init>(LkW;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static b()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    sget-object v1, LkW;->STEAL_RUNNABLE_HANDLER:LjW;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void
.end method

.method public static synthetic b(LkW;Ljava/lang/Object;)V
    .locals 1

    .line 4
    iget-object v0, p0, LkW;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    instance-of v0, p0, LlW;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    .line 6
    iput p1, p0, LkW;->mStatus:I

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, LfW;

    invoke-direct {v0, p0, p1}, LfW;-><init>(LkW;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 7
    iget v0, p0, LkW;->mStatus:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 8
    iget v0, p0, LkW;->mStatus:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    :goto_0
    iput v1, p0, LkW;->mStatus:I

    .line 12
    invoke-virtual {p0}, LkW;->onPreExecute()V

    return-void
.end method

.method public final cancel(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, LkW;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, LkW;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public abstract doInBackground()Ljava/lang/Object;
.end method

.method public final executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;
    .locals 1

    .line 1
    invoke-virtual {p0}, LkW;->a()V

    .line 2
    iget-object v0, p0, LkW;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final executeOnTaskRunner(LCW;)LkW;
    .locals 1

    .line 1
    invoke-virtual {p0}, LkW;->a()V

    .line 2
    iget-object v0, p0, LkW;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, LCW;->a(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final executeWithTaskTraits(LFW;)LkW;
    .locals 3

    .line 1
    invoke-virtual {p0}, LkW;->a()V

    .line 2
    iget-object v0, p0, LkW;->mFuture:Ljava/util/concurrent/FutureTask;

    const-wide/16 v1, 0x0

    .line 3
    invoke-static {p1, v0, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, LkW;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AsyncTask.get"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    .line 6
    :try_start_0
    iget-object v1, p0, LkW;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, v0, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 9
    :try_start_2
    iget-object v0, v0, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 10
    sget-object v3, LRB;->a:LLB;

    invoke-virtual {v3, v1, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 11
    :cond_1
    :goto_1
    throw v2

    .line 12
    :cond_2
    iget-object v0, p0, LkW;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    :cond_3
    :goto_2
    return-object v1
.end method

.method public final getStatus()I
    .locals 1

    .line 1
    iget v0, p0, LkW;->mStatus:I

    return v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, LkW;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final synthetic lambda$postResult$1$AsyncTask(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, LkW;->onCancelled(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, LkW;->onPostExecute(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x2

    .line 4
    iput p1, p0, LkW;->mStatus:I

    return-void
.end method

.method public onCancelled()V
    .locals 0

    return-void
.end method

.method public onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, LkW;->onCancelled()V

    return-void
.end method

.method public abstract onPostExecute(Ljava/lang/Object;)V
.end method

.method public onPreExecute()V
    .locals 0

    return-void
.end method
