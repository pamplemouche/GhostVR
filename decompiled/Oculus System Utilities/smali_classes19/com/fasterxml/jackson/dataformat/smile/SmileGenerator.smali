.class public Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;
.super Lcom/fasterxml/jackson/core/base/GeneratorBase;
.source "SmileGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;,
        Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;
    }
.end annotation


# static fields
.field protected static final MAX_INT_AS_LONG:J = 0x7fffffffL

.field private static final MIN_BUFFER_LENGTH:I = 0x302

.field protected static final MIN_INT_AS_LONG:J = -0x80000000L

.field protected static final SURR1_FIRST:I = 0xd800

.field protected static final SURR1_LAST:I = 0xdbff

.field protected static final SURR2_FIRST:I = 0xdc00

.field protected static final SURR2_LAST:I = 0xdfff

.field protected static final TOKEN_BYTE_BIG_DECIMAL:B = 0x2at

.field protected static final TOKEN_BYTE_BIG_INTEGER:B = 0x26t

.field protected static final TOKEN_BYTE_FLOAT_32:B = 0x28t

.field protected static final TOKEN_BYTE_FLOAT_64:B = 0x29t

.field protected static final TOKEN_BYTE_INT_32:B = 0x24t

.field protected static final TOKEN_BYTE_INT_64:B = 0x25t

.field protected static final TOKEN_BYTE_LONG_STRING_ASCII:B = -0x20t

.field protected static final _smileRecyclerRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler",
            "<",
            "Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _bufferRecyclable:Z

.field protected _bytesWritten:I

