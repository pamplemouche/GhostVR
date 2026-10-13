.class public Lcom/facebook/flatbuffers/FlatBufferBuilder;
.super Ljava/lang/Object;
.source "FlatBufferBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final utf8charset:Ljava/nio/charset/Charset;


# instance fields
.field bb:Ljava/nio/ByteBuffer;

.field building_object:Z

.field minalign:I

.field num_vtables:I

.field space:I

.field vtable:[I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field vtable_length:I

.field vtables:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/facebook/flatbuffers/FlatBufferBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->$assertionsDisabled:Z

    .line 93
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->utf8charset:Ljava/nio/charset/Charset;

    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v0, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->minalign:I

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->vtable:[I

    .line 96
    iput v2, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->vtable_length:I

    .line 98
    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->vtables:[I

    .line 99
    iput v2, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->num_vtables:I

    .line 100
    iput-boolean v2, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->building_object:Z

    .line 119
    if-gtz p1, :cond_0

    move p1, v0

    .line 120
    :cond_0
    iput p1, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->space:I

    .line 121
    invoke-static {p1}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    .line 122
    return-void
.end method

.method private finishInternal(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 1495
    iget v0, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->minalign:I

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->prep(II)V

    .line 1496
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1497
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: file identifier must be length 4"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1499
    :cond_0
    const/4 v0, 0x3

    :goto_0
    if-ltz v0, :cond_1

    .line 1500
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->addByte(B)V

    .line 1499
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1502
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    .line 1503
    iget-object v0, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1504
    return-void
.end method

.method private static growByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    .line 142
    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: cannot grow buffer beyond 2 gigabytes."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 145
    :cond_0
    const/high16 v0, 0x10000

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 146
    sub-int v1, p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 147
    add-int v1, v2, v0

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 151
    :try_start_0
    invoke-static {v1}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->newByteBuffer(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move p1, v1

    .line 157
    :goto_0
    sub-int v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 159
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 155
    invoke-static {p1}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method private static newByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 133
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 134
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 135
    return-object v0
.end method

.method private pad(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 184
    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v2, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v2, v3, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method private putByte(B)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 226
    return-void
.end method

.method private putInt(I)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->space:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->space:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 234
    return-void
.end method

.method private sizedByteArray(II)[B
    .locals 2

    .prologue
    .line 1530
    new-array v0, p2, [B

    .line 1531
    iget-object v1, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1532
    iget-object v1, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1533
    return-object v0
.end method


# virtual methods
.method protected addByte(B)V
    .locals 2

    .prologue
    .line 251
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->prep(II)V

    .line 252
    invoke-direct {p0, p1}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->putByte(B)V

    .line 253
    return-void
.end method

.method protected addOffset(I)V
    .locals 2

    .prologue
    .line 288
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->prep(II)V

    .line 289
    sget-boolean v0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->offset()I

    move-result v0

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->offset()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x4

    .line 291
    invoke-direct {p0, v0}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->putInt(I)V

    .line 292
    return-void
.end method

.method public finish(I)V
    .locals 1

    .prologue
    .line 1487
    const-string v0, "FLAT"

    invoke-direct {p0, p1, v0}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->finishInternal(ILjava/lang/String;)V

    .line 1488
    return-void
.end method

.method protected offset()I
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected prep(II)V
    .locals 6

    .prologue
    .line 194
    iget v0, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->minalign:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->minalign:I

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    xor-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    .line 207
    add-int v1, v0, p1

    add-int/2addr v1, p2

    .line 208
    iget-object v2, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget v3, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v2, v3

    .line 209
    :goto_0
    iget v3, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->space:I

    if-ge v3, v1, :cond_1

    .line 210
    iget-object v3, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    .line 211
    iget-object v4, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    add-int v5, v1, v2

    invoke-static {v4, v5}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->growByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    .line 212
    iget v4, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->space:I

    iget-object v5, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    sub-int v3, v5, v3

    add-int/2addr v3, v4

    iput v3, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->space:I

    goto :goto_0

    .line 214
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->pad(I)V

    .line 215
    return-void
.end method

.method public sizedByteArray()[B
    .locals 3

    .prologue
    .line 1538
    iget v0, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->space:I

    iget-object v1, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/facebook/flatbuffers/FlatBufferBuilder;->space:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/facebook/flatbuffers/FlatBufferBuilder;->sizedByteArray(II)[B

    move-result-object v0

    return-object v0
.end method
