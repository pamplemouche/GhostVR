.class public Lcom/facebook/rti/mqtt/manager/MqttOperation;
.super Ljava/lang/Object;
.source "MqttOperation.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/manager/PublishOperation;


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private mCause:Ljava/lang/Throwable;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final mClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

.field public final mCreationTime:J

.field public final mOperationId:I

.field public final mResponseType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

.field private volatile mTimeoutFuture:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/mqtt/common/executors/ListenableFuture",
            "<*>;"
        }
    .end annotation
.end field

.field public final mTopicName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;Lcom/facebook/rti/mqtt/protocol/messages/MessageType;IJ)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mCause:Ljava/lang/Throwable;

    .line 38
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mClient:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    .line 39
    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mTopicName:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mResponseType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 41
    iput p4, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mOperationId:I

    .line 42
    iput-wide p5, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mCreationTime:J

    .line 43
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mTimeoutFuture:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mTimeoutFuture:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;->cancel(Z)Z

    .line 81
    :cond_0
    return-void
.end method

.method public complete(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mCause:Ljava/lang/Throwable;

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->complete()V

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getOperationId()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mOperationId:I

    return v0
.end method

.method public setTimeoutFuture(Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/common/executors/ListenableFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p1}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mTimeoutFuture:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkState(Z)V

    .line 73
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mTimeoutFuture:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;

    .line 74
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttOperation{mResponseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mResponseType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOperationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mOperationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCreationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/manager/MqttOperation;->mCreationTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
