.class public final Lcom/facebook/rti/mqtt/common/executors/ExecutionList;
.super Ljava/lang/Object;
.source "ExecutionList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/common/executors/ExecutionList$RunnableExecutorPair;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private executed:Z

.field private final runnables:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/facebook/rti/mqtt/common/executors/ExecutionList$RunnableExecutorPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;->runnables:Ljava/util/Queue;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;->executed:Z

    .line 52
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;->runnables:Ljava/util/Queue;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;->executed:Z

    if-eqz v0, :cond_1

    .line 113
    monitor-exit v1

    .line 123
    :cond_0
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;->executed:Z

    .line 116
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;->runnables:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;->runnables:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList$RunnableExecutorPair;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/executors/ExecutionList$RunnableExecutorPair;->execute()V

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
