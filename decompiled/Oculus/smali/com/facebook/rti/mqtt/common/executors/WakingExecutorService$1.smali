.class Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$1;
.super Landroid/content/BroadcastReceiver;
.source "WakingExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;-><init>(Lcom/facebook/rti/common/util/SystemServiceManager;Ljava/lang/String;Landroid/content/Context;Lcom/facebook/rti/common/time/MonotonicClock;Landroid/os/Handler;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$1;->this$0:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$1;->this$0:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->mAlarmAction:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/rti/common/guavalite/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$1;->this$0:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->access$000(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;)V

    goto :goto_0
.end method
