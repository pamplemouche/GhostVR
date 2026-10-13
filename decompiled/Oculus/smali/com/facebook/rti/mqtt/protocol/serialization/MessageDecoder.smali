.class public Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;
.super Ljava/lang/Object;
.source "MessageDecoder.java"


# instance fields
.field private final mMessageFactory:Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory;

.field private final mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

.field private final mPublishCompression:I

.field private final mStatsCallback:Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;

.field private mStream:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;ILcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->mMessageFactory:Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory;

    .line 35
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    .line 36
    iput p3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->mPublishCompression:I

    .line 37
    iput-object p4, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->mStatsCallback:Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;

    .line 38
    return-void
.end method


# virtual methods
.method public init(Ljava/io/DataInputStream;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->mStream:Ljava/io/DataInputStream;

    .line 42
    return-void
.end method

.method public declared-synchronized readNextMessage()Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->mStream:Ljava/io/DataInputStream;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkArgument(Z)V

    .line 48
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->mStream:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/serialization/DecoderUtils;->decodeFixedHeader(Ljava/io/DataInputStream;)Landroid/util/Pair;

    move-result-object v4

    .line 49
    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    .line 50
    iget v2, v1, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mRemainingLength:I

    .line 52
    new-instance v3, Lcom/facebook/rti/mqtt/protocol/serialization/VariableHeaderDecoder;

    invoke-direct {v3, v1, v2}, Lcom/facebook/rti/mqtt/protocol/serialization/VariableHeaderDecoder;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;I)V

    .line 54
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->mStream:Ljava/io/DataInputStream;

    invoke-virtual {v3, v2}, Lcom/facebook/rti/mqtt/protocol/serialization/VariableHeaderDecoder;->decodeVariableHeader(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v2

    .line 55
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/serialization/VariableHeaderDecoder;->getRemainingInVariablePartLength()I

    move-result v3

    .line 57
    new-instance v5, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;

    iget v6, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->mPublishCompression:I

    invoke-direct {v5, v1, v2, v3, v6}, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;II)V

    .line 60
    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->mStream:Ljava/io/DataInputStream;

    invoke-virtual {v5, v3}, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->decodePayload(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v3

    .line 61
    invoke-virtual {v5}, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->getRemainingInVariablePartLength()I

    move-result v5

    .line 63
    if-eqz v5, :cond_1

    .line 65
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget-object v3, v1, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mMessageType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 66
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v3

    iget v1, v1, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mRemainingLength:I

    .line 65
    invoke-virtual {v2, v3, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttMessageEventInvalidMessage(Ljava/lang/String;I)V

    .line 67
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected bytes remaining in payload"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 70
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->mMessageFactory:Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory;

    invoke-virtual {v5, v1, v2, v3}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory;->create(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getMessageType()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v5

    .line 72
    const-string v1, ""

    .line 73
    instance-of v3, v2, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    if-eqz v3, :cond_3

    .line 74
    move-object v0, v2

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    move-object v1, v0

    .line 75
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->mTopicName:Ljava/lang/String;

    .line 76
    invoke-static {v1}, Lcom/facebook/rti/common/thrift/MqttTopic;->decodeTopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    if-nez v3, :cond_2

    move-object v3, v1

    .line 82
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->mStatsCallback:Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v6, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;->onBytesRead(I)V

    .line 83
    iget-object v6, p0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->mStatsCallback:Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v6, v5, v3, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;->onMessageRead(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    monitor-exit p0

    return-object v2

    :cond_3
    move-object v3, v1

    goto :goto_1
.end method
