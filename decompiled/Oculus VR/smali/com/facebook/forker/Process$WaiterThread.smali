.class final Lcom/facebook/forker/Process$WaiterThread;
.super Ljava/lang/Thread;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/forker/Process;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WaiterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/forker/Process;


# direct methods
.method constructor <init>(Lcom/facebook/forker/Process;)V
    .locals 1

    .prologue
    .line 492
    iput-object p1, p0, Lcom/facebook/forker/Process$WaiterThread;->this$0:Lcom/facebook/forker/Process;

    .line 493
    const-string v0, "PidWaiter:Ready"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 494
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/facebook/forker/Process$WaiterThread;->this$0:Lcom/facebook/forker/Process;

    invoke-static {v0}, Lcom/facebook/forker/Process;->access$000(Lcom/facebook/forker/Process;)V

    .line 499
    return-void
.end method
