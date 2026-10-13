.class Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$RunnableWrapper;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunnableWrapper"
.end annotation


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;


# direct methods
.method constructor <init>(Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 76
    iput-object p1, p0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$RunnableWrapper;->this$0:Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$RunnableWrapper;->mRunnable:Ljava/lang/Runnable;

    .line 78
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$RunnableWrapper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 83
    iget-object v1, p0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$RunnableWrapper;->this$0:Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$RunnableWrapper;->this$0:Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;->access$202(Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;Z)Z

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$RunnableWrapper;->this$0:Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;

    invoke-static {v0}, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;->access$300(Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;)V

    .line 87
    return-void

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
