.class Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$2;
.super Ljava/lang/Object;
.source "ThreadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;->runListenerSuccess(Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

.field final synthetic val$listener:Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;Ljava/lang/Object;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$2;->this$1:Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$2;->val$listener:Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;

    iput-object p3, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$2;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$2;->val$listener:Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;

    iget-object v1, p0, Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture$2;->val$t:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/oculus/vrshell/panels/ThreadExecutor$Listener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
