.class public Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;
.super Lcom/facebook/rti/mqtt/protocol/serialization/BaseDecoder;
.source "PayloadDecoder.java"


# instance fields
.field private final mPublishCompression:I

.field private final mVariableHeader:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p3}, Lcom/facebook/rti/mqtt/protocol/serialization/BaseDecoder;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;I)V

    .line 37
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mVariableHeader:Ljava/lang/Object;

    .line 38
    iput p4, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mPublishCompression:I

    .line 39
    return-void
.end method

.method private decodeConnackPayload(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mBytesRemainingInVariablePart:I

    if-lez v1, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->decodeString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_0
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->deserialize(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    move-result-object v0

    return-object v0
.end method

.method private decodePublishPayload(Ljava/io/DataInputStream;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 138
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mBytesRemainingInVariablePart:I

    new-array v0, v0, [B

    .line 139
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 140
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mBytesRemainingInVariablePart:I

    .line 142
    const/4 v1, 0x1

    iget v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mPublishCompression:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x2

    iget v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mPublishCompression:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mFixedHeader:Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    .line 144
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->isRetain()Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    :cond_0
    invoke-static {v0}, Lcom/facebook/zlib/ZlibCompressionUtil;->decompressedByteArray([B)[B

    move-result-object v0

    .line 148
    :cond_1
    return-object v0
.end method

.method private decodeSubackPayload(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    :goto_0
    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mBytesRemainingInVariablePart:I

    if-lez v1, :cond_0

    .line 120
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, -0x4

    .line 121
    iget v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mBytesRemainingInVariablePart:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mBytesRemainingInVariablePart:I

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_0
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;

    invoke-direct {v1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private decodeSubscribePayload(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    :goto_0
    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mBytesRemainingInVariablePart:I

    if-lez v1, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->decodeString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 111
    iget v3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mBytesRemainingInVariablePart:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mBytesRemainingInVariablePart:I

    .line 112
    new-instance v3, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    invoke-direct {v3, v1, v2}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_0
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;

    invoke-direct {v1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private decodeUnsubscribePayload(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    :goto_0
    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mBytesRemainingInVariablePart:I

    if-lez v1, :cond_0

    .line 130
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->decodeString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_0
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;

    invoke-direct {v1, v0}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;-><init>(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method protected decodeConnectionPayload(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mVariableHeader:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;

    .line 71
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->decodeString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 74
    iget-boolean v2, v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mWillFlag:Z

    if-eqz v2, :cond_3

    .line 75
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->decodeString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->decodeString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 80
    :goto_0
    iget v5, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mBytesRemainingInVariablePart:I

    if-lez v5, :cond_2

    .line 81
    iget-boolean v5, v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mHasUserName:Z

    if-eqz v5, :cond_1

    .line 82
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->decodeString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;->deserialize(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;

    move-result-object v5

    .line 84
    :goto_1
    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mHasPassword:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->decodeString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    move-object v4, v5

    move-object v5, v7

    .line 88
    :goto_2
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayloadUserName;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_0
    move-object v7, v4

    move-object v4, v5

    move-object v5, v7

    goto :goto_2

    :cond_1
    move-object v5, v4

    goto :goto_1

    :cond_2
    move-object v5, v4

    goto :goto_2

    :cond_3
    move-object v3, v4

    move-object v2, v4

    goto :goto_0
.end method

.method public decodePayload(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder$1;->$SwitchMap$com$facebook$rti$mqtt$protocol$messages$MessageType:[I

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->mFixedHeader:Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mMessageType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 64
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->decodeConnectionPayload(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->decodeConnackPayload(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->decodeSubscribePayload(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->decodeSubackPayload(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/SubAckPayload;

    move-result-object v0

    goto :goto_0

    .line 58
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->decodeUnsubscribePayload(Ljava/io/DataInputStream;)Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;

    move-result-object v0

    goto :goto_0

    .line 61
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/PayloadDecoder;->decodePublishPayload(Ljava/io/DataInputStream;)[B

    move-result-object v0

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
