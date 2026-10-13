.class public Lcom/facebook/rti/mqtt/protocol/serialization/BaseDecoder;
.super Ljava/lang/Object;
.source "BaseDecoder.java"


# instance fields
.field protected mBytesRemainingInVariablePart:I

.field protected mFixedHeader:Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/serialization/BaseDecoder;->mFixedHeader:Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    .line 17
    iput p2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/BaseDecoder;->mBytesRemainingInVariablePart:I

    .line 18
    return-void
.end method


# virtual methods
.method protected decodeMsbLsb(Ljava/io/DataInputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 34
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    .line 35
    iget v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/BaseDecoder;->mBytesRemainingInVariablePart:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/BaseDecoder;->mBytesRemainingInVariablePart:I

    .line 36
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected decodeString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/serialization/BaseDecoder;->decodeMsbLsb(Ljava/io/DataInputStream;)I

    move-result v0

    .line 26
    new-array v1, v0, [B

    .line 27
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 28
    iget v2, p0, Lcom/facebook/rti/mqtt/protocol/serialization/BaseDecoder;->mBytesRemainingInVariablePart:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/BaseDecoder;->mBytesRemainingInVariablePart:I

    .line 29
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getRemainingInVariablePartLength()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/facebook/rti/mqtt/protocol/serialization/BaseDecoder;->mBytesRemainingInVariablePart:I

    return v0
.end method
