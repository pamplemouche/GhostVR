.class public Lcom/facebook/rti/mqtt/protocol/serialization/EncoderUtils;
.super Ljava/lang/Object;
.source "EncoderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encodeStringUtf8(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 73
    :try_start_0
    const-string/jumbo v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getConnVariableHeaderFlag(Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;)I
    .locals 2

    .prologue
    .line 14
    const/4 v0, 0x0

    .line 15
    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mHasUserName:Z

    if-eqz v1, :cond_0

    .line 16
    const/16 v0, 0x80

    .line 18
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mHasPassword:Z

    if-eqz v1, :cond_1

    .line 19
    or-int/lit8 v0, v0, 0x40

    .line 21
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mWillRetain:Z

    if-eqz v1, :cond_2

    .line 22
    or-int/lit8 v0, v0, 0x20

    .line 24
    :cond_2
    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mWillQos:I

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    .line 25
    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mWillFlag:Z

    if-eqz v1, :cond_3

    .line 26
    or-int/lit8 v0, v0, 0x4

    .line 28
    :cond_3
    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;->mCleanSession:Z

    if-eqz v1, :cond_4

    .line 29
    or-int/lit8 v0, v0, 0x2

    .line 31
    :cond_4
    return v0
.end method

.method public static getFixedHeaderByte1(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;)I
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mMessageType:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    iget v1, v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->mValue:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    .line 37
    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mDupFlag:Z

    if-eqz v1, :cond_0

    .line 38
    or-int/lit8 v0, v0, 0x8

    .line 40
    :cond_0
    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->mQosLevel:I

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 41
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;->isRetain()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    or-int/lit8 v0, v0, 0x1

    .line 44
    :cond_1
    return v0
.end method

.method public static writeVariableLengthInt(Ljava/io/DataOutputStream;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 51
    :cond_0
    rem-int/lit16 v1, p1, 0x80

    .line 52
    div-int/lit16 p1, p1, 0x80

    .line 53
    if-lez p1, :cond_1

    .line 54
    or-int/lit16 v1, v1, 0x80

    .line 56
    :cond_1
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    if-gtz p1, :cond_0

    .line 59
    return v0
.end method
