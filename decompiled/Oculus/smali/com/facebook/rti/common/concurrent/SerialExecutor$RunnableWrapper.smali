.class Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/common/concurrent/SerialExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunnableWrapper"
.end annotation


# instance fields
.field private volatile mCompletedTime:J

.field private volatile mDispatchTime:J

.field private final mEnqueTime:J

.field private final mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/facebook/rti/common/concurrent/SerialExecutor;


# direct methods
.method constructor <init>(Lcom/facebook/rti/common/concurrent/SerialExecutor;Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 146
    iput-object p1, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->this$0:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p2, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->mRunnable:Ljava/lang/Runnable;

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->mEnqueTime:J

    .line 149
    iput-wide v2, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->mDispatchTime:J

    .line 150
    iput-wide v2, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->mCompletedTime:J

    .line 151
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->mDispatchTime:J

    .line 157
    iget-object v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->this$0:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    invoke-static {v0}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->access$600(Lcom/facebook/rti/common/concurrent/SerialExecutor;)I

    move-result v0

    if-eq v0, v8, :cond_0

    iget-wide v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->mDispatchTime:J

    iget-wide v2, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->mEnqueTime:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->this$0:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    .line 158
    invoke-static {v2}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->access$600(Lcom/facebook/rti/common/concurrent/SerialExecutor;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 159
    const-string v0, "SerialExecutor"

    const-string v1, "dispatch time exceeded limit: %s"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->this$0:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    invoke-static {v3}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->access$700(Lcom/facebook/rti/common/concurrent/SerialExecutor;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 164
    iget-object v2, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 169
    iget-object v6, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->this$0:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    invoke-static {v6}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->access$800(Lcom/facebook/rti/common/concurrent/SerialExecutor;)I

    move-result v6

    if-eq v6, v8, :cond_1

    sub-long v0, v2, v0

    iget-object v2, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->this$0:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    .line 170
    invoke-static {v2}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->access$800(Lcom/facebook/rti/common/concurrent/SerialExecutor;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 171
    const-string v0, "SerialExecutor"

    const-string v1, "compute time exceeded limit: %s"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->this$0:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    invoke-static {v3}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->access$700(Lcom/facebook/rti/common/concurrent/SerialExecutor;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->this$0:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    invoke-static {v0}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->access$900(Lcom/facebook/rti/common/concurrent/SerialExecutor;)I

    move-result v0

    if-eq v0, v8, :cond_2

    iget-wide v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->mDispatchTime:J

    sub-long v0, v4, v0

    iget-object v2, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->this$0:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    .line 174
    invoke-static {v2}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->access$900(Lcom/facebook/rti/common/concurrent/SerialExecutor;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 175
    const-string v0, "SerialExecutor"

    const-string/jumbo v1, "wall clock runtime exceeded limit: %s"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->this$0:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    invoke-static {v3}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->access$700(Lcom/facebook/rti/common/concurrent/SerialExecutor;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->this$0:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->this$0:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->access$1002(Lcom/facebook/rti/common/concurrent/SerialExecutor;Z)Z

    .line 179
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v0, p0, Lcom/facebook/rti/common/concurrent/SerialExecutor$RunnableWrapper;->this$0:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    invoke-static {v0}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->access$1100(Lcom/facebook/rti/common/concurrent/SerialExecutor;)V

    .line 181
    return-void

    .line 179
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
