.class Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$3;
.super Ljava/lang/Object;
.source "ThreadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->runListenerFailure(Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

.field final synthetic val$listener:Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;Ljava/lang/Throwable;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$3;->this$1:Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$3;->val$listener:Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;

    iput-object p3, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$3;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$3;->val$listener:Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;

    iget-object v1, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$3;->val$t:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method
