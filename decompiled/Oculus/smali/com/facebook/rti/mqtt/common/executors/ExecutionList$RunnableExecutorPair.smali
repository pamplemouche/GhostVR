.class Lcom/facebook/rti/mqtt/common/executors/ExecutionList$RunnableExecutorPair;
.super Ljava/lang/Object;
.source "ExecutionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/common/executors/ExecutionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunnableExecutorPair"
.end annotation


# instance fields
.field final executor:Ljava/util/concurrent/Executor;

.field final runnable:Ljava/lang/Runnable;


# virtual methods
.method execute()V
    .locals 6

    .prologue
    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList$RunnableExecutorPair;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList$RunnableExecutorPair;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 142
    invoke-static {}, Lcom/facebook/rti/mqtt/common/executors/ExecutionList;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RuntimeException while executing runnable=%s with executor=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList$RunnableExecutorPair;->runnable:Ljava/lang/Runnable;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/rti/mqtt/common/executors/ExecutionList$RunnableExecutorPair;->executor:Ljava/util/concurrent/Executor;

    aput-object v5, v3, v4

    .line 141
    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
