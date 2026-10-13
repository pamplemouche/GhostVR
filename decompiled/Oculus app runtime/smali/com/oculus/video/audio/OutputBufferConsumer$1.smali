.class Lcom/oculus/video/audio/OutputBufferConsumer$1;
.super Ljava/lang/Object;
.source "OutputBufferConsumer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/audio/OutputBufferConsumer;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/audio/OutputBufferConsumer;


# direct methods
.method constructor <init>(Lcom/oculus/video/audio/OutputBufferConsumer;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/oculus/video/audio/OutputBufferConsumer$1;->this$0:Lcom/oculus/video/audio/OutputBufferConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer$1;->this$0:Lcom/oculus/video/audio/OutputBufferConsumer;

    invoke-static {v0}, Lcom/oculus/video/audio/OutputBufferConsumer;->access$000(Lcom/oculus/video/audio/OutputBufferConsumer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer$1;->this$0:Lcom/oculus/video/audio/OutputBufferConsumer;

    invoke-static {v0}, Lcom/oculus/video/audio/OutputBufferConsumer;->access$100(Lcom/oculus/video/audio/OutputBufferConsumer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer$1;->this$0:Lcom/oculus/video/audio/OutputBufferConsumer;

    invoke-static {v0}, Lcom/oculus/video/audio/OutputBufferConsumer;->access$200(Lcom/oculus/video/audio/OutputBufferConsumer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer$1;->this$0:Lcom/oculus/video/audio/OutputBufferConsumer;

    invoke-virtual {v0}, Lcom/oculus/video/audio/OutputBufferConsumer;->consumeSynchronously()V

    .line 59
    iget-object v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer$1;->this$0:Lcom/oculus/video/audio/OutputBufferConsumer;

    invoke-static {v0}, Lcom/oculus/video/audio/OutputBufferConsumer;->access$100(Lcom/oculus/video/audio/OutputBufferConsumer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const-wide/16 v0, 0x4

    .line 67
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 62
    iget-object v1, p0, Lcom/oculus/video/audio/OutputBufferConsumer$1;->this$0:Lcom/oculus/video/audio/OutputBufferConsumer;

    invoke-static {v1}, Lcom/oculus/video/audio/OutputBufferConsumer;->access$300(Lcom/oculus/video/audio/OutputBufferConsumer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :catch_1
    :cond_2
    return-void
.end method
