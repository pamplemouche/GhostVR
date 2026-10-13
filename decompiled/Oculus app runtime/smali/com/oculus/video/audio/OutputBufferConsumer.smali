.class public abstract Lcom/oculus/video/audio/OutputBufferConsumer;
.super Ljava/lang/Object;
.source "OutputBufferConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ASYNC_CONSUMPTION_INTERVAL_MS:I = 0x4


# instance fields
.field private final mAsyncConsumerException:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TE;>;"
        }
    .end annotation
.end field

.field private mAsyncConsumerThread:Ljava/lang/Thread;

.field private volatile mAsyncConsumptionInProgress:Z

.field private mCanConsume:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mConsumeEveryInterval:Z

.field private final mUseAsync:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mCanConsume:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mAsyncConsumerException:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    iput-boolean p1, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mUseAsync:Z

    .line 23
    iput-boolean p2, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mConsumeEveryInterval:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/video/audio/OutputBufferConsumer;)Z
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mAsyncConsumptionInProgress:Z

    return p0
.end method

.method static synthetic access$100(Lcom/oculus/video/audio/OutputBufferConsumer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mCanConsume:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/video/audio/OutputBufferConsumer;)Z
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mConsumeEveryInterval:Z

    return p0
.end method

.method static synthetic access$300(Lcom/oculus/video/audio/OutputBufferConsumer;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mAsyncConsumerException:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method


# virtual methods
.method public consume()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    iget-boolean v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mAsyncConsumptionInProgress:Z

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/oculus/video/audio/OutputBufferConsumer;->consumeSynchronously()V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mCanConsume:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method protected abstract consumeSynchronously()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public disable()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mAsyncConsumerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 81
    :try_start_0
    iput-boolean v1, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mAsyncConsumptionInProgress:Z

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 83
    iget-object v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mAsyncConsumerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mAsyncConsumerThread:Ljava/lang/Thread;

    .line 89
    iget-object v1, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mAsyncConsumerException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public enable()V
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/oculus/video/audio/OutputBufferConsumer;->disable()V

    .line 50
    iget-boolean v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mUseAsync:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mAsyncConsumptionInProgress:Z

    .line 52
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oculus/video/audio/OutputBufferConsumer$1;

    invoke-direct {v1, p0}, Lcom/oculus/video/audio/OutputBufferConsumer$1;-><init>(Lcom/oculus/video/audio/OutputBufferConsumer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mAsyncConsumerThread:Ljava/lang/Thread;

    .line 74
    iget-object v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mAsyncConsumerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public isAsync()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mUseAsync:Z

    return v0
.end method

.method public maybeThrowLastException()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/oculus/video/audio/OutputBufferConsumer;->mAsyncConsumerException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/video/audio/OutputBufferConsumer;->disable()V

    .line 30
    throw v0
.end method
