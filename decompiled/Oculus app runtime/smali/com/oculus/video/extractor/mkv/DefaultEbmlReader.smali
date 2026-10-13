.class final Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Lcom/oculus/video/extractor/mkv/EbmlReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/extractor/mkv/DefaultEbmlReader$MasterElement;
    }
.end annotation


# static fields
.field private static final ELEMENT_STATE_READ_CONTENT:I = 0x2

.field private static final ELEMENT_STATE_READ_CONTENT_SIZE:I = 0x1

.field private static final ELEMENT_STATE_READ_ID:I = 0x0

.field private static final MAX_ID_BYTES:I = 0x4

.field private static final MAX_INTEGER_ELEMENT_SIZE_BYTES:I = 0x8

.field private static final MAX_LENGTH_BYTES:I = 0x8

.field private static final VALID_FLOAT32_ELEMENT_SIZE_BYTES:I = 0x4

.field private static final VALID_FLOAT64_ELEMENT_SIZE_BYTES:I = 0x8


# instance fields
.field private elementContentSize:J

.field private elementId:I

.field private elementState:I

.field private final masterElementsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/oculus/video/extractor/mkv/DefaultEbmlReader$MasterElement;",
            ">;"
        }
    .end annotation
.end field

.field private output:Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;

.field private final scratch:[B

.field private final varintReader:Lcom/oculus/video/extractor/mkv/VarintReader;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 43
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->scratch:[B

    .line 44
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    .line 45
    new-instance v0, Lcom/oculus/video/extractor/mkv/VarintReader;

    invoke-direct {v0}, Lcom/oculus/video/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->varintReader:Lcom/oculus/video/extractor/mkv/VarintReader;

    return-void
.end method

.method private maybeResyncToNextLevel1Element(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 157
    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 160
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/oculus/video/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-gt v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->scratch:[B

    invoke-static {v1, v0, v2}, Lcom/oculus/video/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 163
    iget-object v1, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->output:Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;

    invoke-interface {v1, v2}, Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;->isLevel1Element(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-interface {p1, v0}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    int-to-long v0, v2

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    .line 168
    invoke-interface {p1, v0}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0
.end method

.method private readFloat(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->readInteger(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    long-to-int p1, v0

    .line 205
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double p1, p1

    goto :goto_0

    .line 207
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private readInteger(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 186
    iget-object p1, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private readString(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 226
    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 227
    invoke-interface {p1, v0, v1, p2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 228
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private readUTF8String(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 245
    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 246
    invoke-interface {p1, v0, v1, p2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 247
    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-direct {p1, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public init(Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->output:Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;

    return-void
.end method

.method public read(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->output:Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 68
    :goto_1
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader$MasterElement;

    invoke-static {v0}, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader$MasterElement;->access$000(Lcom/oculus/video/extractor/mkv/DefaultEbmlReader$MasterElement;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    .line 70
    iget-object p1, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->output:Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;

    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader$MasterElement;

    invoke-static {v0}, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader$MasterElement;->access$100(Lcom/oculus/video/extractor/mkv/DefaultEbmlReader$MasterElement;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;->endMasterElement(I)V

    return v2

    .line 74
    :cond_1
    iget v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementState:I

    if-nez v0, :cond_4

    .line 75
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->varintReader:Lcom/oculus/video/extractor/mkv/VarintReader;

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/oculus/video/extractor/mkv/VarintReader;->readUnsignedVarint(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v3

    const-wide/16 v5, -0x2

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 77
    invoke-direct {p0, p1}, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->maybeResyncToNextLevel1Element(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v3

    :cond_2
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    return v1

    :cond_3
    long-to-int v0, v3

    .line 83
    iput v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementId:I

    .line 84
    iput v2, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 87
    :cond_4
    iget v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementState:I

    if-ne v0, v2, :cond_5

    .line 88
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->varintReader:Lcom/oculus/video/extractor/mkv/VarintReader;

    const/16 v3, 0x8

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/oculus/video/extractor/mkv/VarintReader;->readUnsignedVarint(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const/4 v0, 0x2

    .line 89
    iput v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->output:Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-interface {v0, v3}, Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;->getElementType(I)I

    move-result v0

    const-string v3, "String element size: "

    const-wide/32 v4, 0x7fffffff

    const-wide/16 v6, 0x8

    packed-switch v0, :pswitch_data_0

    .line 139
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid element type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :pswitch_0
    iget-wide v6, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v6, v4

    if-gtz v0, :cond_6

    .line 131
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->output:Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v4, v6

    invoke-direct {p0, p1, v4}, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->readUTF8String(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;->stringElement(ILjava/lang/String;)V

    .line 132
    iput v1, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v2

    .line 129
    :cond_6
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :pswitch_1
    iget-wide v3, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v8, 0x4

    cmp-long v0, v3, v8

    if-eqz v0, :cond_8

    cmp-long v0, v3, v6

    if-nez v0, :cond_7

    goto :goto_2

    .line 111
    :cond_7
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid float size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->output:Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v5, v4

    invoke-direct {p0, p1, v5}, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->readFloat(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;I)D

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;->floatElement(ID)V

    .line 114
    iput v1, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v2

    .line 124
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->output:Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v5, v4

    invoke-interface {v0, v3, v5, p1}, Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;->binaryElement(IILcom/oculus/android/exoplayer2/extractor/ExtractorInput;)V

    .line 125
    iput v1, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v2

    .line 117
    :pswitch_3
    iget-wide v6, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v6, v4

    if-gtz v0, :cond_9

    .line 120
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->output:Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v4, v6

    invoke-direct {p0, p1, v4}, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->readString(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;->stringElement(ILjava/lang/String;)V

    .line 121
    iput v1, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v2

    .line 118
    :cond_9
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :pswitch_4
    iget-wide v3, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v3, v6

    if-gtz v0, :cond_a

    .line 105
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->output:Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;

    iget v5, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v4, v3

    invoke-direct {p0, p1, v4}, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->readInteger(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v3

    invoke-interface {v0, v5, v3, v4}, Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;->integerElement(IJ)V

    .line 106
    iput v1, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v2

    .line 103
    :cond_a
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid integer size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :pswitch_5
    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    .line 96
    iget-wide v3, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    add-long/2addr v3, v5

    .line 97
    iget-object p1, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    new-instance v0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v7, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementId:I

    const/4 v8, 0x0

    invoke-direct {v0, v7, v3, v4, v8}, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJLcom/oculus/video/extractor/mkv/DefaultEbmlReader$1;)V

    invoke-virtual {p1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v3, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->output:Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;

    iget v4, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v7, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-interface/range {v3 .. v8}, Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;->startMasterElement(IJJ)V

    .line 99
    iput v1, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v2

    .line 135
    :pswitch_6
    iget-wide v3, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v0, v3

    invoke-interface {p1, v0}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 136
    iput v1, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 60
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 61
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/DefaultEbmlReader;->varintReader:Lcom/oculus/video/extractor/mkv/VarintReader;

    invoke-virtual {v0}, Lcom/oculus/video/extractor/mkv/VarintReader;->reset()V

    return-void
.end method
