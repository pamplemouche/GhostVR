.class public Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;
.super Lcom/facebook/rti/mqtt/manager/MqttOperation;
.source "MqttRetriableOperation.java"


# instance fields
.field private mPreemptiveReconnectTimeout:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/mqtt/common/executors/ListenableFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private originalOperationId:I

.field private retryCount:I


# virtual methods
.method public complete()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;->mPreemptiveReconnectTimeout:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;->mPreemptiveReconnectTimeout:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;->cancel(Z)Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;->mPreemptiveReconnectTimeout:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;

    .line 46
    :cond_0
    invoke-super {p0}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->complete()V

    .line 47
    return-void
.end method

.method public complete(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;->mPreemptiveReconnectTimeout:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;->mPreemptiveReconnectTimeout:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;->cancel(Z)Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;->mPreemptiveReconnectTimeout:Lcom/facebook/rti/mqtt/common/executors/ListenableFuture;

    .line 56
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/rti/mqtt/manager/MqttOperation;->complete(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public getOriginalOperationId()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;->originalOperationId:I

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;->retryCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttRetriableOperation{mResponseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;->mResponseType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOperationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;->mOperationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCreationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/manager/MqttRetriableOperation;->mCreationTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
