.class public Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;
.super Ljava/lang/Object;
.source "MessageEncoder.java"


# instance fields
.field private final mMessagePayloadEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

.field private final mPublishCompression:I

.field private final mStatsCallback:Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;

.field private mStream:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(ILcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mPublishCompression:I

    .line 46
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mMessagePayloadEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    .line 47
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStatsCallback:Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;

    .line 48
    return-void
.end method

.method private handleConnAckMessage(Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;)I
    .locals 4
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;

    move-result-object v2

    iget-byte v2, v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;->mReturnCode:B

    if-nez v2, :cond_1

    .line 186
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->getPayload()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkState(Z)V

    .line 187
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->getPayload()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->encodeStringUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 189
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->getFixedHeader()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->getFixedHeaderByte1(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 192
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    array-length v3, v0

    add-int/lit8 v3, v3, 0x4

    invoke-static {v2, v3}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->writeVariableLengthInt(Ljava/io/DataOutputStream;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 195
    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 197
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;

    move-result-object v3

    iget-byte v3, v3, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;->mReturnCode:B

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 199
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 200
    add-int/lit8 v1, v2, 0x4

    .line 203
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 204
    array-length v0, v0

    add-int/2addr v0, v1

    .line 205
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 216
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 186
    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->getPayload()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_2
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkState(Z)V

    .line 209
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->getFixedHeader()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->getFixedHeaderByte1(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 210
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 211
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 212
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;

    move-result-object v1

    iget-byte v1, v1, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;->mReturnCode:B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 213
    const/4 v0, 0x4

    .line 214
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 208
    goto :goto_2
.end method

.method private handlePingReqMessage(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 375
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getFixedHeader()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->getFixedHeaderByte1(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 377
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 378
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 380
    return v2
.end method

.method private handlePingRespMessage(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 384
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getFixedHeader()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->getFixedHeaderByte1(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 386
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 387
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 389
    return v2
.end method

.method private handlePubAckMessage(Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x1

    .line 362
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;->getFixedHeader()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v1

    .line 363
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v2

    .line 365
    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->getFixedHeaderByte1(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 366
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->writeVariableLengthInt(Ljava/io/DataOutputStream;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 367
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    iget v2, v2, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->mMessageId:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 368
    add-int/lit8 v0, v0, 0x2

    .line 369
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 371
    return v0
.end method

.method private handlePublishMessage(Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 324
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getFixedHeader()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v4

    .line 325
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v5

    .line 327
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getPayload()[B

    move-result-object v0

    .line 328
    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mPublishCompression:I

    if-eqz v1, :cond_0

    .line 329
    invoke-static {v0}, Lcom/facebook/zlib/ZlibCompressionUtil;->compressBytes([B)[B

    move-result-object v1

    .line 330
    iget v6, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mPublishCompression:I

    if-ne v2, v6, :cond_2

    array-length v6, v1

    array-length v7, v0

    if-le v6, v7, :cond_2

    .line 334
    invoke-virtual {v4, v8}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->setRetain(Z)V

    .line 340
    :cond_0
    :goto_0
    iget-object v1, v5, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->mTopicName:Ljava/lang/String;

    .line 341
    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->encodeStringUtf8(Ljava/lang/String;)[B

    move-result-object v6

    .line 343
    array-length v1, v6

    add-int/lit8 v7, v1, 0x2

    iget v1, v4, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mQosLevel:I

    if-lez v1, :cond_3

    move v1, v2

    :goto_1
    add-int/2addr v1, v7

    .line 345
    array-length v2, v0

    add-int/2addr v1, v2

    .line 346
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-static {v4}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->getFixedHeaderByte1(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 347
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-static {v2, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->writeVariableLengthInt(Ljava/io/DataOutputStream;I)I

    move-result v2

    add-int/2addr v2, v8

    .line 348
    iget-object v7, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 349
    iget-object v7, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    array-length v8, v6

    invoke-virtual {v7, v6, v3, v8}, Ljava/io/DataOutputStream;->write([BII)V

    .line 350
    iget v4, v4, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mQosLevel:I

    if-lez v4, :cond_1

    .line 351
    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    iget v5, v5, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->mMessageId:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 353
    :cond_1
    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    array-length v5, v0

    invoke-virtual {v4, v0, v3, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 354
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 356
    add-int v0, v2, v1

    .line 357
    return v0

    :cond_2
    move-object v0, v1

    .line 336
    goto :goto_0

    :cond_3
    move v1, v3

    .line 343
    goto :goto_1
.end method

.method private handleSubAckMessage(Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    const/4 v0, 0x1

    .line 295
    const/4 v1, 0x2

    .line 296
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;->getPayload()Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;

    move-result-object v2

    iget-object v2, v2, Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;->mGrantedQualityOfServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 297
    add-int/2addr v1, v2

    .line 298
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;->getFixedHeader()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->getFixedHeaderByte1(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 299
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-static {v2, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->writeVariableLengthInt(Ljava/io/DataOutputStream;I)I

    move-result v2

    add-int/2addr v2, v0

    .line 300
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v3

    iget v3, v3, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->mMessageId:I

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 301
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;->getPayload()Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;->mGrantedQualityOfServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 302
    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 306
    add-int v0, v2, v1

    .line 307
    return v0
.end method

.method private handleSubscribeMessage(Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 220
    const/4 v3, 0x1

    .line 221
    const/4 v4, 0x2

    .line 224
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;->getFixedHeader()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v5

    .line 225
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v6

    .line 226
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;->getPayload()Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;

    move-result-object v7

    .line 228
    iget-object v0, v7, Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;->mTopicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    .line 229
    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    .line 230
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->encodeStringUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 231
    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 232
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 233
    goto :goto_0

    .line 236
    :cond_0
    add-int/2addr v1, v4

    .line 237
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-static {v5}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->getFixedHeaderByte1(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 238
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->writeVariableLengthInt(Ljava/io/DataOutputStream;I)I

    move-result v0

    add-int/2addr v3, v0

    .line 241
    iget v0, v6, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->mMessageId:I

    .line 242
    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 245
    iget-object v0, v7, Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;->mTopicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    .line 246
    iget-object v5, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mTopicName:Ljava/lang/String;

    .line 247
    invoke-static {v5}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->encodeStringUtf8(Ljava/lang/String;)[B

    move-result-object v5

    .line 248
    iget-object v6, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 249
    iget-object v6, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    array-length v7, v5

    invoke-virtual {v6, v5, v2, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 250
    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    iget v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;->mQualityOfService:I

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_1

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 254
    add-int v0, v3, v1

    .line 255
    return v0
.end method

.method private handleUnsubAckMessage(Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    const/4 v0, 0x1

    .line 312
    const/4 v1, 0x2

    .line 313
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;->getFixedHeader()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->getFixedHeaderByte1(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 314
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-static {v2, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->writeVariableLengthInt(Ljava/io/DataOutputStream;I)I

    move-result v2

    add-int/2addr v0, v2

    .line 315
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v3

    iget v3, v3, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->mMessageId:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 316
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 318
    add-int/2addr v0, v1

    .line 319
    return v0
.end method

.method private handleUnsubscribeMessage(Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 259
    const/4 v3, 0x1

    .line 260
    const/4 v4, 0x2

    .line 263
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;->getFixedHeader()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v5

    .line 264
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v6

    .line 265
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;->getPayload()Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;

    move-result-object v7

    .line 267
    iget-object v0, v7, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;->mTopicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->encodeStringUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 269
    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    move v1, v0

    .line 270
    goto :goto_0

    .line 273
    :cond_0
    add-int/2addr v1, v4

    .line 274
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-static {v5}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->getFixedHeaderByte1(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 275
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->writeVariableLengthInt(Ljava/io/DataOutputStream;I)I

    move-result v0

    add-int/2addr v3, v0

    .line 278
    iget v0, v6, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->mMessageId:I

    .line 279
    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 282
    iget-object v0, v7, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;->mTopicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;->encodeStringUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 284
    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 285
    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    array-length v6, v0

    invoke-virtual {v5, v0, v2, v6}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_1

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 289
    add-int v0, v3, v1

    .line 290
    return v0
.end method


# virtual methods
.method public init(Ljava/io/DataOutputStream;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    .line 52
    return-void
.end method

.method public declared-synchronized writeMessage(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 55
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getMessageType()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v3

    .line 57
    sget-object v2, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder$1;->$SwitchMap$com$facebook$rti$mqtt$protocol$messages$MessageType:[I

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 155
    const-string v2, "MessageEncoder"

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown message type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 157
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getMessageType()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "send/unexpected; type=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 159
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getMessageType()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v7

    aput-object v7, v5, v6

    .line 155
    invoke-static {v2, v3, v4, v5}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    .line 162
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getMessageType()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v1

    .line 163
    instance-of v3, p1, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    if-eqz v3, :cond_0

    .line 164
    check-cast p1, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    .line 165
    const-string v1, "PUBLISH_"

    .line 167
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v3

    iget-object v3, v3, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->mTopicName:Ljava/lang/String;

    .line 166
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    :cond_0
    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStatsCallback:Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;

    invoke-interface {v3, v2}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;->onBytesWrite(I)V

    .line 171
    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStatsCallback:Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;

    invoke-interface {v3, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;->onMessageWrite(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 59
    :pswitch_0
    :try_start_1
    instance-of v1, p1, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;

    if-nez v1, :cond_1

    .line 60
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 62
    :cond_1
    :try_start_2
    move-object v0, p1

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;

    move-object v1, v0

    .line 63
    const-string v2, "MessageEncoder"

    const-string/jumbo v4, "send/%s; retcode=%d"

    .line 67
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;

    move-result-object v5

    iget-byte v5, v5, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;->mReturnCode:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 63
    invoke-static {v2, v4, v3, v5}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->handleConnAckMessage(Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;)I

    move-result v1

    move v2, v1

    .line 69
    goto :goto_0

    .line 72
    :pswitch_1
    instance-of v1, p1, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;

    if-nez v1, :cond_2

    .line 73
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 75
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;

    move-object v1, v0

    .line 76
    const-string v2, "MessageEncoder"

    const-string/jumbo v4, "send/%s; topics=%s"

    .line 77
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;->getPayload()Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;

    move-result-object v5

    iget-object v5, v5, Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;->mTopicList:Ljava/util/List;

    .line 76
    invoke-static {v2, v4, v3, v5}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->handleSubscribeMessage(Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;)I

    move-result v1

    move v2, v1

    .line 79
    goto/16 :goto_0

    .line 82
    :pswitch_2
    instance-of v1, p1, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;

    if-nez v1, :cond_3

    .line 83
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 85
    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;

    move-object v1, v0

    .line 86
    const-string v2, "MessageEncoder"

    const-string/jumbo v4, "send/%s; id=%d"

    .line 87
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v5

    iget v5, v5, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->mMessageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 86
    invoke-static {v2, v4, v3, v5}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->handleSubAckMessage(Lcom/facebook/rti/mqtt/protocol/messages/SubAckMqttMessage;)I

    move-result v1

    move v2, v1

    .line 89
    goto/16 :goto_0

    .line 91
    :pswitch_3
    instance-of v1, p1, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;

    if-nez v1, :cond_4

    .line 92
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 94
    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;

    move-object v1, v0

    .line 95
    const-string v2, "MessageEncoder"

    const-string/jumbo v4, "send/%s; topics=%s"

    .line 96
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;->getPayload()Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;

    move-result-object v5

    iget-object v5, v5, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;->mTopicList:Ljava/util/List;

    .line 95
    invoke-static {v2, v4, v3, v5}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->handleUnsubscribeMessage(Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;)I

    move-result v1

    move v2, v1

    .line 98
    goto/16 :goto_0

    .line 100
    :pswitch_4
    instance-of v1, p1, Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;

    if-nez v1, :cond_5

    .line 101
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 103
    :cond_5
    move-object v0, p1

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;

    move-object v1, v0

    .line 104
    const-string v2, "MessageEncoder"

    const-string/jumbo v4, "send/%s; id=%d"

    .line 105
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v5

    iget v5, v5, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->mMessageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 104
    invoke-static {v2, v4, v3, v5}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->handleUnsubAckMessage(Lcom/facebook/rti/mqtt/protocol/messages/UnsubAckMqttMessage;)I

    move-result v1

    move v2, v1

    .line 107
    goto/16 :goto_0

    .line 110
    :pswitch_5
    instance-of v1, p1, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    if-nez v1, :cond_6

    .line 111
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 113
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    move-object v7, v0

    .line 114
    const-string v1, "MessageEncoder"

    const-string/jumbo v2, "send/%s; id=%d, qos=%d, topic=%s"

    .line 118
    invoke-virtual {v7}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v4

    iget v4, v4, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->mMessageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 119
    invoke-virtual {v7}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getFixedHeader()Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    move-result-object v5

    iget v5, v5, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mQosLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 120
    invoke-virtual {v7}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v6

    iget-object v6, v6, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->mTopicName:Ljava/lang/String;

    .line 114
    invoke-static/range {v1 .. v6}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    invoke-direct {p0, v7}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->handlePublishMessage(Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;)I

    move-result v1

    move v2, v1

    .line 122
    goto/16 :goto_0

    .line 125
    :pswitch_6
    instance-of v1, p1, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;

    if-nez v1, :cond_7

    .line 126
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 128
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;

    move-object v1, v0

    .line 129
    const-string v2, "MessageEncoder"

    const-string/jumbo v4, "send/%s; id=%d"

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    move-result-object v5

    iget v5, v5, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;->mMessageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v3, v5}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->handlePubAckMessage(Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;)I

    move-result v1

    move v2, v1

    .line 131
    goto/16 :goto_0

    .line 133
    :pswitch_7
    const-string v1, "MessageEncoder"

    const-string/jumbo v2, "send/%s"

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->handlePingReqMessage(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)I

    move-result v1

    move v2, v1

    .line 135
    goto/16 :goto_0

    .line 138
    :pswitch_8
    const-string v1, "MessageEncoder"

    const-string/jumbo v2, "send/%s"

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->handlePingRespMessage(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)I

    move-result v1

    move v2, v1

    .line 140
    goto/16 :goto_0

    .line 142
    :pswitch_9
    instance-of v1, p1, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;

    if-nez v1, :cond_8

    .line 143
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 145
    :cond_8
    move-object v0, p1

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;

    move-object v1, v0

    .line 146
    const-string v2, "MessageEncoder"

    const-string/jumbo v4, "send/%s; keepaliveSec=%d"

    .line 150
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;

    move-result-object v5

    iget v5, v5, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mKeepAliveTimeSeconds:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 146
    invoke-static {v2, v4, v3, v5}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mMessagePayloadEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->mStream:Ljava/io/DataOutputStream;

    .line 152
    invoke-interface {v2, v3, v1}, Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;->handleConnectMessage(Ljava/io/DataOutputStream;Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    move v2, v1

    .line 153
    goto/16 :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
