.class Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$1;
.super Ljava/lang/Object;
.source "ThreadExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;-><init>(Lcom/oculus/vrshell/panels/ThreadExecutor;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Callable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$this$0:Lcom/oculus/vrshell/panels/ThreadExecutor;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;Lcom/oculus/vrshell/panels/ThreadExecutor;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$1;->this$1:Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$1;->val$this$0:Lcom/oculus/vrshell/panels/ThreadExecutor;

    iput-object p3, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$1;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$1;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    iget-object v1, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$1;->this$1:Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    invoke-static {v1, v0}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->access$200(Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 100
    iget-object v1, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$1;->this$1:Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    invoke-static {v1, v0}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->access$002(Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 101
    iget-object v1, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$1;->this$1:Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    invoke-static {v1, v0}, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->access$100(Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