.field protected _charBuffer:[C

.field protected final _charBufferLength:I

.field protected final _ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

.field protected final _out:Ljava/io/OutputStream;

.field protected _outputBuffer:[B

.field protected final _outputEnd:I

.field protected _outputTail:I

.field protected _seenNameCount:I

.field protected _seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

.field protected _seenStringValueCount:I

.field protected _seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

.field protected final _smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler",
            "<",
            "Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;",
            ">;"
        }
    .end annotation
.end field

.field protected _smileFeatures:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 270
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;IILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "jsonFeatures"    # I
    .param p3, "smileFeatures"    # I
    .param p4, "codec"    # Lcom/fasterxml/jackson/core/ObjectCodec;
    .param p5, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x302

    const/16 v3, 0x40

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 282
    invoke-direct {p0, p2, p4}, Lcom/fasterxml/jackson/core/base/GeneratorBase;-><init>(ILcom/fasterxml/jackson/core/ObjectCodec;)V

    .line 199
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 283
    iput p3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileFeatures:I

    .line 284
    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 285
    invoke-static {}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileBufferRecycler()Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    .line 286
    iput-object p5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_bufferRecyclable:Z

    .line 288
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocWriteEncodingBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    .line 289
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    .line 290
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBuffer:[C

    .line 291
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBuffer:[C

    array-length v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBufferLength:I

    .line 293
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-ge v0, v4, :cond_0

    .line 294
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal encoding buffer length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") too short, must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->CHECK_SHARED_NAMES:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p3

    if-nez v0, :cond_1

    .line 298
    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 299
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    .line 308
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->CHECK_SHARED_STRING_VALUES:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p3

    if-nez v0, :cond_3

    .line 309
    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 310
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    .line 318
    :goto_1
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->allocSeenNamesBuffer()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 302
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    if-nez v0, :cond_2

    .line 303
    new-array v0, v3, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 305
    :cond_2
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    goto :goto_0

    .line 312
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->allocSeenStringValuesBuffer()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 313
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    if-nez v0, :cond_4

    .line 314
    new-array v0, v3, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 316
    :cond_4
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    goto :goto_1
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;IILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/OutputStream;[BIZ)V
    .locals 6
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "jsonFeatures"    # I
    .param p3, "smileFeatures"    # I
    .param p4, "codec"    # Lcom/fasterxml/jackson/core/ObjectCodec;
    .param p5, "out"    # Ljava/io/OutputStream;
    .param p6, "outputBuffer"    # [B
    .param p7, "offset"    # I
    .param p8, "bufferRecyclable"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x302

    const/16 v3, 0x40

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 323
    invoke-direct {p0, p2, p4}, Lcom/fasterxml/jackson/core/base/GeneratorBase;-><init>(ILcom/fasterxml/jackson/core/ObjectCodec;)V

    .line 199
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 324
    iput p3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileFeatures:I

    .line 325
    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 326
    invoke-static {}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileBufferRecycler()Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    .line 327
    iput-object p5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    .line 328
    iput-boolean p8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_bufferRecyclable:Z

    .line 329
    iput p7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 330
    iput-object p6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    .line 331
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    .line 332
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBuffer:[C

    .line 333
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBuffer:[C

    array-length v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBufferLength:I

    .line 335
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-ge v0, v4, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal encoding buffer length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") too short, must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->CHECK_SHARED_NAMES:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p3

    if-nez v0, :cond_1

    .line 340
    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 341
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    .line 350
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->CHECK_SHARED_STRING_VALUES:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result v0

    and-int/2addr v0, p3

    if-nez v0, :cond_3

    .line 351
    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 352
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    .line 360
    :goto_1
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->allocSeenNamesBuffer()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 344
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    if-nez v0, :cond_2

    .line 345
    new-array v0, v3, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 347
    :cond_2
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    goto :goto_0

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->allocSeenStringValuesBuffer()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 355
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    if-nez v0, :cond_4

    .line 356
    new-array v0, v3, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 358
    :cond_4
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    goto :goto_1
.end method

.method private final _addSeenName(Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x400

    const/4 v5, 0x0

    .line 2202
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    array-length v7, v7

    if-ne v6, v7, :cond_0

    .line 2203
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    if-ne v6, v8, :cond_1

    .line 2204
    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2205
    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    .line 2222
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    and-int v0, v5, v6

    .line 2223
    .local v0, "ix":I
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    new-instance v6, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    iget-object v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    aget-object v8, v8, v0

    invoke-direct {v6, p1, v7, v8}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;-><init>(Ljava/lang/String;ILcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;)V

    aput-object v6, v5, v0

    .line 2224
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    .line 2225
    return-void

    .line 2207
    .end local v0    # "ix":I
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2208
    .local v4, "old":[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;
    new-array v6, v8, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iput-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2209
    const/16 v1, 0x3ff

    .line 2210
    .local v1, "mask":I
    array-length v6, v4

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v4, v5

    .line 2211
    .local v3, "node":Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;
    :goto_1
    if-eqz v3, :cond_2

    .line 2212
    iget-object v7, v3, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    and-int/lit16 v0, v7, 0x3ff

    .line 2213
    .restart local v0    # "ix":I
    iget-object v2, v3, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->next:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2214
    .local v2, "next":Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    aget-object v7, v7, v0

    iput-object v7, v3, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->next:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2215
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    aput-object v3, v7, v0

    .line 2216
    move-object v3, v2

    .line 2217
    goto :goto_1

    .line 2210
    .end local v0    # "ix":I
    .end local v2    # "next":Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private final _addSeenStringValue(Ljava/lang/String;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x400

    const/4 v5, 0x0

    .line 2256
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    array-length v7, v7

    if-ne v6, v7, :cond_0

    .line 2257
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    if-ne v6, v8, :cond_1

    .line 2258
    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2259
    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    .line 2276
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    and-int v0, v5, v6

    .line 2277
    .local v0, "ix":I
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    new-instance v6, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    iget-object v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    aget-object v8, v8, v0

    invoke-direct {v6, p1, v7, v8}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;-><init>(Ljava/lang/String;ILcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;)V

    aput-object v6, v5, v0

    .line 2278
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    .line 2279
    return-void

    .line 2261
    .end local v0    # "ix":I
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2262
    .local v4, "old":[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;
    new-array v6, v8, [Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iput-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2263
    const/16 v1, 0x3ff

    .line 2264
    .local v1, "mask":I
    array-length v6, v4

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v4, v5

    .line 2265
    .local v3, "node":Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;
    :goto_1
    if-eqz v3, :cond_2

    .line 2266
    iget-object v7, v3, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    and-int/lit16 v0, v7, 0x3ff

    .line 2267
    .restart local v0    # "ix":I
    iget-object v2, v3, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->next:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2268
    .local v2, "next":Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    aget-object v7, v7, v0

    iput-object v7, v3, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->next:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2269
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    aput-object v3, v7, v0

    .line 2270
    move-object v3, v2

    .line 2271
    goto :goto_1

    .line 2264
    .end local v0    # "ix":I
    .end local v2    # "next":Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private _convertSurrogate(II)I
    .locals 3
    .param p1, "firstPart"    # I
    .param p2, "secondPart"    # I

    .prologue
    const v2, 0xdc00

    .line 1719
    if-lt p2, v2, :cond_0

    const v0, 0xdfff

    if-le p2, v0, :cond_1

    .line 1720
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", second 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; illegal combination"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1722
    :cond_1
    const/high16 v0, 0x10000

    const v1, 0xd800

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int v1, p2, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private final _ensureRoomForOutput(I)V
    .locals 2
    .param p1, "needed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1748
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1749
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1751
    :cond_0
    return-void
.end method

.method private final _findSeenName(Ljava/lang/String;)I
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 2171
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2172
    .local v0, "hash":I
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v0

    aget-object v1, v5, v6

    .line 2173
    .local v1, "head":Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;
    if-nez v1, :cond_0

    .line 2196
    :goto_0
    return v4

    .line 2176
    :cond_0
    move-object v2, v1

    .line 2179
    .local v2, "node":Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;
    iget-object v5, v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    if-ne v5, p1, :cond_1

    .line 2180
    iget v4, v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->index:I

    goto :goto_0

    .line 2182
    :cond_1
    iget-object v2, v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->next:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    if-eqz v2, :cond_2

    .line 2183
    iget-object v5, v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    if-ne v5, p1, :cond_1

    .line 2184
    iget v4, v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->index:I

    goto :goto_0

    .line 2188
    :cond_2
    move-object v2, v1

    .line 2190
    :cond_3
    iget-object v3, v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    .line 2191
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    if-ne v5, v0, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2192
    iget v4, v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->index:I

    goto :goto_0

    .line 2194
    :cond_4
    iget-object v2, v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->next:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2195
    if-nez v2, :cond_3

    goto :goto_0
.end method

.method private final _findSeenStringValue(Ljava/lang/String;)I
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2229
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2230
    .local v0, "hash":I
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v0

    aget-object v1, v4, v5

    .line 2231
    .local v1, "head":Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;
    if-eqz v1, :cond_4

    .line 2232
    move-object v2, v1

    .line 2235
    .local v2, "node":Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;
    :cond_0
    iget-object v4, v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    if-ne v4, p1, :cond_1

    .line 2236
    iget v4, v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->index:I

    .line 2250
    .end local v2    # "node":Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;
    :goto_0
    return v4

    .line 2238
    .restart local v2    # "node":Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;
    :cond_1
    iget-object v2, v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->next:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2239
    if-nez v2, :cond_0

    .line 2241
    move-object v2, v1

    .line 2243
    :cond_2
    iget-object v3, v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->value:Ljava/lang/String;

    .line 2244
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v4, v0, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2245
    iget v4, v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->index:I

    goto :goto_0

    .line 2247
    :cond_3
    iget-object v2, v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;->next:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2248
    if-nez v2, :cond_2

    .line 2250
    .end local v2    # "node":Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private _mediumUTF8Encode([CII)V
    .locals 9
    .param p1, "str"    # [C
    .param p2, "inputPtr"    # I
    .param p3, "inputEnd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7f

    .line 1646
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    add-int/lit8 v0, v5, -0x4

    .local v0, "bufferEnd":I
    move v2, p2

    .line 1649
    .end local p2    # "inputPtr":I
    .local v2, "inputPtr":I
    :cond_0
    :goto_0
    if-ge v2, p3, :cond_a

    .line 1653
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    if-lt v5, v0, :cond_1

    .line 1654
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1656
    :cond_1
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inputPtr":I
    .restart local p2    # "inputPtr":I
    aget-char v1, p1, v2

    .line 1658
    .local v1, "c":I
    if-gt v1, v8, :cond_b

    .line 1659
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    int-to-byte v7, v1

    aput-byte v7, v5, v6

    .line 1661
    sub-int v3, p3, p2

    .line 1662
    .local v3, "maxInCount":I
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    sub-int v4, v0, v5

    .line 1664
    .local v4, "maxOutCount":I
    if-le v3, v4, :cond_2

    .line 1665
    move v3, v4

    .line 1667
    :cond_2
    add-int/2addr v3, p2

    move v2, p2

    .line 1670
    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1673
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inputPtr":I
    .restart local p2    # "inputPtr":I
    aget-char v1, p1, v2

    .line 1674
    if-le v1, v8, :cond_3

    move v2, p2

    .line 1682
    .end local v3    # "maxInCount":I
    .end local v4    # "maxOutCount":I
    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    :goto_2
    const/16 v5, 0x800

    if-ge v1, v5, :cond_4

    .line 1683
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1684
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v1, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    move p2, v2

    .end local v2    # "inputPtr":I
    .restart local p2    # "inputPtr":I
    :goto_3
    move v2, p2

    .line 1710
    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    goto :goto_0

    .line 1677
    .end local v2    # "inputPtr":I
    .restart local v3    # "maxInCount":I
    .restart local v4    # "maxOutCount":I
    .restart local p2    # "inputPtr":I
    :cond_3
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    int-to-byte v7, v1

    aput-byte v7, v5, v6

    move v2, p2

    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    goto :goto_1

    .line 1687
    .end local v3    # "maxInCount":I
    .end local v4    # "maxOutCount":I
    :cond_4
    const v5, 0xd800

    if-lt v1, v5, :cond_5

    const v5, 0xdfff

    if-le v1, v5, :cond_6

    .line 1688
    :cond_5
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1689
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1690
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v1, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    goto/16 :goto_0

    .line 1694
    :cond_6
    const v5, 0xdbff

    if-le v1, v5, :cond_7

    .line 1695
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1698
    :cond_7
    if-lt v2, p3, :cond_8

    .line 1699
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1701
    :cond_8
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inputPtr":I
    .restart local p2    # "inputPtr":I
    aget-char v5, p1, v2

    invoke-direct {p0, v1, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_convertSurrogate(II)I

    move-result v1

    .line 1702
    const v5, 0x10ffff

    if-le v1, v5, :cond_9

    .line 1703
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1705
    :cond_9
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1706
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1707
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1708
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v1, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    goto/16 :goto_3

    .line 1711
    .end local v1    # "c":I
    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    :cond_a
    return-void

    .end local v2    # "inputPtr":I
    .restart local v1    # "c":I
    .restart local p2    # "inputPtr":I
    :cond_b
    move v2, p2

    .end local p2    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    goto/16 :goto_2
.end method

.method private _readMore(Ljava/io/InputStream;[BIII)I
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "readBuffer"    # [B
    .param p3, "inputPtr"    # I
    .param p4, "inputEnd"    # I
    .param p5, "maxRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2078
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    move v4, p3

    .line 2079
    .end local p3    # "inputPtr":I
    .local v4, "inputPtr":I
    :goto_0
    if-ge v4, p4, :cond_0

    .line 2080
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int/lit8 p3, v4, 0x1

    .end local v4    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    aget-byte v6, p2, v4

    aput-byte v6, p2, v2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v4, p3

    .end local p3    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    goto :goto_0

    .line 2082
    :cond_0
    const/4 p3, 0x0

    .line 2083
    .end local v4    # "inputPtr":I
    .restart local p3    # "inputPtr":I
    move p4, v2

    .line 2085
    array-length v6, p2

    invoke-static {p5, v6}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 2091
    :cond_1
    sub-int v5, p5, p4

    .line 2092
    .local v5, "length":I
    if-nez v5, :cond_2

    :goto_1
    move v3, p4

    .line 2101
    .end local p4    # "inputEnd":I
    .local v3, "inputEnd":I
    :goto_2
    return v3

    .line 2095
    .end local v3    # "inputEnd":I
    .restart local p4    # "inputEnd":I
    :cond_2
    invoke-virtual {p1, p2, p4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 2096
    .local v0, "count":I
    if-gez v0, :cond_3

    move v3, p4

    .line 2097
    .end local p4    # "inputEnd":I
    .restart local v3    # "inputEnd":I
    goto :goto_2

    .line 2099
    .end local v3    # "inputEnd":I
    .restart local p4    # "inputEnd":I
    :cond_3
    add-int/2addr p4, v0

    .line 2100
    const/4 v6, 0x7

    if-lt p4, v6, :cond_1

    goto :goto_1
.end method

.method private final _shortUTF8Encode([CII)I
    .locals 6
    .param p1, "str"    # [C
    .param p2, "i"    # I
    .param p3, "end"    # I

    .prologue
    .line 1509
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 1510
    .local v3, "ptr":I
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    .line 1512
    .local v2, "outBuf":[B
    :goto_0
    aget-char v0, p1, p2

    .line 1513
    .local v0, "c":I
    const/16 v5, 0x7f

    if-le v0, v5, :cond_0

    .line 1514
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_shortUTF8Encode2([CIII)I

    move-result v1

    .line 1520
    :goto_1
    return v1

    .line 1516
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ptr":I
    .local v4, "ptr":I
    int-to-byte v5, v0

    aput-byte v5, v2, v3

    .line 1517
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_1

    .line 1518
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    sub-int v1, v4, v5

    .line 1519
    .local v1, "codedLen":I
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    move v3, v4

    .line 1520
    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_1

    .end local v1    # "codedLen":I
    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_1
    move v3, v4

    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_0
.end method

.method private final _shortUTF8Encode2([CIII)I
    .locals 6
    .param p1, "str"    # [C
    .param p2, "i"    # I
    .param p3, "end"    # I
    .param p4, "outputPtr"    # I

    .prologue
    .line 1530
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    .local v3, "outBuf":[B
    move v4, p4

    .end local p4    # "outputPtr":I
    .local v4, "outputPtr":I
    move v2, p2

    .line 1531
    .end local p2    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_7

    .line 1532
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "i":I
    .restart local p2    # "i":I
    aget-char v0, p1, v2

    .line 1533
    .local v0, "c":I
    const/16 v5, 0x7f

    if-gt v0, v5, :cond_0

    .line 1534
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    int-to-byte v5, v0

    aput-byte v5, v3, v4

    move v4, p4

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    move v2, p2

    .line 1535
    .end local p2    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1538
    .end local v2    # "i":I
    .restart local p2    # "i":I
    :cond_0
    const/16 v5, 0x800

    if-ge v0, v5, :cond_1

    .line 1539
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1540
    add-int/lit8 v4, p4, 0x1

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    move v2, p2

    .line 1541
    .end local p2    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1545
    .end local v2    # "i":I
    .restart local p2    # "i":I
    :cond_1
    const v5, 0xd800

    if-lt v0, v5, :cond_2

    const v5, 0xdfff

    if-le v0, v5, :cond_3

    .line 1546
    :cond_2
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1547
    add-int/lit8 v4, p4, 0x1

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    .line 1548
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move v4, p4

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    move v2, p2

    .line 1549
    .end local p2    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1552
    .end local v2    # "i":I
    .restart local p2    # "i":I
    :cond_3
    const v5, 0xdbff

    if-le v0, v5, :cond_4

    .line 1553
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1556
    :cond_4
    if-lt p2, p3, :cond_5

    .line 1557
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1559
    :cond_5
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "i":I
    .restart local v2    # "i":I
    aget-char v5, p1, p2

    invoke-direct {p0, v0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_convertSurrogate(II)I

    move-result v0

    .line 1560
    const v5, 0x10ffff

    if-le v0, v5, :cond_6

    .line 1561
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1563
    :cond_6
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1564
    add-int/lit8 v4, p4, 0x1

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    .line 1565
    add-int/lit8 p4, v4, 0x1

    .end local v4    # "outputPtr":I
    .restart local p4    # "outputPtr":I
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1566
    add-int/lit8 v4, p4, 0x1

    .end local p4    # "outputPtr":I
    .restart local v4    # "outputPtr":I
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, p4

    goto/16 :goto_0

    .line 1568
    .end local v0    # "c":I
    :cond_7
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    sub-int v1, v4, v5

    .line 1569
    .local v1, "codedLen":I
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 1570
    return v1
.end method

.method private _slowUTF8Encode(Ljava/lang/String;)V
    .locals 11
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x7f

    .line 1575
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1576
    .local v4, "len":I
    const/4 v2, 0x0

    .line 1577
    .local v2, "inputPtr":I
    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    add-int/lit8 v0, v7, -0x4

    .local v0, "bufferEnd":I
    move v3, v2

    .line 1580
    .end local v2    # "inputPtr":I
    .local v3, "inputPtr":I
    :cond_0
    :goto_0
    if-ge v3, v4, :cond_a

    .line 1584
    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    if-lt v7, v0, :cond_1

    .line 1585
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1587
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1589
    .local v1, "c":I
    if-gt v1, v10, :cond_b

    .line 1590
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    int-to-byte v9, v1

    aput-byte v9, v7, v8

    .line 1592
    sub-int v5, v4, v2

    .line 1593
    .local v5, "maxInCount":I
    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    sub-int v6, v0, v7

    .line 1595
    .local v6, "maxOutCount":I
    if-le v5, v6, :cond_2

    .line 1596
    move v5, v6

    .line 1598
    :cond_2
    add-int/2addr v5, v2

    move v3, v2

    .line 1601
    .end local v2    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 1604
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1605
    if-le v1, v10, :cond_3

    move v3, v2

    .line 1613
    .end local v2    # "inputPtr":I
    .end local v5    # "maxInCount":I
    .end local v6    # "maxOutCount":I
    .restart local v3    # "inputPtr":I
    :goto_2
    const/16 v7, 0x800

    if-ge v1, v7, :cond_4

    .line 1614
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1615
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    move v2, v3

    .end local v3    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    :goto_3
    move v3, v2

    .line 1641
    .end local v2    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_0

    .line 1608
    .end local v3    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    .restart local v5    # "maxInCount":I
    .restart local v6    # "maxOutCount":I
    :cond_3
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    int-to-byte v9, v1

    aput-byte v9, v7, v8

    move v3, v2

    .end local v2    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto :goto_1

    .line 1618
    .end local v5    # "maxInCount":I
    .end local v6    # "maxOutCount":I
    :cond_4
    const v7, 0xd800

    if-lt v1, v7, :cond_5

    const v7, 0xdfff

    if-le v1, v7, :cond_6

    .line 1619
    :cond_5
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1620
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1621
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    goto/16 :goto_0

    .line 1625
    :cond_6
    const v7, 0xdbff

    if-le v1, v7, :cond_7

    .line 1626
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1629
    :cond_7
    if-lt v3, v4, :cond_8

    .line 1630
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1632
    :cond_8
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local v2    # "inputPtr":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v1, v7}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_convertSurrogate(II)I

    move-result v1

    .line 1633
    const v7, 0x10ffff

    if-le v1, v7, :cond_9

    .line 1634
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_throwIllegalSurrogate(I)V

    .line 1636
    :cond_9
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1637
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1638
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1639
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    goto/16 :goto_3

    .line 1642
    .end local v1    # "c":I
    .end local v2    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    :cond_a
    return-void

    .end local v3    # "inputPtr":I
    .restart local v1    # "c":I
    .restart local v2    # "inputPtr":I
    :cond_b
    move v3, v2

    .end local v2    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto/16 :goto_2
.end method

.method protected static final _smileBufferRecycler()Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler",
            "<",
            "Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 387
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler<Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;>;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 389
    .local v0, "br":Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;, "Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler<Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    .end local v0    # "br":Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;, "Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler<Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;>;"
    invoke-direct {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;-><init>()V

    .line 391
    .restart local v0    # "br":Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;, "Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler<Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;>;"
    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 393
    :cond_0
    return-object v0

    .line 387
    .end local v0    # "br":Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;, "Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler<Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    move-object v0, v2

    goto :goto_0
.end method

.method private _throwIllegalSurrogate(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 1727
    const v0, 0x10ffff

    if-le p1, v0, :cond_0

    .line 1728
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1730
    :cond_0
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    .line 1731
    const v0, 0xdbff

    if-gt p1, v0, :cond_1

    .line 1732
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched first part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1734
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched second part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1737
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final _writeByte(B)V
    .locals 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1755
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1756
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1758
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1759
    return-void
.end method

.method private final _writeBytes(Ljava/io/InputStream;I)I
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "bytesLeft"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1832
    :goto_0
    if-lez p2, :cond_1

    .line 1833
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    sub-int v1, v2, v3

    .line 1834
    .local v1, "room":I
    if-gez v1, :cond_0

    .line 1835
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1836
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    sub-int v1, v2, v3

    .line 1838
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1839
    .local v0, "count":I
    if-gez v0, :cond_2

    .line 1845
    .end local v0    # "count":I
    .end local v1    # "room":I
    :cond_1
    return p2

    .line 1842
    .restart local v0    # "count":I
    .restart local v1    # "room":I
    :cond_2
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 1843
    sub-int/2addr p2, v0

    .line 1844
    goto :goto_0
.end method

.method private final _writeBytes(BB)V
    .locals 3
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1763
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1764
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1766
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1767
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1768
    return-void
.end method

.method private final _writeBytes(BBB)V
    .locals 3
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1772
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1773
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1775
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1776
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1777
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, v1

    .line 1778
    return-void
.end method

.method private final _writeBytes(BBBB)V
    .locals 3
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B
    .param p4, "b4"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1782
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1783
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1785
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1786
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1787
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, v1

    .line 1788
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p4, v0, v1

    .line 1789
    return-void
.end method

.method private final _writeBytes(BBBBB)V
    .locals 3
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B
    .param p4, "b4"    # B
    .param p5, "b5"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1793
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1794
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1796
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1797
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1798
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, v1

    .line 1799
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p4, v0, v1

    .line 1800
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p5, v0, v1

    .line 1801
    return-void
.end method

.method private final _writeBytes(BBBBBB)V
    .locals 3
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B
    .param p4, "b4"    # B
    .param p5, "b5"    # B
    .param p6, "b6"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1805
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 1806
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1808
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p1, v0, v1

    .line 1809
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p2, v0, v1

    .line 1810
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p3, v0, v1

    .line 1811
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p4, v0, v1

    .line 1812
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p5, v0, v1

    .line 1813
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte p6, v0, v1

    .line 1814
    return-void
.end method

.method private final _writeBytes([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1818
    if-nez p3, :cond_0

    .line 1828
    :goto_0
    return-void

    .line 1821
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 1822
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytesLong([BII)V

    goto :goto_0

    .line 1826
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1827
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    goto :goto_0
.end method

.method private final _writeBytesLong([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1850
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_0

    .line 1851
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1854
    :cond_0
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1855
    .local v0, "currLen":I
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1856
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 1857
    sub-int/2addr p3, v0

    if-nez p3, :cond_1

    .line 1863
    return-void

    .line 1860
    :cond_1
    add-int/2addr p2, v0

    .line 1861
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    goto :goto_0
.end method

.method private final _writeFieldName(Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x38

    const/4 v8, -0x4

    const/4 v7, 0x0

    .line 580
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 581
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 582
    const/16 v5, 0x20

    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v5, :cond_2

    .line 587
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_findSeenName(Ljava/lang/String;)I

    move-result v1

    .line 588
    .local v1, "ix":I
    if-ltz v1, :cond_2

    .line 589
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeSharedNameReference(I)V

    goto :goto_0

    .line 593
    .end local v1    # "ix":I
    :cond_2
    if-le v2, v9, :cond_3

    .line 594
    invoke-direct {p0, p1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeNonShortFieldName(Ljava/lang/String;I)V

    goto :goto_0

    .line 599
    :cond_3
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v5, v5, 0xc4

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v5, v6, :cond_4

    .line 600
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 603
    :cond_4
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBuffer:[C

    invoke-virtual {p1, v7, v2, v5, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 604
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 605
    .local v3, "origOffset":I
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 606
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v5, v7, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 610
    .local v0, "byteLen":I
    if-ne v0, v2, :cond_6

    .line 611
    const/16 v5, 0x40

    if-gt v0, v5, :cond_5

    .line 612
    add-int/lit8 v5, v0, 0x7f

    int-to-byte v4, v5

    .line 629
    .local v4, "typeToken":B
    :goto_1
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    aput-byte v4, v5, v3

    .line 631
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v5, :cond_0

    .line 632
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    goto :goto_0

    .line 614
    .end local v4    # "typeToken":B
    :cond_5
    const/16 v4, 0x34

    .line 616
    .restart local v4    # "typeToken":B
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v8, v5, v6

    goto :goto_1

    .line 619
    .end local v4    # "typeToken":B
    :cond_6
    if-gt v0, v9, :cond_7

    .line 621
    add-int/lit16 v5, v0, 0xbe

    int-to-byte v4, v5

    .restart local v4    # "typeToken":B
    goto :goto_1

    .line 623
    .end local v4    # "typeToken":B
    :cond_7
    const/16 v4, 0x34

    .line 625
    .restart local v4    # "typeToken":B
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v8, v5, v6

    goto :goto_1
.end method

.method private final _writeLongAsciiFieldName([B)V
    .locals 5
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 708
    array-length v0, p1

    .line 709
    .local v0, "byteLen":I
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    const/16 v3, 0x34

    aput-byte v3, v1, v2

    .line 714
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-ge v1, v2, :cond_1

    .line 715
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 716
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 732
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    const/4 v3, -0x4

    aput-byte v3, v1, v2

    .line 733
    return-void

    .line 718
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 721
    const/16 v1, 0x302

    if-ge v0, v1, :cond_2

    .line 722
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 723
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    goto :goto_0

    .line 726
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    if-lez v1, :cond_3

    .line 727
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 729
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private final _writeNonSharedString(Ljava/lang/String;I)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x4

    const/16 v6, -0x1c

    const/4 v5, 0x0

    .line 886
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBufferLength:I

    if-le p2, v3, :cond_0

    .line 887
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 888
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_slowUTF8Encode(Ljava/lang/String;)V

    .line 889
    invoke-direct {p0, v7}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 916
    :goto_0
    return-void

    .line 892
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBuffer:[C

    invoke-virtual {p1, v5, p2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 894
    add-int v3, p2, p2

    add-int/2addr v3, p2

    add-int/lit8 v1, v3, 0x2

    .line 896
    .local v1, "maxLen":I
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    array-length v3, v3

    if-le v1, v3, :cond_1

    .line 898
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 899
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v3, v5, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_mediumUTF8Encode([CII)V

    .line 900
    invoke-direct {p0, v7}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0

    .line 904
    :cond_1
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v3, v4, :cond_2

    .line 905
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 907
    :cond_2
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 909
    .local v2, "origOffset":I
    const/16 v3, -0x20

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 910
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v3, v5, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 912
    .local v0, "byteLen":I
    if-le v0, p2, :cond_3

    .line 913
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    aput-byte v6, v3, v2

    .line 915
    :cond_3
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v7, v3, v4

    goto :goto_0
.end method

.method private final _writeNonShortFieldName(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 639
    const/16 v1, 0x34

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 641
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBufferLength:I

    if-le p2, v1, :cond_2

    .line 642
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_slowUTF8Encode(Ljava/lang/String;)V

    .line 656
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v1, :cond_0

    .line 657
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    .line 659
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_1

    .line 660
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 662
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    const/4 v3, -0x4

    aput-byte v3, v1, v2

    .line 663
    return-void

    .line 644
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBuffer:[C

    invoke-virtual {p1, v3, p2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 646
    add-int v1, p2, p2

    add-int v0, v1, p2

    .line 647
    .local v0, "maxLen":I
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_4

    .line 648
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_3

    .line 649
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 651
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v1, v3, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    goto :goto_0

    .line 653
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v1, v3, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_mediumUTF8Encode([CII)V

    goto :goto_0
.end method

.method private _writePositiveVInt(I)V
    .locals 7
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x7f

    .line 1872
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_ensureRoomForOutput(I)V

    .line 1873
    and-int/lit8 v4, p1, 0x3f

    add-int/lit16 v4, v4, 0x80

    int-to-byte v0, v4

    .line 1874
    .local v0, "b0":B
    shr-int/lit8 p1, p1, 0x6

    .line 1875
    if-gt p1, v5, :cond_1

    .line 1876
    if-lez p1, :cond_0

    .line 1877
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 1879
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v0, v4, v5

    .line 1905
    :goto_0
    return-void

    .line 1882
    :cond_1
    and-int/lit8 v4, p1, 0x7f

    int-to-byte v1, v4

    .line 1883
    .local v1, "b1":B
    shr-int/lit8 p1, p1, 0x7

    .line 1884
    if-gt p1, v5, :cond_2

    .line 1885
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 1886
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v1, v4, v5

    .line 1887
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v0, v4, v5

    goto :goto_0

    .line 1889
    :cond_2
    and-int/lit8 v4, p1, 0x7f

    int-to-byte v2, v4

    .line 1890
    .local v2, "b2":B
    shr-int/lit8 p1, p1, 0x7

    .line 1891
    if-gt p1, v5, :cond_3

    .line 1892
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 1893
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v2, v4, v5

    .line 1894
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v1, v4, v5

    .line 1895
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v0, v4, v5

    goto :goto_0

    .line 1897
    :cond_3
    and-int/lit8 v4, p1, 0x7f

    int-to-byte v3, v4

    .line 1898
    .local v3, "b3":B
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v6, p1, 0x7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1899
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v3, v4, v5

    .line 1900
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v2, v4, v5

    .line 1901
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v1, v4, v5

    .line 1902
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v0, v4, v5

    goto/16 :goto_0
.end method

.method private final _writeSharedNameReference(I)V
    .locals 3
    .param p1, "ix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 790
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    if-lt p1, v0, :cond_0

    .line 791
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: trying to write shared name with index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; but have only seen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so far!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_0
    const/16 v0, 0x40

    if-ge p1, v0, :cond_1

    .line 795
    add-int/lit8 v0, p1, 0x40

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 799
    :goto_0
    return-void

    .line 797
    :cond_1
    shr-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    int-to-byte v1, p1

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BB)V

    goto :goto_0
.end method

.method private final _writeSharedStringValueReference(I)V
    .locals 3
    .param p1, "ix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 867
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    if-lt p1, v0, :cond_0

    .line 868
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: trying to write shared String value with index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; but have only seen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so far!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_0
    const/16 v0, 0x1f

    if-ge p1, v0, :cond_1

    .line 872
    add-int/lit8 v0, p1, 0x1

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 876
    :goto_0
    return-void

    .line 874
    :cond_1
    shr-int/lit8 v0, p1, 0x8

    add-int/lit16 v0, v0, 0xec

    int-to-byte v0, v0

    int-to-byte v1, p1

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BB)V

    goto :goto_0
.end method

.method private _writeSignedVInt(I)V
    .locals 1
    .param p1, "input"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1915
    invoke-static {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagEncode(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writePositiveVInt(I)V

    .line 1916
    return-void
.end method


# virtual methods
.method protected final _flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2156
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    if-lez v0, :cond_0

    .line 2157
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_bytesWritten:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_bytesWritten:I

    .line 2158
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2159
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 2161
    :cond_0
    return-void
.end method

.method protected _notSupported()Ljava/lang/UnsupportedOperationException;
    .locals 1

    .prologue
    .line 2296
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    return-object v0
.end method

.method protected _releaseBuffers()V
    .locals 7

    .prologue
    const/16 v6, 0x40

    const/4 v5, 0x0

    .line 2113
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    .line 2114
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_bufferRecyclable:Z

    if-eqz v4, :cond_0

    .line 2115
    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    .line 2116
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseWriteEncodingBuffer([B)V

    .line 2118
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBuffer:[C

    .line 2119
    .local v1, "cbuf":[C
    if-eqz v1, :cond_1

    .line 2120
    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBuffer:[C

    .line 2121
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseConcatBuffer([C)V

    .line 2127
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2128
    .local v2, "nameBuf":[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;
    if-eqz v2, :cond_3

    array-length v4, v2

    if-ne v4, v6, :cond_3

    .line 2129
    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNames:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2133
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    if-lez v4, :cond_2

    .line 2134
    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2136
    :cond_2
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->releaseSeenNamesBuffer([Ljava/lang/Object;)V

    .line 2140
    :cond_3
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2141
    .local v3, "valueBuf":[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;
    if-eqz v3, :cond_5

    array-length v4, v3

    if-ne v4, v6, :cond_5

    .line 2142
    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValues:[Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$SharedStringNode;

    .line 2146
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    if-lez v4, :cond_4

    .line 2147
    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2149
    :cond_4
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->releaseSeenStringValuesBuffer([Ljava/lang/Object;)V

    .line 2152
    :cond_5
    return-void
.end method

.method protected final _verifyValueWrite(Ljava/lang/String;)V
    .locals 3
    .param p1, "typeMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1437
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeValue()I

    move-result v0

    .line 1438
    .local v0, "status":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 1441
    :cond_0
    return-void
.end method

.method protected _write7BitBinaryWithLength(Ljava/io/InputStream;I[B)I
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "bytesLeft"    # I
    .param p3, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x7

    .line 1988
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writePositiveVInt(I)V

    .line 1989
    const/4 v3, 0x0

    .line 1990
    .local v3, "inputPtr":I
    const/4 v4, 0x0

    .line 1991
    .local v4, "inputEnd":I
    const/4 v8, -0x7

    .line 1994
    .local v8, "lastFullOffset":I
    :goto_0
    if-lt p2, v9, :cond_0

    .line 1995
    if-le v3, v8, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v5, p2

    .line 1996
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_readMore(Ljava/io/InputStream;[BIII)I

    move-result v4

    .line 1997
    const/4 v3, 0x0

    .line 1998
    if-ge v4, v9, :cond_3

    .line 1999
    sub-int/2addr p2, v4

    .line 2026
    :cond_0
    if-lez p2, :cond_2

    .line 2028
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 2029
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v5, p2

    .line 2031
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_readMore(Ljava/io/InputStream;[BIII)I

    move-result v4

    .line 2032
    const/4 v3, 0x0

    .line 2033
    if-lez v4, :cond_2

    .line 2034
    sub-int/2addr p2, v4

    .line 2035
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "inputPtr":I
    .local v7, "inputPtr":I
    aget-byte v6, p3, v3

    .line 2036
    .local v6, "i":I
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v2, v6, 0x1

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2037
    const/4 v0, 0x1

    if-le v4, v0, :cond_a

    .line 2038
    and-int/lit8 v0, v6, 0x1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, v7, 0x1

    .end local v7    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v1, p3, v7

    and-int/lit16 v1, v1, 0xff

    or-int v6, v0, v1

    .line 2039
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v2, v6, 0x2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2040
    const/4 v0, 0x2

    if-le v4, v0, :cond_9

    .line 2041
    and-int/lit8 v0, v6, 0x3

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local v7    # "inputPtr":I
    aget-byte v1, p3, v3

    and-int/lit16 v1, v1, 0xff

    or-int v6, v0, v1

    .line 2042
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v2, v6, 0x3

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2043
    const/4 v0, 0x3

    if-le v4, v0, :cond_8

    .line 2044
    and-int/lit8 v0, v6, 0x7

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, v7, 0x1

    .end local v7    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v1, p3, v7

    and-int/lit16 v1, v1, 0xff

    or-int v6, v0, v1

    .line 2045
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v2, v6, 0x4

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2046
    const/4 v0, 0x4

    if-le v4, v0, :cond_7

    .line 2047
    and-int/lit8 v0, v6, 0xf

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local v7    # "inputPtr":I
    aget-byte v1, p3, v3

    and-int/lit16 v1, v1, 0xff

    or-int v6, v0, v1

    .line 2048
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v2, v6, 0x5

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2049
    const/4 v0, 0x5

    if-le v4, v0, :cond_6

    .line 2050
    and-int/lit8 v0, v6, 0x1f

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, v7, 0x1

    .end local v7    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v1, p3, v7

    and-int/lit16 v1, v1, 0xff

    or-int v6, v0, v1

    .line 2051
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v2, v6, 0x6

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2052
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v2, v6, 0x3f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2070
    .end local v6    # "i":I
    :cond_2
    :goto_1
    return p2

    .line 2002
    :cond_3
    add-int/lit8 v8, v4, -0x7

    .line 2004
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_5

    .line 2005
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 2007
    :cond_5
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local v7    # "inputPtr":I
    aget-byte v6, p3, v3

    .line 2008
    .restart local v6    # "i":I
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v2, v6, 0x1

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2009
    shl-int/lit8 v0, v6, 0x8

    add-int/lit8 v3, v7, 0x1

    .end local v7    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v1, p3, v7

    and-int/lit16 v1, v1, 0xff

    or-int v6, v0, v1

    .line 2010
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v2, v6, 0x2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2011
    shl-int/lit8 v0, v6, 0x8

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local v7    # "inputPtr":I
    aget-byte v1, p3, v3

    and-int/lit16 v1, v1, 0xff

    or-int v6, v0, v1

    .line 2012
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v2, v6, 0x3

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2013
    shl-int/lit8 v0, v6, 0x8

    add-int/lit8 v3, v7, 0x1

    .end local v7    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v1, p3, v7

    and-int/lit16 v1, v1, 0xff

    or-int v6, v0, v1

    .line 2014
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v2, v6, 0x4

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2015
    shl-int/lit8 v0, v6, 0x8

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local v7    # "inputPtr":I
    aget-byte v1, p3, v3

    and-int/lit16 v1, v1, 0xff

    or-int v6, v0, v1

    .line 2016
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v2, v6, 0x5

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2017
    shl-int/lit8 v0, v6, 0x8

    add-int/lit8 v3, v7, 0x1

    .end local v7    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    aget-byte v1, p3, v7

    and-int/lit16 v1, v1, 0xff

    or-int v6, v0, v1

    .line 2018
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v2, v6, 0x6

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2019
    shl-int/lit8 v0, v6, 0x8

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "inputPtr":I
    .restart local v7    # "inputPtr":I
    aget-byte v1, p3, v3

    and-int/lit16 v1, v1, 0xff

    or-int v6, v0, v1

    .line 2020
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v2, v6, 0x7

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2021
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v2, v6, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2022
    add-int/lit8 p2, p2, -0x7

    move v3, v7

    .line 2023
    .end local v7    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto/16 :goto_0

    .line 2054
    .end local v3    # "inputPtr":I
    .restart local v7    # "inputPtr":I
    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v2, v6, 0x1f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    move v3, v7

    .end local v7    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto/16 :goto_1

    .line 2057
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v2, v6, 0xf

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_1

    .line 2060
    .end local v3    # "inputPtr":I
    .restart local v7    # "inputPtr":I
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v2, v6, 0x7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    move v3, v7

    .end local v7    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto/16 :goto_1

    .line 2063
    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v2, v6, 0x3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_1

    .line 2066
    .end local v3    # "inputPtr":I
    .restart local v7    # "inputPtr":I
    :cond_a
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v2, v6, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    move v3, v7

    .end local v7    # "inputPtr":I
    .restart local v3    # "inputPtr":I
    goto/16 :goto_1
.end method

.method protected _write7BitBinaryWithLength([BII)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1920
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writePositiveVInt(I)V

    move v1, p2

    .line 1922
    .end local p2    # "offset":I
    .local v1, "offset":I
    :goto_0
    const/4 v2, 0x7

    if-lt p3, v2, :cond_1

    .line 1923
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x8

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 1924
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1926
    :cond_0
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v0, p1, v1

    .line 1927
    .local v0, "i":I
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x1

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1928
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1929
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1930
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1931
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1932
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1933
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1934
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1935
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x5

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1936
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1937
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1938
    shl-int/lit8 v2, v0, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1939
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x7

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1940
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1941
    add-int/lit8 p3, p3, -0x7

    move v1, p2

    .line 1942
    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    goto/16 :goto_0

    .line 1944
    .end local v0    # "i":I
    :cond_1
    if-lez p3, :cond_8

    .line 1946
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x7

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_2

    .line 1947
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1949
    :cond_2
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v0, p1, v1

    .line 1950
    .restart local v0    # "i":I
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x1

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1951
    const/4 v2, 0x1

    if-le p3, v2, :cond_7

    .line 1952
    and-int/lit8 v2, v0, 0x1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1953
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1954
    const/4 v2, 0x2

    if-le p3, v2, :cond_6

    .line 1955
    and-int/lit8 v2, v0, 0x3

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1956
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1957
    const/4 v2, 0x3

    if-le p3, v2, :cond_5

    .line 1958
    and-int/lit8 v2, v0, 0x7

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1959
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1960
    const/4 v2, 0x4

    if-le p3, v2, :cond_4

    .line 1961
    and-int/lit8 v2, v0, 0xf

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1962
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x5

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1963
    const/4 v2, 0x5

    if-le p3, v2, :cond_3

    .line 1964
    and-int/lit8 v2, v0, 0x1f

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 1965
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1966
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x3f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move p2, v1

    .line 1983
    .end local v0    # "i":I
    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    :goto_1
    return-void

    .line 1968
    .restart local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x1f

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_1

    .line 1971
    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0xf

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move p2, v1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_1

    .line 1974
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x7

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_1

    .line 1977
    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    :cond_6
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move p2, v1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_1

    .line 1980
    :cond_7
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v4, v0, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_1

    .end local v0    # "i":I
    .end local p2    # "offset":I
    .restart local v1    # "offset":I
    :cond_8
    move p2, v1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_1
.end method

.method protected final _writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 7
    .param p1, "name"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 668
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->charLength()I

    move-result v2

    .line 669
    .local v2, "charLen":I
    if-nez v2, :cond_1

    .line 670
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v4, :cond_2

    .line 675
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_findSeenName(Ljava/lang/String;)I

    move-result v3

    .line 676
    .local v3, "ix":I
    if-ltz v3, :cond_2

    .line 677
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeSharedNameReference(I)V

    goto :goto_0

    .line 681
    .end local v3    # "ix":I
    :cond_2
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asUnquotedUTF8()[B

    move-result-object v1

    .line 682
    .local v1, "bytes":[B
    array-length v0, v1

    .line 683
    .local v0, "byteLen":I
    if-eq v0, v2, :cond_3

    .line 684
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeFieldNameUnicode(Lcom/fasterxml/jackson/core/SerializableString;[B)V

    goto :goto_0

    .line 688
    :cond_3
    const/16 v4, 0x40

    if-gt v0, v4, :cond_5

    .line 690
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_4

    .line 691
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 693
    :cond_4
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v0, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 694
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    invoke-static {v1, v4, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 695
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 700
    :goto_1
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v4, :cond_0

    .line 701
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    goto :goto_0

    .line 697
    :cond_5
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeLongAsciiFieldName([B)V

    goto :goto_1
.end method

.method protected final _writeFieldNameUnicode(Lcom/fasterxml/jackson/core/SerializableString;[B)V
    .locals 5
    .param p1, "name"    # Lcom/fasterxml/jackson/core/SerializableString;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 738
    array-length v0, p2

    .line 741
    .local v0, "byteLen":I
    const/16 v1, 0x38

    if-gt v0, v1, :cond_2

    .line 742
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v3, v0, 0xbe

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 748
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    invoke-static {p2, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 749
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 751
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v1, :cond_1

    .line 752
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    .line 784
    :cond_1
    :goto_0
    return-void

    .line 756
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_3

    .line 757
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 759
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    const/16 v3, 0x34

    aput-byte v3, v1, v2

    .line 761
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-ge v1, v2, :cond_4

    .line 762
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    invoke-static {p2, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 763
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 779
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    const/4 v3, -0x4

    aput-byte v3, v1, v2

    .line 781
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenNameCount:I

    if-ltz v1, :cond_1

    .line 782
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_addSeenName(Ljava/lang/String;)V

    goto :goto_0

    .line 765
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 768
    const/16 v1, 0x302

    if-ge v0, v1, :cond_5

    .line 769
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    invoke-static {p2, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 770
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    goto :goto_1

    .line 773
    :cond_5
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    if-lez v1, :cond_6

    .line 774
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 776
    :cond_6
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v1, p2, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1465
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    if-eqz v2, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 1466
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1468
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->getOutputContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    .line 1469
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/JsonStreamContext;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1470
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeEndArray()V

    goto :goto_0

    .line 1471
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inObject()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1472
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeEndObject()V

    goto :goto_0

    .line 1478
    .end local v0    # "ctxt":Lcom/fasterxml/jackson/core/JsonStreamContext;
    :cond_1
    iget-boolean v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_closed:Z

    .line 1479
    .local v1, "wasClosed":Z
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->close()V

    .line 1481
    if-nez v1, :cond_2

    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->WRITE_END_MARKER:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->isEnabled(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1482
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1484
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1486
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1487
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1493
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_releaseBuffers()V

    .line 1494
    return-void

    .line 1490
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    goto :goto_1
.end method

.method public configure(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;Z)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;
    .locals 0
    .param p1, "f"    # Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 499
    if-eqz p2, :cond_0

    .line 500
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->enable(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    .line 504
    :goto_0
    return-object p0

    .line 502
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->disable(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    goto :goto_0
.end method

.method public disable(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    .prologue
    .line 490
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileFeatures:I

    .line 491
    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    .prologue
    .line 485
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileFeatures:I

    .line 486
    return-object p0
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1453
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1456
    :cond_0
    return-void
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;)Z
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    .prologue
    .line 495
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected outputOffset()J
    .locals 2

    .prologue
    .line 2292
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_bytesWritten:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0
    .param p1, "pp"    # Lcom/fasterxml/jackson/core/PrettyPrinter;

    .prologue
    .line 429
    return-object p0
.end method

.method public useDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    .prologue
    .line 420
    return-object p0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .locals 1
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "data"    # Ljava/io/InputStream;
    .param p3, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1188
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeBinary(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public writeBinary(Ljava/io/InputStream;I)I
    .locals 4
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1159
    if-gez p2, :cond_0

    .line 1160
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Must pass actual length for Smile encoded data"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1162
    :cond_0
    const-string v2, "write Binary value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1164
    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->ENCODE_BINARY_AS_7BIT:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->isEnabled(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1165
    const/16 v2, -0x18

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1166
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/io/IOContext;->allocBase64Buffer()[B

    move-result-object v0

    .line 1168
    .local v0, "encodingBuffer":[B
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_write7BitBinaryWithLength(Ljava/io/InputStream;I[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1170
    .local v1, "missing":I
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    .line 1178
    .end local v0    # "encodingBuffer":[B
    :goto_0
    if-lez v1, :cond_1

    .line 1179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too few bytes available: missing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes (out of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 1181
    :cond_1
    return p2

    .line 1170
    .end local v1    # "missing":I
    .restart local v0    # "encodingBuffer":[B
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    throw v2

    .line 1173
    .end local v0    # "encodingBuffer":[B
    :cond_2
    const/4 v2, -0x3

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1174
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writePositiveVInt(I)V

    .line 1176
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(Ljava/io/InputStream;I)I

    move-result v1

    .restart local v1    # "missing":I
    goto :goto_0
.end method

.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 1
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1138
    if-nez p2, :cond_0

    .line 1139
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeNull()V

    .line 1152
    :goto_0
    return-void

    .line 1142
    :cond_0
    const-string v0, "write Binary value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1143
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->ENCODE_BINARY_AS_7BIT:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->isEnabled(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1144
    const/16 v0, -0x18

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1145
    invoke-virtual {p0, p2, p3, p4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_write7BitBinaryWithLength([BII)V

    goto :goto_0

    .line 1147
    :cond_1
    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1148
    invoke-direct {p0, p4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writePositiveVInt(I)V

    .line 1150
    invoke-direct {p0, p2, p3, p4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes([BII)V

    goto :goto_0
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1200
    const-string v0, "write boolean value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1201
    if-eqz p1, :cond_0

    .line 1202
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1206
    :goto_0
    return-void

    .line 1204
    :cond_0
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0
.end method

.method public writeBytes([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes([BII)V

    .line 533
    return-void
.end method

.method public final writeEndArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 555
    :cond_0
    const/4 v0, -0x7

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 556
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 557
    return-void
.end method

.method public final writeEndObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 570
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 574
    const/4 v0, -0x5

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 575
    return-void
.end method

.method public final writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 2
    .param p1, "name"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 462
    const-string v0, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 464
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    .line 465
    return-void
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 451
    const-string v0, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 453
    :cond_0
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeFieldName(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public writeHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "last":I
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileFeatures:I

    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->CHECK_SHARED_NAMES:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 373
    or-int/lit8 v0, v0, 0x1

    .line 375
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileFeatures:I

    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->CHECK_SHARED_STRING_VALUES:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 376
    or-int/lit8 v0, v0, 0x2

    .line 378
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_smileFeatures:I

    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->ENCODE_BINARY_AS_7BIT:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 379
    or-int/lit8 v0, v0, 0x4

    .line 381
    :cond_2
    const/16 v1, 0x3a

    const/16 v2, 0x29

    const/16 v3, 0xa

    int-to-byte v4, v0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBB)V

    .line 382
    return-void
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1211
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1212
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1213
    return-void
.end method

.method public writeNumber(D)V
    .locals 9
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1336
    const/16 v5, 0xb

    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_ensureRoomForOutput(I)V

    .line 1337
    const-string v5, "write number"

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1343
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 1344
    .local v2, "l":J
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    const/16 v7, 0x29

    aput-byte v7, v5, v6

    .line 1346
    const/16 v5, 0x23

    ushr-long v6, v2, v5

    long-to-int v0, v6

    .line 1347
    .local v0, "hi5":I
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x4

    and-int/lit8 v7, v0, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1348
    shr-int/lit8 v0, v0, 0x7

    .line 1349
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x3

    and-int/lit8 v7, v0, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1350
    shr-int/lit8 v0, v0, 0x7

    .line 1351
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x2

    and-int/lit8 v7, v0, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1352
    shr-int/lit8 v0, v0, 0x7

    .line 1353
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v7, v0, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1354
    shr-int/lit8 v0, v0, 0x7

    .line 1355
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    int-to-byte v7, v0

    aput-byte v7, v5, v6

    .line 1356
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v5, 0x5

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 1359
    const/16 v5, 0x1c

    shr-long v6, v2, v5

    long-to-int v4, v6

    .line 1360
    .local v4, "mid":I
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v4, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1363
    long-to-int v1, v2

    .line 1364
    .local v1, "lo4":I
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x3

    and-int/lit8 v7, v1, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1365
    shr-int/lit8 v1, v1, 0x7

    .line 1366
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x2

    and-int/lit8 v7, v1, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1367
    shr-int/lit8 v1, v1, 0x7

    .line 1368
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v7, v1, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1369
    shr-int/lit8 v1, v1, 0x7

    .line 1370
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v7, v1, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1371
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 1372
    return-void
.end method

.method public writeNumber(F)V
    .locals 4
    .param p1, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1378
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_ensureRoomForOutput(I)V

    .line 1379
    const-string v1, "write number"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1386
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 1387
    .local v0, "i":I
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    const/16 v3, 0x28

    aput-byte v3, v1, v2

    .line 1388
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x4

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1389
    shr-int/lit8 v0, v0, 0x7

    .line 1390
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x3

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1391
    shr-int/lit8 v0, v0, 0x7

    .line 1392
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x2

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1393
    shr-int/lit8 v0, v0, 0x7

    .line 1394
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1395
    shr-int/lit8 v0, v0, 0x7

    .line 1396
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1397
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 1398
    return-void
.end method

.method public writeNumber(I)V
    .locals 13
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x7f

    const/16 v1, 0x24

    .line 1218
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1220
    invoke-static {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagEncode(I)I

    move-result p1

    .line 1222
    const/16 v0, 0x3f

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 1223
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 1224
    add-int/lit16 v0, p1, 0xc0

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1253
    :goto_0
    return-void

    .line 1228
    :cond_0
    add-int/lit16 v0, p1, 0x80

    int-to-byte v0, v0

    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BB)V

    goto :goto_0

    .line 1232
    :cond_1
    and-int/lit8 v0, p1, 0x3f

    add-int/lit16 v0, v0, 0x80

    int-to-byte v5, v0

    .line 1233
    .local v5, "b0":B
    ushr-int/lit8 p1, p1, 0x6

    .line 1234
    if-gt p1, v2, :cond_2

    .line 1235
    int-to-byte v0, p1

    invoke-direct {p0, v1, v0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBB)V

    goto :goto_0

    .line 1238
    :cond_2
    and-int/lit8 v0, p1, 0x7f

    int-to-byte v4, v0

    .line 1239
    .local v4, "b1":B
    shr-int/lit8 p1, p1, 0x7

    .line 1240
    if-gt p1, v2, :cond_3

    .line 1241
    int-to-byte v0, p1

    invoke-direct {p0, v1, v0, v4, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBB)V

    goto :goto_0

    .line 1244
    :cond_3
    and-int/lit8 v0, p1, 0x7f

    int-to-byte v3, v0

    .line 1245
    .local v3, "b2":B
    shr-int/lit8 p1, p1, 0x7

    .line 1246
    if-gt p1, v2, :cond_4

    .line 1247
    int-to-byte v2, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBB)V

    goto :goto_0

    .line 1251
    :cond_4
    and-int/lit8 v0, p1, 0x7f

    int-to-byte v9, v0

    .line 1252
    .local v9, "b3":B
    shr-int/lit8 v0, p1, 0x7

    int-to-byte v8, v0

    move-object v6, p0

    move v7, v1

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0
.end method

.method public writeNumber(J)V
    .locals 17
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1259
    const-wide/32 v10, 0x7fffffff

    cmp-long v2, p1, v10

    if-gtz v2, :cond_0

    const-wide/32 v10, -0x80000000

    cmp-long v2, p1, v10

    if-ltz v2, :cond_0

    .line 1260
    move-wide/from16 v0, p1

    long-to-int v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeNumber(I)V

    .line 1316
    :goto_0
    return-void

    .line 1263
    :cond_0
    const-string v2, "write number"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1266
    invoke-static/range {p1 .. p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagEncode(J)J

    move-result-wide p1

    .line 1268
    move-wide/from16 v0, p1

    long-to-int v15, v0

    .line 1270
    .local v15, "i":I
    and-int/lit8 v2, v15, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v8, v2

    .line 1271
    .local v8, "b0":B
    shr-int/lit8 v2, v15, 0x6

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v7, v2

    .line 1272
    .local v7, "b1":B
    shr-int/lit8 v2, v15, 0xd

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v6, v2

    .line 1273
    .local v6, "b2":B
    shr-int/lit8 v2, v15, 0x14

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v5, v2

    .line 1275
    .local v5, "b3":B
    const/16 v2, 0x1b

    ushr-long p1, p1, v2

    .line 1276
    move-wide/from16 v0, p1

    long-to-int v2, v0

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v4, v2

    .line 1279
    .local v4, "b4":B
    const/4 v2, 0x7

    shr-long v10, p1, v2

    long-to-int v15, v10

    .line 1280
    if-nez v15, :cond_1

    .line 1281
    const/16 v3, 0x25

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0

    .line 1285
    :cond_1
    const/16 v2, 0x7f

    if-gt v15, v2, :cond_2

    .line 1286
    const/16 v2, 0x25

    int-to-byte v9, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BB)V

    move-object/from16 v3, p0

    .line 1287
    invoke-direct/range {v3 .. v8}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBB)V

    goto :goto_0

    .line 1290
    :cond_2
    and-int/lit8 v2, v15, 0x7f

    int-to-byte v3, v2

    .line 1291
    .local v3, "b5":B
    shr-int/lit8 v15, v15, 0x7

    .line 1292
    const/16 v2, 0x7f

    if-gt v15, v2, :cond_3

    .line 1293
    const/16 v2, 0x25

    int-to-byte v9, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BB)V

    move-object/from16 v2, p0

    .line 1294
    invoke-direct/range {v2 .. v8}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0

    .line 1297
    :cond_3
    and-int/lit8 v2, v15, 0x7f

    int-to-byte v14, v2

    .line 1298
    .local v14, "b6":B
    shr-int/lit8 v15, v15, 0x7

    .line 1299
    const/16 v2, 0x7f

    if-gt v15, v2, :cond_4

    .line 1300
    const/16 v2, 0x25

    int-to-byte v9, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v14}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBB)V

    move-object/from16 v2, p0

    .line 1301
    invoke-direct/range {v2 .. v8}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto :goto_0

    .line 1304
    :cond_4
    and-int/lit8 v2, v15, 0x7f

    int-to-byte v13, v2

    .line 1305
    .local v13, "b7":B
    shr-int/lit8 v15, v15, 0x7

    .line 1306
    const/16 v2, 0x7f

    if-gt v15, v2, :cond_5

    .line 1307
    const/16 v2, 0x25

    int-to-byte v9, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v13, v14}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBB)V

    move-object/from16 v2, p0

    .line 1308
    invoke-direct/range {v2 .. v8}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto/16 :goto_0

    .line 1311
    :cond_5
    and-int/lit8 v2, v15, 0x7f

    int-to-byte v12, v2

    .line 1312
    .local v12, "b8":B
    shr-int/lit8 v15, v15, 0x7

    .line 1314
    const/16 v10, 0x25

    int-to-byte v11, v15

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBB)V

    move-object/from16 v2, p0

    .line 1315
    invoke-direct/range {v2 .. v8}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes(BBBBBB)V

    goto/16 :goto_0
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "encodedValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1424
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 5
    .param p1, "dec"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1403
    if-nez p1, :cond_0

    .line 1404
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeNull()V

    .line 1416
    :goto_0
    return-void

    .line 1407
    :cond_0
    const-string v3, "write number"

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1408
    const/16 v3, 0x2a

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1409
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    .line 1411
    .local v1, "scale":I
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeSignedVInt(I)V

    .line 1412
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    .line 1413
    .local v2, "unscaled":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1415
    .local v0, "data":[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_write7BitBinaryWithLength([BII)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "v"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1321
    if-nez p1, :cond_0

    .line 1322
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeNull()V

    .line 1330
    :goto_0
    return-void

    .line 1325
    :cond_0
    const-string v1, "write number"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1327
    const/16 v1, 0x26

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1328
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1329
    .local v0, "data":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_write7BitBinaryWithLength([BII)V

    goto :goto_0
.end method

.method public writeRaw(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 521
    const/4 v0, -0x8

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 522
    return-void
.end method

.method public writeRaw(C)V
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1111
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1101
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRaw([CII)V
    .locals 1
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRawUTF8String([BII)V
    .locals 6
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x4

    const/16 v4, -0x1c

    .line 1031
    const-string v1, "write String value"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1033
    if-nez p3, :cond_0

    .line 1034
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1078
    :goto_0
    return-void

    .line 1038
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v1, :cond_1

    .line 1039
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Can not use direct UTF-8 write methods when \'Feature.CHECK_SHARED_STRING_VALUES\' enabled"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1045
    :cond_1
    const/16 v1, 0x41

    if-gt p3, v1, :cond_4

    .line 1047
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_2

    .line 1048
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1053
    :cond_2
    const/4 v1, 0x1

    if-ne p3, v1, :cond_3

    .line 1054
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    const/16 v3, 0x40

    aput-byte v3, v1, v2

    .line 1055
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aget-byte v3, p1, p2

    aput-byte v3, v1, v2

    goto :goto_0

    .line 1057
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, p3, 0x7e

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1058
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1059
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    goto :goto_0

    .line 1063
    :cond_4
    add-int v1, p3, p3

    add-int/2addr v1, p3

    add-int/lit8 v0, v1, 0x2

    .line 1064
    .local v0, "maxLen":I
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_6

    .line 1065
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v1, v2, :cond_5

    .line 1066
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1068
    :cond_5
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v4, v1, v2

    .line 1069
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1070
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 1071
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v5, v1, v2

    goto/16 :goto_0

    .line 1073
    :cond_6
    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1074
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes([BII)V

    .line 1075
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    goto/16 :goto_0
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1116
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1121
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public writeRawValue([CII)V
    .locals 1
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1126
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_notSupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final writeStartArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 544
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildArrayContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 546
    const/4 v0, -0x8

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 547
    return-void
.end method

.method public final writeStartObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 562
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildObjectContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 564
    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 565
    return-void
.end method

.method public final writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 10
    .param p1, "sstr"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 980
    const-string v6, "write String value"

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 982
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 983
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 984
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 985
    const/16 v6, 0x20

    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    const/16 v6, 0x41

    if-gt v2, v6, :cond_2

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v6, :cond_2

    .line 990
    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_findSeenStringValue(Ljava/lang/String;)I

    move-result v1

    .line 991
    .local v1, "ix":I
    if-ltz v1, :cond_2

    .line 992
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeSharedStringValueReference(I)V

    goto :goto_0

    .line 997
    .end local v1    # "ix":I
    :cond_2
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asUnquotedUTF8()[B

    move-result-object v3

    .line 998
    .local v3, "raw":[B
    array-length v0, v3

    .line 1000
    .local v0, "byteLen":I
    const/16 v6, 0x40

    if-gt v0, v6, :cond_5

    .line 1002
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v6, v7, :cond_3

    .line 1003
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 1006
    :cond_3
    if-ne v0, v2, :cond_4

    add-int/lit8 v5, v0, 0x3f

    .line 1010
    .local v5, "typeToken":I
    :goto_1
    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    int-to-byte v8, v5

    aput-byte v8, v6, v7

    .line 1011
    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    invoke-static {v3, v9, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1012
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 1014
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v6, :cond_0

    .line 1015
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_addSeenStringValue(Ljava/lang/String;)V

    goto :goto_0

    .line 1006
    .end local v5    # "typeToken":I
    :cond_4
    add-int/lit8 v5, v0, 0x7e

    goto :goto_1

    .line 1019
    :cond_5
    if-ne v0, v2, :cond_6

    const/16 v5, -0x20

    .line 1021
    .local v5, "typeToken":B
    :goto_2
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 1022
    array-length v6, v3

    invoke-direct {p0, v3, v9, v6}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeBytes([BII)V

    .line 1023
    const/4 v6, -0x4

    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0

    .line 1019
    .end local v5    # "typeToken":B
    :cond_6
    const/16 v5, -0x1c

    goto :goto_2
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 810
    if-nez p1, :cond_0

    .line 811
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeNull()V

    .line 861
    :goto_0
    return-void

    .line 814
    :cond_0
    const-string v4, "write String value"

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 816
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 817
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0

    .line 821
    :cond_1
    const/16 v4, 0x41

    if-le v2, v4, :cond_2

    .line 822
    invoke-direct {p0, p1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeNonSharedString(Ljava/lang/String;I)V

    goto :goto_0

    .line 826
    :cond_2
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v4, :cond_3

    .line 827
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_findSeenStringValue(Ljava/lang/String;)I

    move-result v1

    .line 828
    .local v1, "ix":I
    if-ltz v1, :cond_3

    .line 829
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeSharedStringValueReference(I)V

    goto :goto_0

    .line 836
    .end local v1    # "ix":I
    :cond_3
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v4, v4, 0xc4

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_4

    .line 837
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 840
    :cond_4
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBuffer:[C

    invoke-virtual {p1, v6, v2, v4, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 841
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 842
    .local v3, "origOffset":I
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 843
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_charBuffer:[C

    invoke-direct {p0, v4, v6, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 844
    .local v0, "byteLen":I
    const/16 v4, 0x40

    if-gt v0, v4, :cond_7

    .line 846
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v4, :cond_5

    .line 847
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_addSeenStringValue(Ljava/lang/String;)V

    .line 849
    :cond_5
    if-ne v0, v2, :cond_6

    .line 850
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    add-int/lit8 v5, v0, 0x3f

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    goto :goto_0

    .line 853
    :cond_6
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    add-int/lit8 v5, v0, 0x7e

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    goto :goto_0

    .line 856
    :cond_7
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    if-ne v0, v2, :cond_8

    const/16 v4, -0x20

    :goto_1
    aput-byte v4, v5, v3

    .line 859
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    const/4 v6, -0x4

    aput-byte v6, v4, v5

    goto :goto_0

    .line 856
    :cond_8
    const/16 v4, -0x1c

    goto :goto_1
.end method

.method public writeString([CII)V
    .locals 9
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x40

    const/16 v6, -0x1c

    const/4 v7, -0x4

    .line 922
    const/16 v4, 0x41

    if-gt p3, v4, :cond_0

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_seenStringValueCount:I

    if-ltz v4, :cond_0

    if-lez p3, :cond_0

    .line 923
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeString(Ljava/lang/String;)V

    .line 974
    :goto_0
    return-void

    .line 926
    :cond_0
    const-string v4, "write String value"

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 927
    if-nez p3, :cond_1

    .line 928
    const/16 v4, 0x20

    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    goto :goto_0

    .line 931
    :cond_1
    if-gt p3, v8, :cond_5

    .line 933
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit16 v4, v4, 0xc4

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_2

    .line 934
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 936
    :cond_2
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 937
    .local v2, "origOffset":I
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 938
    add-int v4, p2, p3

    invoke-direct {p0, p1, p2, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 940
    .local v0, "byteLen":I
    if-gt v0, v8, :cond_4

    .line 941
    if-ne v0, p3, :cond_3

    .line 942
    add-int/lit8 v4, v0, 0x3f

    int-to-byte v3, v4

    .line 952
    .local v3, "typeToken":B
    :goto_1
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    aput-byte v3, v4, v2

    goto :goto_0

    .line 944
    .end local v3    # "typeToken":B
    :cond_3
    add-int/lit8 v4, v0, 0x7e

    int-to-byte v3, v4

    .restart local v3    # "typeToken":B
    goto :goto_1

    .line 947
    .end local v3    # "typeToken":B
    :cond_4
    const/16 v3, -0x1c

    .line 949
    .restart local v3    # "typeToken":B
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v7, v4, v5

    goto :goto_1

    .line 955
    .end local v0    # "byteLen":I
    .end local v2    # "origOffset":I
    .end local v3    # "typeToken":B
    :cond_5
    add-int v4, p3, p3

    add-int/2addr v4, p3

    add-int/lit8 v1, v4, 0x2

    .line 956
    .local v1, "maxLen":I
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    array-length v4, v4

    if-gt v1, v4, :cond_8

    .line 957
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputEnd:I

    if-lt v4, v5, :cond_6

    .line 958
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_flushBuffer()V

    .line 960
    :cond_6
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    .line 961
    .restart local v2    # "origOffset":I
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 962
    add-int v4, p2, p3

    invoke-direct {p0, p1, p2, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_shortUTF8Encode([CII)I

    move-result v0

    .line 964
    .restart local v0    # "byteLen":I
    if-ne v0, p3, :cond_7

    .line 965
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    const/16 v5, -0x20

    aput-byte v5, v4, v2

    .line 967
    :cond_7
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_outputTail:I

    aput-byte v7, v4, v5

    goto :goto_0

    .line 969
    .end local v0    # "byteLen":I
    .end local v2    # "origOffset":I
    :cond_8
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    .line 970
    add-int v4, p2, p3

    invoke-direct {p0, p1, p2, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_mediumUTF8Encode([CII)V

    .line 971
    invoke-direct {p0, v7}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeByte(B)V

    goto/16 :goto_0
.end method

.method public final writeStringField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 472
    const-string v0, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_reportError(Ljava/lang/String;)V

    .line 474
    :cond_0
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->_writeFieldName(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeString(Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public final writeUTF8String([BII)V
    .locals 0
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1085
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeRawUTF8String([BII)V

    .line 1086
    return-void
.end method
