.class Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$3;
.super Ljava/lang/Object;
.source "WakingExecutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/common/executors/ListenableScheduledFuture;
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
    .line 151
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$3;->this$0:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$3;->this$0:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;->access$000(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;)V

    .line 155
    return-void
.end method
