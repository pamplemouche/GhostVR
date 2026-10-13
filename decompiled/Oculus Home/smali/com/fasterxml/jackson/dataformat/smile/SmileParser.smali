.class public Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
.super Lcom/fasterxml/jackson/core/base/ParserBase;
.source "SmileParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;
    }
.end annotation


# static fields
.field private static final NO_INTS:[I

.field private static final NO_STRINGS:[Ljava/lang/String;

.field protected static final _smileRecyclerRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _bufferRecyclable:Z

.field protected _got32BitFloat:Z

.field protected _inputBuffer:[B

.field protected _inputStream:Ljava/io/InputStream;

.field protected _mayContainRawBinary:Z

.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

.field protected _quad1:I

.field protected _quad2:I

.field protected _quadBuffer:[I

.field protected _seenNameCount:I

.field protected _seenNames:[Ljava/lang/String;

.field protected _seenStringValueCount:I

.field protected _seenStringValues:[Ljava/lang/String;

.field protected final _smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

.field protected _tokenIncomplete:Z

.field protected _typeByte:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    new-array v0, v1, [I

    sput-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->NO_INTS:[I

    .line 64
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->NO_STRINGS:[Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;IILcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;Ljava/io/InputStream;[BIIZ)V
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "parserFeatures"    # I
    .param p3, "smileFeatures"    # I
    .param p4, "codec"    # Lcom/fasterxml/jackson/core/ObjectCodec;
    .param p5, "sym"    # Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    .param p6, "in"    # Ljava/io/InputStream;
    .param p7, "inputBuffer"    # [B
    .param p8, "start"    # I
    .param p9, "end"    # I
    .param p10, "bufferRecyclable"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;I)V

    .line 132
    iput-boolean v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 161
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->NO_INTS:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    .line 173
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->NO_STRINGS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 175
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 184
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    .line 213
    iput-object p4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 214
    iput-object p5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 216
    iput-object p6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    .line 217
    iput-object p7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 218
    iput p8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 219
    iput p9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    .line 220
    iput-boolean p10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_bufferRecyclable:Z

    .line 222
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenInputRow:I

    .line 223
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenInputCol:I

    .line 224
    invoke-static {}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_smileBufferRecycler()Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    .line 225
    return-void
.end method

.method private final _addDecodedToSymbols(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "len"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1477
    const/4 v1, 0x5

    if-ge p1, v1, :cond_0

    .line 1478
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quad1:I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1484
    :goto_0
    return-object v1

    .line 1480
    :cond_0
    const/16 v1, 0x9

    if-ge p1, v1, :cond_1

    .line 1481
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quad1:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quad2:I

    invoke-virtual {v1, p2, v2, v3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1483
    :cond_1
    add-int/lit8 v1, p1, 0x3

    shr-int/lit8 v0, v1, 0x2

    .line 1484
    .local v0, "qlen":I
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    invoke-virtual {v1, p2, v2, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;[II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private final _addSeenStringValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishToken()V

    .line 714
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 716
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 720
    :goto_0
    return-void

    .line 719
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_expandSeenStringValues()V

    goto :goto_0
.end method

.method private final _decodeLongAscii()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2261
    const/4 v5, 0x0

    .line 2262
    .local v5, "outPtr":I
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 2265
    .local v4, "outBuf":[C
    :goto_0
    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v7, v8, :cond_0

    .line 2266
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2268
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 2269
    .local v1, "inPtr":I
    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    sub-int v3, v7, v1

    .line 2270
    .local v3, "left":I
    array-length v7, v4

    if-lt v5, v7, :cond_1

    .line 2271
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 2272
    const/4 v5, 0x0

    .line 2274
    :cond_1
    array-length v7, v4

    sub-int/2addr v7, v5

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2276
    :goto_1
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "inPtr":I
    .local v2, "inPtr":I
    aget-byte v0, v7, v1

    .line 2277
    .local v0, "b":B
    const/4 v7, -0x4

    if-ne v0, v7, :cond_2

    .line 2278
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 2285
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v7, v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2286
    return-void

    .line 2281
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outPtr":I
    .local v6, "outPtr":I
    int-to-char v7, v0

    aput-char v7, v4, v5

    .line 2282
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_3

    .line 2283
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    move v5, v6

    .line 2284
    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_0

    .end local v5    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_3
    move v1, v2

    .end local v2    # "inPtr":I
    .restart local v1    # "inPtr":I
    move v5, v6

    .end local v6    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_1
.end method

.method private final _decodeLongUnicode()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2291
    const/4 v6, 0x0

    .line 2292
    .local v6, "outPtr":I
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 2293
    .local v5, "outBuf":[C
    sget-object v1, Lcom/fasterxml/jackson/dataformat/smile/SmileConstants;->sUtf8UnitLengths:[I

    .line 2295
    .local v1, "codes":[I
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 2302
    .local v2, "inputBuffer":[B
    :goto_0
    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 2303
    .local v8, "ptr":I
    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v8, v10, :cond_0

    .line 2304
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2305
    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 2307
    :cond_0
    array-length v10, v5

    if-lt v6, v10, :cond_1

    .line 2308
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 2309
    const/4 v6, 0x0

    .line 2311
    :cond_1
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    .line 2313
    .local v3, "max":I
    array-length v10, v5

    sub-int/2addr v10, v6

    add-int v4, v8, v10

    .line 2314
    .local v4, "max2":I
    if-ge v4, v3, :cond_8

    .line 2315
    move v3, v4

    move v9, v8

    .end local v8    # "ptr":I
    .local v9, "ptr":I
    move v7, v6

    .line 2318
    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    :goto_1
    if-ge v9, v3, :cond_3

    .line 2319
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ptr":I
    .restart local v8    # "ptr":I
    aget-byte v10, v2, v9

    and-int/lit16 v0, v10, 0xff

    .line 2320
    .local v0, "c":I
    aget v10, v1, v0

    if-eqz v10, :cond_2

    .line 2321
    iput v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 2329
    const/16 v10, 0xfc

    if-ne v0, v10, :cond_4

    .line 2367
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v10, v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2368
    return-void

    .line 2324
    :cond_2
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    int-to-char v10, v0

    aput-char v10, v5, v7

    move v9, v8

    .end local v8    # "ptr":I
    .restart local v9    # "ptr":I
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto :goto_1

    .line 2326
    .end local v0    # "c":I
    :cond_3
    iput v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    move v6, v7

    .line 2327
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_0

    .line 2333
    .end local v6    # "outPtr":I
    .end local v9    # "ptr":I
    .restart local v0    # "c":I
    .restart local v7    # "outPtr":I
    .restart local v8    # "ptr":I
    :cond_4
    aget v10, v1, v0

    packed-switch v10, :pswitch_data_0

    .line 2357
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidChar(I)V

    move v6, v7

    .line 2360
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_2
    array-length v10, v5

    if-lt v6, v10, :cond_5

    .line 2361
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 2362
    const/4 v6, 0x0

    .line 2365
    :cond_5
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    int-to-char v10, v0

    aput-char v10, v5, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_0

    .line 2335
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeUtf8_2(I)I

    move-result v0

    move v6, v7

    .line 2336
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_2

    .line 2338
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :pswitch_1
    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    iget v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v10, v11

    const/4 v11, 0x2

    if-lt v10, v11, :cond_6

    .line 2339
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeUtf8_3fast(I)I

    move-result v0

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_2

    .line 2341
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_6
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeUtf8_3(I)I

    move-result v0

    move v6, v7

    .line 2343
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_2

    .line 2345
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeUtf8_4(I)I

    move-result v0

    .line 2347
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    const v10, 0xd800

    shr-int/lit8 v11, v0, 0xa

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v5, v7

    .line 2348
    array-length v10, v5

    if-lt v6, v10, :cond_7

    .line 2349
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 2350
    const/4 v6, 0x0

    .line 2352
    :cond_7
    const v10, 0xdc00

    and-int/lit16 v11, v0, 0x3ff

    or-int v0, v10, v11

    .line 2354
    goto :goto_2

    .end local v0    # "c":I
    :cond_8
    move v9, v8

    .end local v8    # "ptr":I
    .restart local v9    # "ptr":I
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto :goto_1

    .line 2333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final _decodeLongUnicodeName([III)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 14
    .param p1, "quads"    # [I
    .param p2, "byteLen"    # I
    .param p3, "quadLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1572
    and-int/lit8 v10, p2, 0x3

    .line 1581
    .local v10, "lastQuadBytes":I
    const/4 v12, 0x4

    if-ge v10, v12, :cond_7

    .line 1582
    add-int/lit8 v12, p3, -0x1

    aget v9, p1, v12

    .line 1584
    .local v9, "lastQuad":I
    add-int/lit8 v12, p3, -0x1

    rsub-int/lit8 v13, v10, 0x4

    shl-int/lit8 v13, v13, 0x3

    shl-int v13, v9, v13

    aput v13, p1, v12

    .line 1589
    :goto_0
    iget-object v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v3

    .line 1590
    .local v3, "cbuf":[C
    const/4 v6, 0x0

    .line 1592
    .local v6, "cix":I
    const/4 v8, 0x0

    .local v8, "ix":I
    move v7, v6

    .end local v6    # "cix":I
    .local v7, "cix":I
    :goto_1
    move/from16 v0, p2

    if-ge v8, v0, :cond_b

    .line 1593
    shr-int/lit8 v12, v8, 0x2

    aget v4, p1, v12

    .line 1594
    .local v4, "ch":I
    and-int/lit8 v2, v8, 0x3

    .line 1595
    .local v2, "byteIx":I
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int v12, v4, v12

    and-int/lit16 v4, v12, 0xff

    .line 1596
    add-int/lit8 v8, v8, 0x1

    .line 1598
    const/16 v12, 0x7f

    if-le v4, v12, :cond_d

    .line 1600
    and-int/lit16 v12, v4, 0xe0

    const/16 v13, 0xc0

    if-ne v12, v13, :cond_8

    .line 1601
    and-int/lit8 v4, v4, 0x1f

    .line 1602
    const/4 v11, 0x1

    .line 1613
    .local v11, "needed":I
    :goto_2
    add-int v12, v8, v11

    move/from16 v0, p2

    if-le v12, v0, :cond_0

    .line 1614
    const-string v12, " in long field name"

    invoke-virtual {p0, v12}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1618
    :cond_0
    shr-int/lit8 v12, v8, 0x2

    aget v5, p1, v12

    .line 1619
    .local v5, "ch2":I
    and-int/lit8 v2, v8, 0x3

    .line 1620
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v5, v12

    .line 1621
    add-int/lit8 v8, v8, 0x1

    .line 1623
    and-int/lit16 v12, v5, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_1

    .line 1624
    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(I)V

    .line 1626
    :cond_1
    shl-int/lit8 v12, v4, 0x6

    and-int/lit8 v13, v5, 0x3f

    or-int v4, v12, v13

    .line 1627
    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 1628
    shr-int/lit8 v12, v8, 0x2

    aget v5, p1, v12

    .line 1629
    and-int/lit8 v2, v8, 0x3

    .line 1630
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v5, v12

    .line 1631
    add-int/lit8 v8, v8, 0x1

    .line 1633
    and-int/lit16 v12, v5, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_2

    .line 1634
    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(I)V

    .line 1636
    :cond_2
    shl-int/lit8 v12, v4, 0x6

    and-int/lit8 v13, v5, 0x3f

    or-int v4, v12, v13

    .line 1637
    const/4 v12, 0x2

    if-le v11, v12, :cond_4

    .line 1638
    shr-int/lit8 v12, v8, 0x2

    aget v5, p1, v12

    .line 1639
    and-int/lit8 v2, v8, 0x3

    .line 1640
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v5, v12

    .line 1641
    add-int/lit8 v8, v8, 0x1

    .line 1642
    and-int/lit16 v12, v5, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_3

    .line 1643
    and-int/lit16 v12, v5, 0xff

    invoke-virtual {p0, v12}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(I)V

    .line 1645
    :cond_3
    shl-int/lit8 v12, v4, 0x6

    and-int/lit8 v13, v5, 0x3f

    or-int v4, v12, v13

    .line 1648
    :cond_4
    const/4 v12, 0x2

    if-le v11, v12, :cond_d

    .line 1649
    const/high16 v12, 0x10000

    sub-int/2addr v4, v12

    .line 1650
    array-length v12, v3

    if-lt v7, v12, :cond_5

    .line 1651
    iget-object v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v3

    .line 1653
    :cond_5
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "cix":I
    .restart local v6    # "cix":I
    const v12, 0xd800

    shr-int/lit8 v13, v4, 0xa

    add-int/2addr v12, v13

    int-to-char v12, v12

    aput-char v12, v3, v7

    .line 1654
    const v12, 0xdc00

    and-int/lit16 v13, v4, 0x3ff

    or-int v4, v12, v13

    .line 1657
    .end local v5    # "ch2":I
    .end local v11    # "needed":I
    :goto_3
    array-length v12, v3

    if-lt v6, v12, :cond_6

    .line 1658
    iget-object v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v3

    .line 1660
    :cond_6
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "cix":I
    .restart local v7    # "cix":I
    int-to-char v12, v4

    aput-char v12, v3, v6

    goto/16 :goto_1

    .line 1586
    .end local v2    # "byteIx":I
    .end local v3    # "cbuf":[C
    .end local v4    # "ch":I
    .end local v7    # "cix":I
    .end local v8    # "ix":I
    .end local v9    # "lastQuad":I
    :cond_7
    const/4 v9, 0x0

    .restart local v9    # "lastQuad":I
    goto/16 :goto_0

    .line 1603
    .restart local v2    # "byteIx":I
    .restart local v3    # "cbuf":[C
    .restart local v4    # "ch":I
    .restart local v7    # "cix":I
    .restart local v8    # "ix":I
    :cond_8
    and-int/lit16 v12, v4, 0xf0

    const/16 v13, 0xe0

    if-ne v12, v13, :cond_9

    .line 1604
    and-int/lit8 v4, v4, 0xf

    .line 1605
    const/4 v11, 0x2

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .line 1606
    .end local v11    # "needed":I
    :cond_9
    and-int/lit16 v12, v4, 0xf8

    const/16 v13, 0xf0

    if-ne v12, v13, :cond_a

    .line 1607
    and-int/lit8 v4, v4, 0x7

    .line 1608
    const/4 v11, 0x3

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .line 1610
    .end local v11    # "needed":I
    :cond_a
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidInitial(I)V

    .line 1611
    const/4 v4, 0x1

    move v11, v4

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .line 1664
    .end local v2    # "byteIx":I
    .end local v4    # "ch":I
    .end local v11    # "needed":I
    :cond_b
    new-instance v1, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v1, v3, v12, v7}, Ljava/lang/String;-><init>([CII)V

    .line 1666
    .local v1, "baseName":Ljava/lang/String;
    const/4 v12, 0x4

    if-ge v10, v12, :cond_c

    .line 1667
    add-int/lit8 v12, p3, -0x1

    aput v9, p1, v12

    .line 1669
    :cond_c
    iget-object v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    move/from16 v0, p3

    invoke-virtual {v12, v1, p1, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;[II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v12

    return-object v12

    .end local v1    # "baseName":Ljava/lang/String;
    .restart local v2    # "byteIx":I
    .restart local v4    # "ch":I
    :cond_d
    move v6, v7

    .end local v7    # "cix":I
    .restart local v6    # "cix":I
    goto :goto_3
.end method

.method private final _decodeShortAsciiName(I)Ljava/lang/String;
    .locals 9
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1491
    iget-object v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 1492
    .local v5, "outBuf":[C
    const/4 v6, 0x0

    .line 1493
    .local v6, "outPtr":I
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 1494
    .local v0, "inBuf":[B
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 1497
    .local v2, "inPtr":I
    add-int v8, v2, p1

    add-int/lit8 v1, v8, -0x3

    .local v1, "inEnd":I
    move v3, v2

    .end local v2    # "inPtr":I
    .local v3, "inPtr":I
    move v7, v6

    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1498
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v8, v0, v3

    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 1499
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v3    # "inPtr":I
    aget-byte v8, v0, v2

    int-to-char v8, v8

    aput-char v8, v5, v6

    .line 1500
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v8, v0, v3

    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 1501
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v3    # "inPtr":I
    aget-byte v8, v0, v2

    int-to-char v8, v8

    aput-char v8, v5, v6

    goto :goto_0

    .line 1503
    :cond_0
    and-int/lit8 v4, p1, 0x3

    .line 1504
    .local v4, "left":I
    if-lez v4, :cond_2

    .line 1505
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v8, v0, v3

    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 1506
    const/4 v8, 0x1

    if-le v4, v8, :cond_1

    .line 1507
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v3    # "inPtr":I
    aget-byte v8, v0, v2

    int-to-char v8, v8

    aput-char v8, v5, v6

    .line 1508
    const/4 v8, 0x2

    if-le v4, v8, :cond_2

    .line 1509
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v8, v0, v3

    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 1513
    :cond_1
    :goto_1
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 1514
    iget-object v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v8, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1515
    iget-object v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v2    # "inPtr":I
    .end local v6    # "outPtr":I
    .restart local v3    # "inPtr":I
    .restart local v7    # "outPtr":I
    :cond_2
    move v2, v3

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto :goto_1
.end method

.method private final _decodeShortUnicodeName(I)Ljava/lang/String;
    .locals 12
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1528
    const/4 v8, 0x0

    .line 1529
    .local v8, "outPtr":I
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v7

    .line 1530
    .local v7, "outBuf":[C
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 1531
    .local v5, "inPtr":I
    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/2addr v10, p1

    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 1532
    sget-object v1, Lcom/fasterxml/jackson/dataformat/smile/SmileConstants;->sUtf8UnitLengths:[I

    .line 1533
    .local v1, "codes":[I
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 1534
    .local v4, "inBuf":[B
    add-int v2, v5, p1

    .local v2, "end":I
    move v6, v5

    .end local v5    # "inPtr":I
    .local v6, "inPtr":I
    move v9, v8

    .end local v8    # "outPtr":I
    .local v9, "outPtr":I
    :goto_0
    if-ge v6, v2, :cond_1

    .line 1535
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v10, v4, v6

    and-int/lit16 v3, v10, 0xff

    .line 1536
    .local v3, "i":I
    aget v0, v1, v3

    .line 1537
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 1539
    packed-switch v0, :pswitch_data_0

    .line 1559
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid byte "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in short Unicode text block"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    :cond_0
    move v8, v9

    .line 1562
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    :goto_1
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    int-to-char v10, v3

    aput-char v10, v7, v8

    move v6, v5

    .line 1563
    .end local v5    # "inPtr":I
    .restart local v6    # "inPtr":I
    goto :goto_0

    .line 1541
    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    :pswitch_0
    and-int/lit8 v10, v3, 0x1f

    shl-int/lit8 v10, v10, 0x6

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v6    # "inPtr":I
    aget-byte v11, v4, v5

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    move v5, v6

    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    move v8, v9

    .line 1542
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    goto :goto_1

    .line 1544
    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    :pswitch_1
    and-int/lit8 v10, v3, 0xf

    shl-int/lit8 v10, v10, 0xc

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v6    # "inPtr":I
    aget-byte v11, v4, v5

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v4, v6

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    move v8, v9

    .line 1547
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    goto :goto_1

    .line 1549
    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    :pswitch_2
    and-int/lit8 v10, v3, 0x7

    shl-int/lit8 v10, v10, 0x12

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v6    # "inPtr":I
    aget-byte v11, v4, v5

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v10, v11

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v4, v6

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v6    # "inPtr":I
    aget-byte v11, v4, v5

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    .line 1554
    const/high16 v10, 0x10000

    sub-int/2addr v3, v10

    .line 1555
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    const v10, 0xd800

    shr-int/lit8 v11, v3, 0xa

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v7, v9

    .line 1556
    const v10, 0xdc00

    and-int/lit16 v11, v3, 0x3ff

    or-int v3, v10, v11

    move v5, v6

    .line 1557
    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    goto :goto_1

    .line 1564
    .end local v0    # "code":I
    .end local v3    # "i":I
    .end local v5    # "inPtr":I
    .end local v8    # "outPtr":I
    .restart local v6    # "inPtr":I
    .restart local v9    # "outPtr":I
    :cond_1
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v10, v9}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1565
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 1539
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final _decodeUtf8_2(I)I
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2535
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 2536
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2538
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 2539
    .local v0, "d":I
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 2540
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(II)V

    .line 2542
    :cond_1
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int/2addr v1, v2

    return v1
.end method

.method private final _decodeUtf8_3(I)I
    .locals 6
    .param p1, "c1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 2548
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 2549
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2551
    :cond_0
    and-int/lit8 p1, p1, 0xf

    .line 2552
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 2553
    .local v1, "d":I
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_1

    .line 2554
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(II)V

    .line 2556
    :cond_1
    shl-int/lit8 v2, p1, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 2557
    .local v0, "c":I
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_2

    .line 2558
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2560
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 2561
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_3

    .line 2562
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(II)V

    .line 2564
    :cond_3
    shl-int/lit8 v2, v0, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 2565
    return v0
.end method

.method private final _decodeUtf8_3fast(I)I
    .locals 6
    .param p1, "c1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 2571
    and-int/lit8 p1, p1, 0xf

    .line 2572
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 2573
    .local v1, "d":I
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_0

    .line 2574
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(II)V

    .line 2576
    :cond_0
    shl-int/lit8 v2, p1, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 2577
    .local v0, "c":I
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 2578
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_1

    .line 2579
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(II)V

    .line 2581
    :cond_1
    shl-int/lit8 v2, v0, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 2582
    return v0
.end method

.method private final _decodeUtf8_4(I)I
    .locals 5
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 2592
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 2593
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2595
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 2596
    .local v0, "d":I
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_1

    .line 2597
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(II)V

    .line 2599
    :cond_1
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int p1, v1, v2

    .line 2601
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    .line 2602
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2604
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 2605
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_3

    .line 2606
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(II)V

    .line 2608
    :cond_3
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int p1, v1, v2

    .line 2609
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_4

    .line 2610
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2612
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 2613
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_5

    .line 2614
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(II)V

    .line 2620
    :cond_5
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int/2addr v1, v2

    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    return v1
.end method

.method private final _expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "oldShared"    # [Ljava/lang/String;

    .prologue
    const/16 v2, 0x400

    const/16 v5, 0x40

    const/4 v4, 0x0

    .line 1457
    array-length v0, p1

    .line 1459
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 1460
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->allocSeenNamesBuffer()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1461
    .local v1, "newShared":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1462
    new-array v1, v5, [Ljava/lang/String;

    .line 1472
    :cond_0
    :goto_0
    return-object v1

    .line 1464
    .end local v1    # "newShared":[Ljava/lang/String;
    :cond_1
    if-ne v0, v2, :cond_2

    .line 1465
    move-object v1, p1

    .line 1466
    .restart local v1    # "newShared":[Ljava/lang/String;
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    goto :goto_0

    .line 1468
    .end local v1    # "newShared":[Ljava/lang/String;
    :cond_2
    if-ne v0, v5, :cond_3

    const/16 v2, 0x100

    .line 1469
    .local v2, "newSize":I
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    .line 1470
    .restart local v1    # "newShared":[Ljava/lang/String;
    array-length v3, p1

    invoke-static {p1, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private final _expandSeenStringValues()V
    .locals 7

    .prologue
    const/16 v2, 0x400

    const/16 v6, 0x40

    const/4 v5, 0x0

    .line 724
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 725
    .local v3, "oldShared":[Ljava/lang/String;
    array-length v0, v3

    .line 727
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 728
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->allocSeenStringValuesBuffer()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 729
    .local v1, "newShared":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 730
    new-array v1, v6, [Ljava/lang/String;

    .line 740
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 741
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 742
    return-void

    .line 732
    .end local v1    # "newShared":[Ljava/lang/String;
    :cond_1
    if-ne v0, v2, :cond_2

    .line 733
    move-object v1, v3

    .line 734
    .restart local v1    # "newShared":[Ljava/lang/String;
    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    goto :goto_0

    .line 736
    .end local v1    # "newShared":[Ljava/lang/String;
    :cond_2
    if-ne v0, v6, :cond_3

    const/16 v2, 0x100

    .line 737
    .local v2, "newSize":I
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    .line 738
    .restart local v1    # "newShared":[Ljava/lang/String;
    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private final _findDecodedFromSymbols(I)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 7
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1756
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v5, v6

    if-ge v5, p1, :cond_0

    .line 1757
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadToHaveAtLeast(I)Z

    .line 1760
    :cond_0
    const/4 v5, 0x5

    if-ge p1, v5, :cond_2

    .line 1761
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 1762
    .local v1, "inPtr":I
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 1763
    .local v0, "inBuf":[B
    aget-byte v5, v0, v1

    and-int/lit16 v2, v5, 0xff

    .line 1764
    .local v2, "q":I
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1765
    shl-int/lit8 v5, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v2, v5, v6

    .line 1766
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1767
    shl-int/lit8 v5, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v2, v5, v6

    .line 1768
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1769
    shl-int/lit8 v5, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v2, v5, v6

    .line 1773
    :cond_1
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quad1:I

    .line 1774
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v5, v2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName(I)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v5

    .line 1801
    .end local v0    # "inBuf":[B
    .end local v1    # "inPtr":I
    .end local v2    # "q":I
    :goto_0
    return-object v5

    .line 1776
    :cond_2
    const/16 v5, 0x9

    if-ge p1, v5, :cond_4

    .line 1777
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 1778
    .restart local v1    # "inPtr":I
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 1780
    .restart local v0    # "inBuf":[B
    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v3, v5, 0x8

    .line 1781
    .local v3, "q1":I
    add-int/lit8 v1, v1, 0x1

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    .line 1782
    shl-int/lit8 v3, v3, 0x8

    .line 1783
    add-int/lit8 v1, v1, 0x1

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    .line 1784
    shl-int/lit8 v3, v3, 0x8

    .line 1785
    add-int/lit8 v1, v1, 0x1

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    .line 1786
    add-int/lit8 v1, v1, 0x1

    aget-byte v5, v0, v1

    and-int/lit16 v4, v5, 0xff

    .line 1787
    .local v4, "q2":I
    add-int/lit8 p1, p1, -0x5

    .line 1788
    if-lez p1, :cond_3

    .line 1789
    shl-int/lit8 v5, v4, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v4, v5, v6

    .line 1790
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_3

    .line 1791
    shl-int/lit8 v5, v4, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v4, v5, v6

    .line 1792
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_3

    .line 1793
    shl-int/lit8 v5, v4, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v4, v5, v6

    .line 1797
    :cond_3
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quad1:I

    .line 1798
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quad2:I

    .line 1799
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v5, v3, v4}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName(II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v5

    goto :goto_0

    .line 1801
    .end local v0    # "inBuf":[B
    .end local v1    # "inPtr":I
    .end local v3    # "q1":I
    .end local v4    # "q2":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_findDecodedMedium(I)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v5

    goto :goto_0
.end method

.method private final _findDecodedMedium(I)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 9
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1812
    add-int/lit8 v7, p1, 0x3

    shr-int/lit8 v0, v7, 0x2

    .line 1813
    .local v0, "bufLen":I
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    array-length v7, v7

    if-le v0, v7, :cond_0

    .line 1814
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    invoke-static {v7, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_growArrayTo([II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    .line 1818
    :cond_0
    const/4 v4, 0x0

    .line 1819
    .local v4, "offset":I
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 1820
    .local v2, "inPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 1822
    .local v1, "inBuf":[B
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .local v3, "inPtr":I
    aget-byte v7, v1, v2

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v6, v7, 0x8

    .line 1823
    .local v6, "q":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v7, v1, v3

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 1824
    shl-int/lit8 v6, v6, 0x8

    .line 1825
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v3    # "inPtr":I
    aget-byte v7, v1, v2

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 1826
    shl-int/lit8 v6, v6, 0x8

    .line 1827
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v7, v1, v3

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 1828
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    aput v6, v7, v4

    .line 1829
    add-int/lit8 p1, p1, -0x4

    const/4 v7, 0x3

    if-gt p1, v7, :cond_3

    .line 1831
    if-lez p1, :cond_2

    .line 1832
    aget-byte v7, v1, v2

    and-int/lit16 v6, v7, 0xff

    .line 1833
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1834
    shl-int/lit8 v7, v6, 0x8

    add-int/lit8 v2, v2, 0x1

    aget-byte v8, v1, v2

    and-int/lit16 v8, v8, 0xff

    add-int v6, v7, v8

    .line 1835
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1836
    shl-int/lit8 v7, v6, 0x8

    add-int/lit8 v2, v2, 0x1

    aget-byte v8, v1, v2

    and-int/lit16 v8, v8, 0xff

    add-int v6, v7, v8

    .line 1839
    :cond_1
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    aput v6, v7, v5

    .line 1841
    :goto_1
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    iget-object v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    invoke-virtual {v7, v8, v4}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName([II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v7

    return-object v7

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_2
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_3
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0
.end method

.method private final _finishBigDecimal()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2092
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_readUnsignedVInt()I

    move-result v2

    invoke-static {v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagDecode(I)I

    move-result v1

    .line 2093
    .local v1, "scale":I
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_read7BitBinaryWithLength()[B

    move-result-object v0

    .line 2094
    .local v0, "raw":[B
    new-instance v2, Ljava/math/BigDecimal;

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v2, v3, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_numberBigDecimal:Ljava/math/BigDecimal;

    .line 2095
    const/16 v2, 0x10

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_numTypesValid:I

    .line 2096
    return-void
.end method

.method private final _finishBigInteger()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2030
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_read7BitBinaryWithLength()[B

    move-result-object v0

    .line 2031
    .local v0, "raw":[B
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_numberBigInt:Ljava/math/BigInteger;

    .line 2032
    const/4 v1, 0x4

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_numTypesValid:I

    .line 2033
    return-void
.end method

.method private final _finishDouble()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x7

    .line 2053
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_fourBytesToInt()I

    move-result v4

    int-to-long v0, v4

    .line 2054
    .local v0, "hi":J
    const/16 v4, 0x1c

    shl-long v4, v0, v4

    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_fourBytesToInt()I

    move-result v6

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 2056
    .local v2, "value":J
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v4, v5, :cond_0

    .line 2057
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2059
    :cond_0
    shl-long v4, v2, v9

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v6, v6, v7

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 2060
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v4, v5, :cond_1

    .line 2061
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2063
    :cond_1
    shl-long v4, v2, v9

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v6, v6, v7

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 2064
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_numberDouble:D

    .line 2065
    const/16 v4, 0x8

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_numTypesValid:I

    .line 2066
    return-void
.end method

.method private final _finishFloat()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2039
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_fourBytesToInt()I

    move-result v1

    .line 2040
    .local v1, "i":I
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 2041
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2043
    :cond_0
    shl-int/lit8 v2, v1, 0x7

    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v3, v3, v4

    add-int v1, v2, v3

    .line 2044
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 2045
    .local v0, "f":F
    float-to-double v2, v0

    iput-wide v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_numberDouble:D

    .line 2046
    const/16 v2, 0x8

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_numTypesValid:I

    .line 2047
    return-void
.end method

.method private final _finishInt()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1963
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1964
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1966
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1968
    .local v1, "value":I
    if-gez v1, :cond_1

    .line 1969
    and-int/lit8 v1, v1, 0x3f

    .line 2002
    :goto_0
    invoke-static {v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagDecode(I)I

    move-result v2

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_numberInt:I

    .line 2003
    const/4 v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_numTypesValid:I

    .line 2004
    return-void

    .line 1971
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_2

    .line 1972
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1974
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 1975
    .local v0, "i":I
    if-ltz v0, :cond_6

    .line 1976
    shl-int/lit8 v2, v1, 0x7

    add-int v1, v2, v0

    .line 1977
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_3

    .line 1978
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1980
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 1981
    if-ltz v0, :cond_6

    .line 1982
    shl-int/lit8 v2, v1, 0x7

    add-int v1, v2, v0

    .line 1983
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_4

    .line 1984
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1986
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 1987
    if-ltz v0, :cond_6

    .line 1988
    shl-int/lit8 v2, v1, 0x7

    add-int v1, v2, v0

    .line 1990
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_5

    .line 1991
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1993
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 1994
    if-ltz v0, :cond_6

    .line 1995
    const-string v2, "Corrupt input; 32-bit VInt extends beyond 5 data bytes"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 2000
    :cond_6
    shl-int/lit8 v2, v1, 0x6

    and-int/lit8 v3, v0, 0x3f

    add-int v1, v2, v3

    goto :goto_0
.end method

.method private final _finishLong()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2010
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_fourBytesToInt()I

    move-result v3

    int-to-long v0, v3

    .line 2013
    .local v0, "l":J
    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v3, v4, :cond_0

    .line 2014
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2016
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v2, v3, v4

    .line 2017
    .local v2, "value":I
    if-gez v2, :cond_1

    .line 2018
    const/4 v3, 0x6

    shl-long v4, v0, v3

    and-int/lit8 v3, v2, 0x3f

    int-to-long v6, v3

    add-long v0, v4, v6

    .line 2019
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagDecode(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_numberLong:J

    .line 2020
    const/4 v3, 0x2

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_numTypesValid:I

    .line 2021
    return-void

    .line 2023
    :cond_1
    const/4 v3, 0x7

    shl-long v4, v0, v3

    int-to-long v6, v2

    add-long v0, v4, v6

    .line 2024
    goto :goto_0
.end method

.method private final _finishRawBinary()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2373
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_readUnsignedVInt()I

    move-result v0

    .line 2374
    .local v0, "byteLen":I
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_binaryValue:[B

    .line 2375
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v3, v4, :cond_0

    .line 2376
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2378
    :cond_0
    const/4 v1, 0x0

    .line 2380
    .local v1, "ptr":I
    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2381
    .local v2, "toAdd":I
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_binaryValue:[B

    invoke-static {v3, v4, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2382
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 2383
    add-int/2addr v1, v2

    .line 2384
    sub-int/2addr v0, v2

    .line 2385
    if-gtz v0, :cond_1

    .line 2386
    return-void

    .line 2388
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    goto :goto_0
.end method

.method private final _fourBytesToInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2071
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 2072
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2074
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 2075
    .local v0, "i":I
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    .line 2076
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2078
    :cond_1
    shl-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v2, v2, v3

    add-int v0, v1, v2

    .line 2079
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    .line 2080
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2082
    :cond_2
    shl-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v2, v2, v3

    add-int v0, v1, v2

    .line 2083
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v1, v2, :cond_3

    .line 2084
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2086
    :cond_3
    shl-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    return v1
.end method

.method private static _growArrayTo([II)[I
    .locals 3
    .param p0, "arr"    # [I
    .param p1, "minSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 1846
    add-int/lit8 v1, p1, 0x4

    new-array v0, v1, [I

    .line 1847
    .local v0, "newArray":[I
    if-eqz p0, :cond_0

    .line 1849
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1851
    :cond_0
    return-object v0
.end method

.method private final _handleLongFieldName()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x4

    .line 1675
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 1676
    .local v3, "inBuf":[B
    const/4 v7, 0x0

    .line 1677
    .local v7, "quads":I
    const/4 v2, 0x0

    .line 1678
    .local v2, "bytes":I
    const/4 v6, 0x0

    .line 1681
    .local v6, "q":I
    :goto_0
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v9, v10, :cond_0

    .line 1682
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1684
    :cond_0
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v3, v9

    .line 1685
    .local v0, "b":B
    if-ne v11, v0, :cond_5

    .line 1686
    const/4 v2, 0x0

    .line 1723
    :goto_1
    shl-int/lit8 v1, v7, 0x2

    .line 1724
    .local v1, "byteLen":I
    if-lez v2, :cond_2

    .line 1725
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    array-length v9, v9

    if-lt v7, v9, :cond_1

    .line 1726
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    array-length v10, v10

    add-int/lit16 v10, v10, 0x100

    invoke-static {v9, v10}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_growArrayTo([II)[I

    move-result-object v9

    iput-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    .line 1728
    :cond_1
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "quads":I
    .local v8, "quads":I
    aput v6, v9, v7

    .line 1729
    add-int/2addr v1, v2

    move v7, v8

    .line 1734
    .end local v8    # "quads":I
    .restart local v7    # "quads":I
    :cond_2
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    invoke-virtual {v9, v10, v7}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName([II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v4

    .line 1735
    .local v4, "n":Lcom/fasterxml/jackson/core/sym/Name;
    if-eqz v4, :cond_d

    .line 1736
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1740
    .local v5, "name":Ljava/lang/String;
    :goto_2
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 1741
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    array-length v10, v10

    if-lt v9, v10, :cond_3

    .line 1742
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 1744
    :cond_3
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    aput-object v5, v9, v10

    .line 1746
    :cond_4
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v9, v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1747
    return-void

    .line 1689
    .end local v1    # "byteLen":I
    .end local v4    # "n":Lcom/fasterxml/jackson/core/sym/Name;
    .end local v5    # "name":Ljava/lang/String;
    :cond_5
    and-int/lit16 v6, v0, 0xff

    .line 1690
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v9, v10, :cond_6

    .line 1691
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1693
    :cond_6
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v3, v9

    .line 1694
    if-ne v11, v0, :cond_7

    .line 1695
    const/4 v2, 0x1

    .line 1696
    goto :goto_1

    .line 1698
    :cond_7
    shl-int/lit8 v9, v6, 0x8

    and-int/lit16 v10, v0, 0xff

    or-int v6, v9, v10

    .line 1699
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v9, v10, :cond_8

    .line 1700
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1702
    :cond_8
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v3, v9

    .line 1703
    if-ne v11, v0, :cond_9

    .line 1704
    const/4 v2, 0x2

    .line 1705
    goto :goto_1

    .line 1707
    :cond_9
    shl-int/lit8 v9, v6, 0x8

    and-int/lit16 v10, v0, 0xff

    or-int v6, v9, v10

    .line 1708
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v9, v10, :cond_a

    .line 1709
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1711
    :cond_a
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v3, v9

    .line 1712
    if-ne v11, v0, :cond_b

    .line 1713
    const/4 v2, 0x3

    .line 1714
    goto/16 :goto_1

    .line 1716
    :cond_b
    shl-int/lit8 v9, v6, 0x8

    and-int/lit16 v10, v0, 0xff

    or-int v6, v9, v10

    .line 1717
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    array-length v9, v9

    if-lt v7, v9, :cond_c

    .line 1718
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    array-length v10, v10

    add-int/lit16 v10, v10, 0x100

    invoke-static {v9, v10}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_growArrayTo([II)[I

    move-result-object v9

    iput-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    .line 1720
    :cond_c
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "quads":I
    .restart local v8    # "quads":I
    aput v6, v9, v7

    move v7, v8

    .line 1721
    .end local v8    # "quads":I
    .restart local v7    # "quads":I
    goto/16 :goto_0

    .line 1738
    .restart local v1    # "byteLen":I
    .restart local v4    # "n":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_d
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_quadBuffer:[I

    invoke-direct {p0, v9, v1, v7}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeLongUnicodeName([III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "name":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method private final _handleSharedString(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 703
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    if-lt p1, v0, :cond_0

    .line 704
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidSharedStringValue(I)V

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithString(Ljava/lang/String;)V

    .line 707
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method private final _read7BitBinaryWithLength()[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2118
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_readUnsignedVInt()I

    move-result v0

    .line 2119
    .local v0, "byteLen":I
    new-array v7, v0, [B

    .line 2120
    .local v7, "result":[B
    const/4 v5, 0x0

    .line 2121
    .local v5, "ptr":I
    add-int/lit8 v4, v0, -0x7

    .local v4, "lastOkPtr":I
    move v6, v5

    .line 2124
    .end local v5    # "ptr":I
    .local v6, "ptr":I
    :goto_0
    if-gt v6, v4, :cond_1

    .line 2125
    iget v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    iget v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v11, v12

    const/16 v12, 0x8

    if-ge v11, v12, :cond_0

    .line 2126
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadToHaveAtLeast(I)Z

    .line 2128
    :cond_0
    iget-object v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v11, v11, v12

    shl-int/lit8 v11, v11, 0x19

    iget-object v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0x12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0xb

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0x4

    add-int v2, v11, v12

    .line 2132
    .local v2, "i1":I
    iget-object v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v10, v11, v12

    .line 2133
    .local v10, "x":I
    shr-int/lit8 v11, v10, 0x3

    add-int/2addr v2, v11

    .line 2134
    and-int/lit8 v11, v10, 0x7

    shl-int/lit8 v11, v11, 0x15

    iget-object v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0xe

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0x7

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    add-int v3, v11, v12

    .line 2139
    .local v3, "i2":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    shr-int/lit8 v11, v2, 0x18

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 2140
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    shr-int/lit8 v11, v2, 0x10

    int-to-byte v11, v11

    aput-byte v11, v7, v5

    .line 2141
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    shr-int/lit8 v11, v2, 0x8

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 2142
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    int-to-byte v11, v2

    aput-byte v11, v7, v5

    .line 2143
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    shr-int/lit8 v11, v3, 0x10

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 2144
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    shr-int/lit8 v11, v3, 0x8

    int-to-byte v11, v11

    aput-byte v11, v7, v5

    .line 2145
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    int-to-byte v11, v3

    aput-byte v11, v7, v6

    move v6, v5

    .line 2146
    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    goto/16 :goto_0

    .line 2148
    .end local v2    # "i1":I
    .end local v3    # "i2":I
    .end local v10    # "x":I
    :cond_1
    array-length v11, v7

    sub-int v8, v11, v6

    .line 2149
    .local v8, "toDecode":I
    if-lez v8, :cond_4

    .line 2150
    iget v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    iget v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v11, v12

    add-int/lit8 v12, v8, 0x1

    if-ge v11, v12, :cond_2

    .line 2151
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {p0, v11}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadToHaveAtLeast(I)Z

    .line 2153
    :cond_2
    iget-object v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v9, v11, v12

    .line 2154
    .local v9, "value":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v8, :cond_3

    .line 2155
    shl-int/lit8 v11, v9, 0x7

    iget-object v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v13, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v12, v12, v13

    add-int v9, v11, v12

    .line 2156
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    rsub-int/lit8 v11, v1, 0x7

    shr-int v11, v9, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 2154
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    .end local v5    # "ptr":I
    .restart local v6    # "ptr":I
    goto :goto_1

    .line 2159
    :cond_3
    shl-int/2addr v9, v8

    .line 2160
    iget-object v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v11, v11, v12

    add-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .end local v1    # "i":I
    .end local v9    # "value":I
    :cond_4
    move v5, v6

    .line 2162
    .end local v6    # "ptr":I
    .restart local v5    # "ptr":I
    return-object v7
.end method

.method private _readBinaryEncoded(Ljava/io/OutputStream;I[B)V
    .locals 12
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .param p3, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1285
    const/4 v4, 0x0

    .line 1286
    .local v4, "outPtr":I
    array-length v8, p3

    add-int/lit8 v3, v8, -0x7

    .local v3, "lastSafeOut":I
    move v5, v4

    .line 1288
    .end local v4    # "outPtr":I
    .local v5, "outPtr":I
    :goto_0
    const/4 v8, 0x7

    if-le p2, v8, :cond_2

    .line 1289
    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v8, v9

    const/16 v9, 0x8

    if-ge v8, v9, :cond_0

    .line 1290
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadToHaveAtLeast(I)Z

    .line 1292
    :cond_0
    iget-object v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v8, v8, v9

    shl-int/lit8 v8, v8, 0x19

    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v9, v9, v10

    shl-int/lit8 v9, v9, 0x12

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v9, v9, v10

    shl-int/lit8 v9, v9, 0xb

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v9, v9, v10

    shl-int/lit8 v9, v9, 0x4

    add-int v1, v8, v9

    .line 1296
    .local v1, "i1":I
    iget-object v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v7, v8, v9

    .line 1297
    .local v7, "x":I
    shr-int/lit8 v8, v7, 0x3

    add-int/2addr v1, v8

    .line 1298
    and-int/lit8 v8, v7, 0x7

    shl-int/lit8 v8, v8, 0x15

    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v9, v9, v10

    shl-int/lit8 v9, v9, 0xe

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v9, v9, v10

    shl-int/lit8 v9, v9, 0x7

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v9, v9, v10

    add-int v2, v8, v9

    .line 1303
    .local v2, "i2":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v4    # "outPtr":I
    shr-int/lit8 v8, v1, 0x18

    int-to-byte v8, v8

    aput-byte v8, p3, v5

    .line 1304
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "outPtr":I
    .restart local v5    # "outPtr":I
    shr-int/lit8 v8, v1, 0x10

    int-to-byte v8, v8

    aput-byte v8, p3, v4

    .line 1305
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v4    # "outPtr":I
    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, p3, v5

    .line 1306
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "outPtr":I
    .restart local v5    # "outPtr":I
    int-to-byte v8, v1

    aput-byte v8, p3, v4

    .line 1307
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v4    # "outPtr":I
    shr-int/lit8 v8, v2, 0x10

    int-to-byte v8, v8

    aput-byte v8, p3, v5

    .line 1308
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "outPtr":I
    .restart local v5    # "outPtr":I
    shr-int/lit8 v8, v2, 0x8

    int-to-byte v8, v8

    aput-byte v8, p3, v4

    .line 1309
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v4    # "outPtr":I
    int-to-byte v8, v2

    aput-byte v8, p3, v5

    .line 1310
    add-int/lit8 p2, p2, -0x7

    .line 1312
    if-le v4, v3, :cond_1

    .line 1313
    const/4 v8, 0x0

    invoke-virtual {p1, p3, v8, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1314
    const/4 v4, 0x0

    :cond_1
    move v5, v4

    .line 1316
    .end local v4    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto/16 :goto_0

    .line 1318
    .end local v1    # "i1":I
    .end local v2    # "i2":I
    .end local v7    # "x":I
    :cond_2
    if-lez p2, :cond_6

    .line 1319
    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v8, v9

    add-int/lit8 v9, p2, 0x1

    if-ge v8, v9, :cond_3

    .line 1320
    add-int/lit8 v8, p2, 0x1

    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadToHaveAtLeast(I)Z

    .line 1322
    :cond_3
    iget-object v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v6, v8, v9

    .line 1323
    .local v6, "value":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_4

    .line 1324
    shl-int/lit8 v8, v6, 0x7

    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v9, v9, v10

    add-int v6, v8, v9

    .line 1325
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v4    # "outPtr":I
    rsub-int/lit8 v8, v0, 0x7

    shr-int v8, v6, v8

    int-to-byte v8, v8

    aput-byte v8, p3, v5

    .line 1323
    add-int/lit8 v0, v0, 0x1

    move v5, v4

    .end local v4    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_1

    .line 1328
    :cond_4
    shl-int/2addr v6, p2

    .line 1329
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v4    # "outPtr":I
    iget-object v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v8, v8, v9

    add-int/2addr v8, v6

    int-to-byte v8, v8

    aput-byte v8, p3, v5

    .line 1331
    .end local v0    # "i":I
    .end local v6    # "value":I
    :goto_2
    if-lez v4, :cond_5

    .line 1332
    const/4 v8, 0x0

    invoke-virtual {p1, p3, v8, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1334
    :cond_5
    return-void

    .end local v4    # "outPtr":I
    .restart local v5    # "outPtr":I
    :cond_6
    move v4, v5

    .end local v5    # "outPtr":I
    .restart local v4    # "outPtr":I
    goto :goto_2
.end method

.method private final _readUnsignedVInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2101
    const/4 v1, 0x0

    .line 2103
    .local v1, "value":I
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 2104
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 2106
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 2107
    .local v0, "i":I
    if-gez v0, :cond_1

    .line 2108
    shl-int/lit8 v2, v1, 0x6

    and-int/lit8 v3, v0, 0x3f

    add-int v1, v2, v3

    .line 2109
    return v1

    .line 2111
    :cond_1
    shl-int/lit8 v2, v1, 0x7

    add-int v1, v2, v0

    .line 2112
    goto :goto_0
.end method

.method protected static final _smileBufferRecycler()Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 298
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler<Ljava/lang/String;>;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 300
    .local v0, "br":Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;, "Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler<Ljava/lang/String;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    .end local v0    # "br":Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;, "Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler<Ljava/lang/String;>;"
    invoke-direct {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;-><init>()V

    .line 302
    .restart local v0    # "br":Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;, "Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler<Ljava/lang/String;>;"
    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 304
    :cond_0
    return-object v0

    .line 298
    .end local v0    # "br":Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;, "Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected _closeInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 449
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    .line 451
    :cond_2
    return-void
.end method

.method protected final _decodeShortAsciiValue(I)V
    .locals 8
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2174
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v6, v7

    if-ge v6, p1, :cond_0

    .line 2175
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadToHaveAtLeast(I)Z

    .line 2178
    :cond_0
    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v3

    .line 2179
    .local v3, "outBuf":[C
    const/4 v4, 0x0

    .line 2180
    .local v4, "outPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 2181
    .local v1, "inBuf":[B
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 2205
    .local v2, "inPtr":I
    add-int v0, v2, p1

    .local v0, "end":I
    move v5, v4

    .end local v4    # "outPtr":I
    .local v5, "outPtr":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2206
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v4    # "outPtr":I
    aget-byte v6, v1, v2

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 2205
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4    # "outPtr":I
    .restart local v5    # "outPtr":I
    goto :goto_0

    .line 2209
    :cond_1
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 2210
    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2211
    return-void
.end method

.method protected final _decodeShortUnicodeValue(I)V
    .locals 12
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2216
    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    iget v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v10, v11

    if-ge v10, p1, :cond_0

    .line 2217
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_loadToHaveAtLeast(I)Z

    .line 2219
    :cond_0
    const/4 v8, 0x0

    .line 2220
    .local v8, "outPtr":I
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v7

    .line 2221
    .local v7, "outBuf":[C
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 2222
    .local v4, "inPtr":I
    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/2addr v10, p1

    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 2223
    sget-object v1, Lcom/fasterxml/jackson/dataformat/smile/SmileConstants;->sUtf8UnitLengths:[I

    .line 2224
    .local v1, "codes":[I
    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 2225
    .local v6, "inputBuf":[B
    add-int v2, v4, p1

    .local v2, "end":I
    move v5, v4

    .end local v4    # "inPtr":I
    .local v5, "inPtr":I
    move v9, v8

    .end local v8    # "outPtr":I
    .local v9, "outPtr":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 2226
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    aget-byte v10, v6, v5

    and-int/lit16 v3, v10, 0xff

    .line 2227
    .local v3, "i":I
    aget v0, v1, v3

    .line 2228
    .local v0, "code":I
    if-eqz v0, :cond_1

    .line 2230
    packed-switch v0, :pswitch_data_0

    .line 2250
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid byte "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in short Unicode text block"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    :cond_1
    move v8, v9

    .line 2253
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    :goto_1
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    int-to-char v10, v3

    aput-char v10, v7, v8

    move v5, v4

    .line 2254
    .end local v4    # "inPtr":I
    .restart local v5    # "inPtr":I
    goto :goto_0

    .line 2232
    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    :pswitch_0
    and-int/lit8 v10, v3, 0x1f

    shl-int/lit8 v10, v10, 0x6

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v6, v4

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    move v4, v5

    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    move v8, v9

    .line 2233
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    goto :goto_1

    .line 2235
    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    :pswitch_1
    and-int/lit8 v10, v3, 0xf

    shl-int/lit8 v10, v10, 0xc

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v6, v4

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    aget-byte v11, v6, v5

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    move v8, v9

    .line 2238
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    goto :goto_1

    .line 2240
    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    :pswitch_2
    and-int/lit8 v10, v3, 0x7

    shl-int/lit8 v10, v10, 0x12

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v6, v4

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v10, v11

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    aget-byte v11, v6, v5

    and-int/lit8 v11, v11, 0x3f

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v11, v6, v4

    and-int/lit8 v11, v11, 0x3f

    or-int v3, v10, v11

    .line 2245
    const/high16 v10, 0x10000

    sub-int/2addr v3, v10

    .line 2246
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    const v10, 0xd800

    shr-int/lit8 v11, v3, 0xa

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v7, v9

    .line 2247
    const v10, 0xdc00

    and-int/lit16 v11, v3, 0x3ff

    or-int v3, v10, v11

    move v4, v5

    .line 2248
    .end local v5    # "inPtr":I
    .restart local v4    # "inPtr":I
    goto :goto_1

    .line 2255
    .end local v0    # "code":I
    .end local v3    # "i":I
    .end local v4    # "inPtr":I
    .end local v8    # "outPtr":I
    .restart local v5    # "inPtr":I
    .restart local v9    # "outPtr":I
    :cond_2
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v10, v9}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 2256
    return-void

    .line 2230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final _finishNumberToken(I)V
    .locals 4
    .param p1, "tb"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1924
    and-int/lit8 p1, p1, 0x1f

    .line 1925
    shr-int/lit8 v1, p1, 0x2

    .line 1926
    .local v1, "type":I
    if-ne v1, v2, :cond_3

    .line 1927
    and-int/lit8 v0, p1, 0x3

    .line 1928
    .local v0, "subtype":I
    if-nez v0, :cond_0

    .line 1929
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishInt()V

    .line 1953
    .end local v0    # "subtype":I
    :goto_0
    return-void

    .line 1930
    .restart local v0    # "subtype":I
    :cond_0
    if-ne v0, v2, :cond_1

    .line 1931
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishLong()V

    goto :goto_0

    .line 1932
    :cond_1
    if-ne v0, v3, :cond_2

    .line 1933
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishBigInteger()V

    goto :goto_0

    .line 1935
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_throwInternal()V

    goto :goto_0

    .line 1939
    .end local v0    # "subtype":I
    :cond_3
    if-ne v1, v3, :cond_4

    .line 1940
    and-int/lit8 v2, p1, 0x3

    packed-switch v2, :pswitch_data_0

    .line 1952
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_throwInternal()V

    goto :goto_0

    .line 1942
    :pswitch_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishFloat()V

    goto :goto_0

    .line 1945
    :pswitch_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishDouble()V

    goto :goto_0

    .line 1948
    :pswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishBigDecimal()V

    goto :goto_0

    .line 1940
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected _finishString()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_throwInternal()V

    .line 464
    return-void
.end method

.method protected _finishToken()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1882
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 1883
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeByte:I

    .line 1885
    .local v0, "tb":I
    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v1, v2, 0x7

    .line 1886
    .local v1, "type":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1887
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishNumberToken(I)V

    .line 1919
    :goto_0
    return-void

    .line 1890
    :cond_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 1891
    and-int/lit8 v2, v0, 0x3f

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeShortAsciiValue(I)V

    goto :goto_0

    .line 1894
    :cond_1
    const/4 v2, 0x5

    if-gt v1, v2, :cond_2

    .line 1896
    and-int/lit8 v2, v0, 0x3f

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeShortUnicodeValue(I)V

    goto :goto_0

    .line 1899
    :cond_2
    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 1900
    and-int/lit8 v0, v0, 0x1f

    .line 1902
    shr-int/lit8 v2, v0, 0x2

    packed-switch v2, :pswitch_data_0

    .line 1918
    :cond_3
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_throwInternal()V

    goto :goto_0

    .line 1904
    :pswitch_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeLongAscii()V

    goto :goto_0

    .line 1907
    :pswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeLongUnicode()V

    goto :goto_0

    .line 1910
    :pswitch_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_read7BitBinaryWithLength()[B

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_binaryValue:[B

    goto :goto_0

    .line 1913
    :pswitch_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishRawBinary()V

    goto :goto_0

    .line 1902
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected final _handleFieldName()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1348
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v5, v6, :cond_0

    .line 1349
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1351
    :cond_0
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v5, v6

    .line 1353
    .local v0, "ch":I
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeByte:I

    .line 1354
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_0

    .line 1446
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid type marker byte 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeByte:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for expected field name (or END_OBJECT marker)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 1447
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 1356
    :pswitch_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1358
    :sswitch_0
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1359
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 1365
    :sswitch_1
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v5, v6, :cond_2

    .line 1366
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1368
    :cond_2
    and-int/lit8 v5, v0, 0x3

    shl-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    add-int v1, v5, v6

    .line 1369
    .local v1, "index":I
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    if-lt v1, v5, :cond_3

    .line 1370
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidSharedName(I)V

    .line 1372
    :cond_3
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1374
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 1376
    .end local v1    # "index":I
    :sswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_handleLongFieldName()V

    .line 1377
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 1382
    :pswitch_1
    and-int/lit8 v1, v0, 0x3f

    .line 1383
    .restart local v1    # "index":I
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    if-lt v1, v5, :cond_4

    .line 1384
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidSharedName(I)V

    .line 1386
    :cond_4
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1388
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 1391
    .end local v1    # "index":I
    :pswitch_2
    and-int/lit8 v5, v0, 0x3f

    add-int/lit8 v2, v5, 0x1

    .line 1393
    .local v2, "len":I
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_findDecodedFromSymbols(I)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v3

    .line 1394
    .local v3, "n":Lcom/fasterxml/jackson/core/sym/Name;
    if-eqz v3, :cond_7

    .line 1395
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1396
    .local v4, "name":Ljava/lang/String;
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 1401
    :goto_2
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 1402
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    array-length v6, v6

    if-lt v5, v6, :cond_5

    .line 1403
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 1405
    :cond_5
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    aput-object v4, v5, v6

    .line 1407
    :cond_6
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1409
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_1

    .line 1398
    .end local v4    # "name":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeShortAsciiName(I)Ljava/lang/String;

    move-result-object v4

    .line 1399
    .restart local v4    # "name":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_addDecodedToSymbols(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1412
    .end local v2    # "len":I
    .end local v3    # "n":Lcom/fasterxml/jackson/core/sym/Name;
    .end local v4    # "name":Ljava/lang/String;
    :pswitch_3
    and-int/lit8 v0, v0, 0x3f

    .line 1414
    const/16 v5, 0x37

    if-le v0, v5, :cond_9

    .line 1415
    const/16 v5, 0x3b

    if-ne v0, v5, :cond_1

    .line 1416
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1417
    const/16 v5, 0x7d

    const/16 v6, 0x5d

    invoke-virtual {p0, v5, v6}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportMismatchedEndMarker(IC)V

    .line 1419
    :cond_8
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 1420
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_1

    .line 1423
    :cond_9
    add-int/lit8 v2, v0, 0x2

    .line 1425
    .restart local v2    # "len":I
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_findDecodedFromSymbols(I)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v3

    .line 1426
    .restart local v3    # "n":Lcom/fasterxml/jackson/core/sym/Name;
    if-eqz v3, :cond_c

    .line 1427
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1428
    .restart local v4    # "name":Ljava/lang/String;
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 1433
    :goto_3
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 1434
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    array-length v6, v6

    if-lt v5, v6, :cond_a

    .line 1435
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 1437
    :cond_a
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    aput-object v4, v5, v6

    .line 1439
    :cond_b
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1440
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_1

    .line 1430
    .end local v4    # "name":Ljava/lang/String;
    :cond_c
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeShortUnicodeName(I)Ljava/lang/String;

    move-result-object v4

    .line 1431
    .restart local v4    # "name":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_addDecodedToSymbols(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 1354
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1356
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_2
    .end sparse-switch
.end method

.method protected final _loadToHaveAtLeast(I)Z
    .locals 9
    .param p1, "minAvailable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 408
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    if-nez v4, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v2

    .line 412
    :cond_1
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    sub-int v0, v4, v5

    .line 413
    .local v0, "amount":I
    if-lez v0, :cond_2

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    if-lez v4, :cond_2

    .line 414
    iget-wide v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currInputProcessed:J

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currInputProcessed:J

    .line 416
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    invoke-static {v4, v5, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    .line 421
    :goto_1
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 422
    :goto_2
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-ge v4, p1, :cond_4

    .line 423
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    array-length v7, v7

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 424
    .local v1, "count":I
    if-ge v1, v3, :cond_3

    .line 426
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_closeInput()V

    .line 428
    if-nez v1, :cond_0

    .line 429
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    .end local v1    # "count":I
    :cond_2
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    goto :goto_1

    .line 433
    .restart local v1    # "count":I
    :cond_3
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    goto :goto_2

    .end local v1    # "count":I
    :cond_4
    move v2, v3

    .line 435
    goto :goto_0
.end method

.method protected _parseNumericValue(I)V
    .locals 3
    .param p1, "expType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1864
    iget-boolean v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v1, :cond_1

    .line 1865
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeByte:I

    .line 1867
    .local v0, "tb":I
    shr-int/lit8 v1, v0, 0x5

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 1870
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 1871
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishNumberToken(I)V

    .line 1873
    .end local v0    # "tb":I
    :cond_1
    return-void
.end method

.method protected _releaseBuffers()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 498
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_releaseBuffers()V

    .line 499
    iget-boolean v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_bufferRecyclable:Z

    if-eqz v3, :cond_0

    .line 500
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 501
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    .line 502
    iput-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 503
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseReadIOBuffer([B)V

    .line 507
    .end local v0    # "buf":[B
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 508
    .local v1, "nameBuf":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    .line 509
    iput-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 513
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    if-lez v3, :cond_1

    .line 514
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    invoke-static {v1, v5, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 516
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->releaseSeenNamesBuffer([Ljava/lang/Object;)V

    .line 520
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 521
    .local v2, "valueBuf":[Ljava/lang/String;
    if-eqz v2, :cond_4

    array-length v3, v2

    if-lez v3, :cond_4

    .line 522
    iput-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 526
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    if-lez v3, :cond_3

    .line 527
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    invoke-static {v2, v5, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 529
    :cond_3
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->releaseSeenStringValuesBuffer([Ljava/lang/Object;)V

    .line 532
    :cond_4
    return-void
.end method

.method protected _reportInvalidChar(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2648
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 2649
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_throwInvalidSpace(I)V

    .line 2651
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidInitial(I)V

    .line 2652
    return-void
.end method

.method protected _reportInvalidInitial(I)V
    .locals 2
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 2658
    return-void
.end method

.method protected _reportInvalidOther(I)V
    .locals 2
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 2664
    return-void
.end method

.method protected _reportInvalidOther(II)V
    .locals 0
    .param p1, "mask"    # I
    .param p2, "ptr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2669
    iput p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 2670
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidOther(I)V

    .line 2671
    return-void
.end method

.method protected _reportInvalidSharedName(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2632
    const-string v0, "Encountered shared name reference, even though document header explicitly declared no shared name references are included"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 2634
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shared name reference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; only got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " names in buffer (invalid content)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 2635
    return-void
.end method

.method protected _reportInvalidSharedStringValue(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2639
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2640
    const-string v0, "Encountered shared text value reference, even though document header did not declared shared text value references may be included"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 2642
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shared text value reference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; only got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " names in buffer (invalid content)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 2643
    return-void
.end method

.method protected _skip7BitBinary()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2514
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_readUnsignedVInt()I

    move-result v2

    .line 2516
    .local v2, "origBytes":I
    div-int/lit8 v0, v2, 0x7

    .line 2517
    .local v0, "chunks":I
    mul-int/lit8 v1, v0, 0x8

    .line 2519
    .local v1, "encBytes":I
    mul-int/lit8 v3, v0, 0x7

    sub-int/2addr v2, v3

    .line 2520
    if-lez v2, :cond_0

    .line 2521
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v3

    .line 2523
    :cond_0
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skipBytes(I)V

    .line 2524
    return-void
.end method

.method protected _skipBytes(I)V
    .locals 3
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2497
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2498
    .local v0, "toAdd":I
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 2499
    sub-int/2addr p1, v0

    .line 2500
    if-gtz p1, :cond_0

    .line 2501
    return-void

    .line 2503
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    goto :goto_0
.end method

.method protected _skipIncomplete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2404
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 2405
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeByte:I

    .line 2406
    .local v2, "tb":I
    shr-int/lit8 v3, v2, 0x5

    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_0

    .line 2490
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_throwInternal()V

    .line 2491
    :goto_1
    return-void

    .line 2408
    :pswitch_1
    and-int/lit8 v2, v2, 0x1f

    .line 2410
    shr-int/lit8 v3, v2, 0x2

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 2413
    :pswitch_2
    and-int/lit8 v3, v2, 0x3

    packed-switch v3, :pswitch_data_2

    goto :goto_0

    .line 2419
    :goto_2
    :pswitch_3
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    .line 2420
    .local v1, "end":I
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 2421
    .local v0, "buf":[B
    :cond_0
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    if-ge v3, v1, :cond_1

    .line 2422
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v3, v0, v3

    if-gez v3, :cond_0

    goto :goto_1

    .line 2415
    .end local v0    # "buf":[B
    .end local v1    # "end":I
    :pswitch_4
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skipBytes(I)V

    goto :goto_2

    .line 2426
    .restart local v0    # "buf":[B
    .restart local v1    # "end":I
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    goto :goto_2

    .line 2430
    .end local v0    # "buf":[B
    .end local v1    # "end":I
    :pswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skip7BitBinary()V

    goto :goto_1

    .line 2435
    :pswitch_6
    and-int/lit8 v3, v2, 0x3

    packed-switch v3, :pswitch_data_3

    goto :goto_0

    .line 2437
    :pswitch_7
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skipBytes(I)V

    goto :goto_1

    .line 2440
    :pswitch_8
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skipBytes(I)V

    goto :goto_1

    .line 2444
    :pswitch_9
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_readUnsignedVInt()I

    .line 2446
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skip7BitBinary()V

    goto :goto_1

    .line 2455
    :pswitch_a
    and-int/lit8 v3, v2, 0x3f

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skipBytes(I)V

    goto :goto_1

    .line 2460
    :pswitch_b
    and-int/lit8 v3, v2, 0x3f

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skipBytes(I)V

    goto :goto_1

    .line 2463
    :pswitch_c
    and-int/lit8 v2, v2, 0x1f

    .line 2465
    shr-int/lit8 v3, v2, 0x2

    packed-switch v3, :pswitch_data_4

    :pswitch_d
    goto :goto_0

    .line 2472
    :goto_3
    :pswitch_e
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    .line 2473
    .restart local v1    # "end":I
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    .line 2474
    .restart local v0    # "buf":[B
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    if-ge v3, v1, :cond_3

    .line 2475
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v3, v0, v3

    const/4 v4, -0x4

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 2479
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    goto :goto_3

    .line 2483
    .end local v0    # "buf":[B
    .end local v1    # "end":I
    :pswitch_f
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skip7BitBinary()V

    goto :goto_1

    .line 2486
    :pswitch_10
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_readUnsignedVInt()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skipBytes(I)V

    goto/16 :goto_1

    .line 2406
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_c
    .end packed-switch

    .line 2410
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 2413
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2435
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 2465
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->close()V

    .line 471
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->release()V

    .line 472
    return-void
.end method

.method public getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 2
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1207
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 1208
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishToken()V

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 1214
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_binaryValue:[B

    return-object v0
.end method

.method public getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 8

    .prologue
    .line 362
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currInputProcessed:J

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    int-to-long v4, v4

    add-long v2, v0, v4

    .line 363
    .local v2, "offset":J
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    long-to-int v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1221
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 1222
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishToken()V

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_binaryValue:[B

    .line 1227
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 751
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_got32BitFloat:Z

    if-eqz v0, :cond_0

    .line 752
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    .line 754
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1072
    iget-boolean v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v3, :cond_4

    .line 1073
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 1075
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeByte:I

    .line 1076
    .local v1, "tb":I
    shr-int/lit8 v3, v1, 0x5

    and-int/lit8 v2, v3, 0x7

    .line 1077
    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1078
    :cond_0
    and-int/lit8 v3, v1, 0x3f

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeShortAsciiValue(I)V

    .line 1079
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    .line 1102
    .end local v1    # "tb":I
    .end local v2    # "type":I
    :goto_0
    return-object v3

    .line 1081
    .restart local v1    # "tb":I
    .restart local v2    # "type":I
    :cond_1
    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 1083
    :cond_2
    and-int/lit8 v3, v1, 0x3f

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeShortUnicodeValue(I)V

    .line 1084
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1086
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishToken()V

    .line 1088
    .end local v1    # "tb":I
    .end local v2    # "type":I
    :cond_4
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_5

    .line 1089
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1091
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 1092
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v0, :cond_6

    .line 1093
    const/4 v3, 0x0

    goto :goto_0

    .line 1095
    :cond_6
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v3, :cond_7

    .line 1096
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1098
    :cond_7
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isNumeric()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1100
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1102
    :cond_8
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getTextCharacters()[C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1109
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v2, :cond_4

    .line 1110
    iget-boolean v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v2, :cond_0

    .line 1111
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishToken()V

    .line 1113
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1137
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v2

    .line 1140
    :goto_0
    return-object v2

    .line 1115
    :pswitch_0
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v2

    goto :goto_0

    .line 1117
    :pswitch_1
    iget-boolean v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_nameCopied:Z

    if-nez v2, :cond_2

    .line 1118
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 1119
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1120
    .local v1, "nameLen":I
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_nameCopyBuffer:[C

    if-nez v2, :cond_3

    .line 1121
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_nameCopyBuffer:[C

    .line 1125
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_nameCopyBuffer:[C

    invoke-virtual {v0, v4, v1, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1126
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_nameCopied:Z

    .line 1128
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameLen":I
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_nameCopyBuffer:[C

    goto :goto_0

    .line 1122
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "nameLen":I
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_nameCopyBuffer:[C

    array-length v2, v2

    if-ge v2, v1, :cond_1

    .line 1123
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_nameCopyBuffer:[C

    goto :goto_1

    .line 1134
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameLen":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    goto :goto_0

    .line 1140
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 1113
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getTextLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_1

    .line 1148
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_finishToken()V

    .line 1151
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1163
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    .line 1166
    :goto_0
    return v0

    .line 1153
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    goto :goto_0

    .line 1155
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 1160
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 1166
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1151
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getTextOffset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1172
    const/4 v0, 0x0

    return v0
.end method

.method public getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 10

    .prologue
    .line 350
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenInputTotal:J

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    iget-wide v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenInputTotal:J

    long-to-int v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1180
    :cond_0
    const/4 v0, 0x0

    .line 1183
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1194
    .end local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected handleSignature(ZZ)Z
    .locals 7
    .param p1, "consumeFirstByte"    # Z
    .param p2, "throwException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 247
    if-eqz p1, :cond_0

    .line 248
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 250
    :cond_0
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v4, v5, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 253
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v4, v4, v5

    const/16 v5, 0x29

    if-eq v4, v5, :cond_3

    .line 254
    if-eqz p2, :cond_2

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed content: signature not valid, starts with 0x3a but followed by 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v4, v4, v5

    .line 256
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not 0x29"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 292
    :cond_2
    :goto_0
    return v2

    .line 260
    :cond_3
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v4, v5, :cond_4

    .line 261
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 263
    :cond_4
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v4, v4, v5

    const/16 v5, 0xa

    if-eq v4, v5, :cond_5

    .line 264
    if-eqz p2, :cond_2

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed content: signature not valid, starts with 0x3a, 0x29, but followed by 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v4, v4, v5

    .line 266
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not 0xA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_5
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v4, v5, :cond_6

    .line 272
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 274
    :cond_6
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v4, v5

    .line 275
    .local v0, "ch":I
    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v1, v4, 0xf

    .line 277
    .local v1, "versionBits":I
    if-eqz v1, :cond_7

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header version number bits (0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") indicate unrecognized version; only 0x0 handled by parser"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 282
    :cond_7
    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_8

    .line 283
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 284
    const/4 v4, -0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    .line 287
    :cond_8
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_9

    .line 288
    sget-object v4, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->NO_STRINGS:[Ljava/lang/String;

    iput-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    .line 289
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    .line 291
    :cond_9
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_a

    move v2, v3

    :cond_a
    iput-boolean v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_mayContainRawBinary:Z

    move v2, v3

    .line 292
    goto/16 :goto_0
.end method

.method public hasTextCharacters()Z
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->hasTextAsCharacters()Z

    move-result v0

    .line 486
    :goto_0
    return v0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 483
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_nameCopied:Z

    goto :goto_0

    .line 486
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final loadMore()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 378
    iget-wide v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currInputProcessed:J

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currInputProcessed:J

    .line 381
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 383
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 384
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 385
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    .line 386
    const/4 v1, 0x1

    .line 395
    .end local v0    # "count":I
    :cond_0
    return v1

    .line 389
    .restart local v0    # "count":I
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_closeInput()V

    .line 391
    if-nez v0, :cond_0

    .line 392
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public mayContainRawBinary()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_mayContainRawBinary:Z

    return v0
.end method

.method public nextBooleanValue()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1046
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1052
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1048
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1050
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1046
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public nextFieldName(Lcom/fasterxml/jackson/core/SerializableString;)Z
    .locals 13
    .param p1, "str"    # Lcom/fasterxml/jackson/core/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 768
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v10, v11, :cond_d

    .line 769
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedUTF8()[B

    move-result-object v6

    .line 770
    .local v6, "nameBytes":[B
    array-length v0, v6

    .line 772
    .local v0, "byteLen":I
    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/2addr v10, v0

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-ge v10, v11, :cond_0

    .line 773
    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 774
    .local v7, "ptr":I
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "ptr":I
    .local v8, "ptr":I
    aget-byte v1, v10, v7

    .line 775
    .local v1, "ch":I
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeByte:I

    .line 777
    shr-int/lit8 v10, v1, 0x6

    and-int/lit8 v10, v10, 0x3

    packed-switch v10, :pswitch_data_0

    .line 884
    .end local v1    # "ch":I
    .end local v8    # "ptr":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_handleFieldName()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v9

    .line 885
    .local v9, "t":Lcom/fasterxml/jackson/core/JsonToken;
    iput-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 886
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v9, v10, :cond_c

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    .line 889
    .end local v0    # "byteLen":I
    .end local v6    # "nameBytes":[B
    .end local v9    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_1
    return v10

    .line 779
    .restart local v0    # "byteLen":I
    .restart local v1    # "ch":I
    .restart local v6    # "nameBytes":[B
    .restart local v8    # "ptr":I
    :pswitch_0
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 781
    :sswitch_0
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 782
    iput v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 783
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    const-string v11, ""

    invoke-virtual {v10, v11}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 784
    if-nez v0, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 790
    :sswitch_1
    and-int/lit8 v10, v1, 0x3

    shl-int/lit8 v10, v10, 0x8

    iget-object v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v11, v11, v8

    and-int/lit16 v11, v11, 0xff

    add-int v3, v10, v11

    .line 791
    .local v3, "index":I
    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    if-lt v3, v10, :cond_2

    .line 792
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidSharedName(I)V

    .line 794
    :cond_2
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    aget-object v5, v10, v3

    .line 795
    .local v5, "name":Ljava/lang/String;
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v10, v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 796
    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 797
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 798
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_1

    .line 805
    .end local v3    # "index":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "ptr":I
    .restart local v8    # "ptr":I
    :pswitch_1
    and-int/lit8 v3, v1, 0x3f

    .line 806
    .restart local v3    # "index":I
    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    if-lt v3, v10, :cond_3

    .line 807
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidSharedName(I)V

    .line 809
    :cond_3
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget-object v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v10, v11}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 810
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    aget-object v5, v10, v3

    .line 811
    .restart local v5    # "name":Ljava/lang/String;
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v10, v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 812
    iput v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 813
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 814
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_1

    .line 818
    .end local v3    # "index":I
    .end local v5    # "name":Ljava/lang/String;
    :pswitch_2
    and-int/lit8 v10, v1, 0x3f

    add-int/lit8 v4, v10, 0x1

    .line 819
    .local v4, "len":I
    if-ne v4, v0, :cond_0

    .line 820
    const/4 v2, 0x0

    .line 821
    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_4

    .line 822
    aget-byte v10, v6, v2

    iget-object v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    add-int v12, v8, v2

    aget-byte v11, v11, v12

    if-ne v10, v11, :cond_0

    .line 821
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 827
    :cond_4
    add-int v10, v8, v4

    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 828
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 829
    .restart local v5    # "name":Ljava/lang/String;
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 830
    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    iget-object v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    array-length v11, v11

    if-lt v10, v11, :cond_5

    .line 831
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 833
    :cond_5
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    iget v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    aput-object v5, v10, v11

    .line 835
    :cond_6
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v10, v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 836
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 837
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 844
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v5    # "name":Ljava/lang/String;
    :pswitch_3
    and-int/lit8 v4, v1, 0x3f

    .line 845
    .restart local v4    # "len":I
    const/16 v10, 0x37

    if-le v4, v10, :cond_8

    .line 846
    const/16 v10, 0x3b

    if-ne v4, v10, :cond_0

    .line 847
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 848
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v10

    if-nez v10, :cond_7

    .line 849
    const/16 v10, 0x7d

    const/16 v11, 0x5d

    invoke-virtual {p0, v10, v11}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportMismatchedEndMarker(IC)V

    .line 851
    :cond_7
    iput v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 852
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v10

    iput-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 853
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 858
    :cond_8
    add-int/lit8 v4, v4, 0x2

    .line 859
    if-ne v4, v0, :cond_0

    .line 860
    const/4 v2, 0x0

    .line 861
    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v4, :cond_9

    .line 862
    aget-byte v10, v6, v2

    iget-object v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    add-int v12, v8, v2

    aget-byte v11, v11, v12

    if-ne v10, v11, :cond_0

    .line 861
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 867
    :cond_9
    add-int v10, v8, v4

    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 868
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 869
    .restart local v5    # "name":Ljava/lang/String;
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    if-eqz v10, :cond_b

    .line 870
    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    iget-object v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    array-length v11, v11

    if-lt v10, v11, :cond_a

    .line 871
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    .line 873
    :cond_a
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNames:[Ljava/lang/String;

    iget v11, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenNameCount:I

    aput-object v5, v10, v11

    .line 875
    :cond_b
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v10, v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 876
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 877
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 886
    .end local v1    # "ch":I
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "ptr":I
    .restart local v9    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 889
    .end local v0    # "byteLen":I
    .end local v6    # "nameBytes":[B
    .end local v9    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_d
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v10

    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v10, v11, :cond_e

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->getCurrentName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 777
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 779
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
    .end sparse-switch
.end method

.method public nextIntValue(I)I
    .locals 2
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1026
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->getIntValue()I

    move-result p1

    .line 1029
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method public nextLongValue(J)J
    .locals 3
    .param p1, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1036
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1037
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->getLongValue()J

    move-result-wide p1

    .line 1039
    .end local p1    # "defaultValue":J
    :cond_0
    return-wide p1
.end method

.method public nextTextValue()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 897
    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 898
    :cond_0
    iget-boolean v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v6, :cond_1

    .line 899
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skipIncomplete()V

    .line 901
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 902
    .local v1, "ptr":I
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v1, v6, :cond_3

    .line 903
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMore()Z

    move-result v6

    if-nez v6, :cond_2

    .line 904
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_handleEOF()V

    .line 905
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->close()V

    .line 906
    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v3, v5

    .line 1019
    .end local v1    # "ptr":I
    :goto_0
    return-object v3

    .line 909
    .restart local v1    # "ptr":I
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 911
    :cond_3
    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ptr":I
    .local v2, "ptr":I
    aget-byte v0, v6, v1

    .line 912
    .local v0, "ch":I
    iget-wide v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currInputProcessed:J

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenInputTotal:J

    .line 915
    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_binaryValue:[B

    .line 916
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeByte:I

    .line 918
    shr-int/lit8 v6, v0, 0x5

    and-int/lit8 v6, v6, 0x7

    packed-switch v6, :pswitch_data_0

    .line 1019
    .end local v0    # "ch":I
    .end local v2    # "ptr":I
    :cond_4
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->getText()Ljava/lang/String;

    move-result-object v5

    :cond_5
    move-object v3, v5

    goto :goto_0

    .line 920
    .restart local v0    # "ch":I
    .restart local v2    # "ptr":I
    :pswitch_1
    if-nez v0, :cond_6

    .line 921
    const-string v5, "Invalid token byte 0x00"

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 925
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 926
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    if-lt v0, v5, :cond_7

    .line 927
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportInvalidSharedStringValue(I)V

    .line 929
    :cond_7
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 930
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    aget-object v3, v5, v0

    .line 931
    .local v3, "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithString(Ljava/lang/String;)V

    .line 932
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 938
    .end local v3    # "text":Ljava/lang/String;
    :pswitch_2
    and-int/lit8 v4, v0, 0x1f

    .line 939
    .local v4, "typeBits":I
    if-nez v4, :cond_4

    .line 940
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 941
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithEmpty()V

    .line 942
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 943
    const-string v3, ""

    goto :goto_0

    .line 950
    .end local v4    # "typeBits":I
    :pswitch_3
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 951
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 952
    and-int/lit8 v5, v0, 0x3f

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeShortAsciiValue(I)V

    .line 956
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    if-ltz v5, :cond_9

    .line 957
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_8

    .line 958
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    .line 959
    .restart local v3    # "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    aput-object v3, v5, v6

    goto/16 :goto_0

    .line 961
    .end local v3    # "text":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_expandSeenStringValues()V

    .line 962
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/String;
    goto/16 :goto_0

    .line 965
    .end local v3    # "text":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/String;
    goto/16 :goto_0

    .line 973
    .end local v3    # "text":Ljava/lang/String;
    :pswitch_4
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 974
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 975
    and-int/lit8 v5, v0, 0x3f

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_decodeShortUnicodeValue(I)V

    .line 979
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    if-ltz v5, :cond_b

    .line 980
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_a

    .line 981
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    .line 982
    .restart local v3    # "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValues:[Ljava/lang/String;

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    aput-object v3, v5, v6

    goto/16 :goto_0

    .line 984
    .end local v3    # "text":Ljava/lang/String;
    :cond_a
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_expandSeenStringValues()V

    .line 985
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/String;
    goto/16 :goto_0

    .line 988
    .end local v3    # "text":Ljava/lang/String;
    :cond_b
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/String;
    goto/16 :goto_0

    .line 918
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 553
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_numTypesValid:I

    .line 555
    iget-boolean v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    if-eqz v6, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_skipIncomplete()V

    .line 558
    :cond_0
    iget-wide v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currInputProcessed:J

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenInputTotal:J

    .line 560
    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_binaryValue:[B

    .line 562
    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v6, v7, :cond_1

    .line 563
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_handleFieldName()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 697
    :goto_0
    return-object v3

    .line 565
    :cond_1
    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v6, v7, :cond_2

    .line 566
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMore()Z

    move-result v6

    if-nez v6, :cond_2

    .line 567
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_handleEOF()V

    .line 572
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->close()V

    .line 573
    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v3, v5

    goto :goto_0

    .line 576
    :cond_2
    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v0, v6, v7

    .line 577
    .local v0, "ch":I
    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeByte:I

    .line 578
    shr-int/lit8 v6, v0, 0x5

    and-int/lit8 v6, v6, 0x7

    packed-switch v6, :pswitch_data_0

    .line 696
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid type marker byte 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, v0, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for expected value token"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    move-object v3, v5

    .line 697
    goto :goto_0

    .line 580
    :pswitch_0
    if-nez v0, :cond_4

    .line 581
    const-string v3, "Invalid token byte 0x00"

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 583
    :cond_4
    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_handleSharedString(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 587
    :pswitch_1
    and-int/lit8 v2, v0, 0x1f

    .line 588
    .local v2, "typeBits":I
    const/4 v6, 0x4

    if-ge v2, v6, :cond_5

    .line 589
    packed-switch v2, :pswitch_data_1

    .line 598
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 591
    :pswitch_2
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithEmpty()V

    .line 592
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 594
    :pswitch_3
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 596
    :pswitch_4
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 602
    :cond_5
    const/16 v6, 0x8

    if-ge v2, v6, :cond_6

    .line 603
    and-int/lit8 v6, v2, 0x3

    if-gt v6, v11, :cond_3

    .line 604
    iput-boolean v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 605
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_numTypesValid:I

    .line 606
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 610
    :cond_6
    const/16 v6, 0xc

    if-ge v2, v6, :cond_8

    .line 611
    and-int/lit8 v1, v2, 0x3

    .line 612
    .local v1, "subtype":I
    if-gt v1, v11, :cond_3

    .line 613
    iput-boolean v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 614
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_numTypesValid:I

    .line 615
    if-nez v1, :cond_7

    :goto_2
    iput-boolean v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_got32BitFloat:Z

    .line 616
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    :cond_7
    move v3, v4

    .line 615
    goto :goto_2

    .line 620
    .end local v1    # "subtype":I
    :cond_8
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_a

    .line 621
    invoke-virtual {p0, v4, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->handleSignature(ZZ)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 627
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-nez v3, :cond_9

    .line 628
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_0

    .line 630
    :cond_9
    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v3, v5

    goto/16 :goto_0

    .line 633
    :cond_a
    const-string v3, "Unrecognized token byte 0x3A (malformed segment header?"

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 645
    .end local v2    # "typeBits":I
    :pswitch_5
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 646
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_seenStringValueCount:I

    if-ltz v4, :cond_b

    .line 647
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_addSeenStringValue()V

    .line 651
    :goto_3
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 649
    :cond_b
    iput-boolean v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    goto :goto_3

    .line 653
    :pswitch_6
    and-int/lit8 v4, v0, 0x1f

    invoke-static {v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagDecode(I)I

    move-result v4

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_numberInt:I

    .line 654
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_numTypesValid:I

    .line 655
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 657
    :pswitch_7
    and-int/lit8 v4, v0, 0x1f

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    .line 660
    :sswitch_0
    iput-boolean v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 661
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 663
    :sswitch_1
    iput-boolean v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 664
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 669
    :sswitch_2
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v3, v4, :cond_c

    .line 670
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 672
    :cond_c
    and-int/lit8 v3, v0, 0x3

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_handleSharedString(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto/16 :goto_0

    .line 674
    :sswitch_3
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3, v10, v10}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 675
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 677
    :sswitch_4
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v3

    if-nez v3, :cond_d

    .line 678
    const/16 v3, 0x5d

    const/16 v4, 0x7d

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportMismatchedEndMarker(IC)V

    .line 680
    :cond_d
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 681
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 683
    :sswitch_5
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3, v10, v10}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 684
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 686
    :sswitch_6
    const-string v4, "Invalid type marker byte 0xFB in value mode (would be END_OBJECT in key mode)"

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 688
    :sswitch_7
    iput-boolean v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    .line 689
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 691
    :sswitch_8
    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v3, v5

    goto/16 :goto_0

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 589
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 657
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_2
        0xf -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_4
        0x1a -> :sswitch_5
        0x1b -> :sswitch_6
        0x1d -> :sswitch_7
        0x1f -> :sswitch_8
    .end sparse-switch
.end method

.method public readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .locals 9
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1234
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v7, v8, :cond_0

    .line 1236
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current token ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") not VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_reportError(Ljava/lang/String;)V

    .line 1239
    :cond_0
    iget-boolean v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    if-nez v7, :cond_2

    .line 1240
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_binaryValue:[B

    if-nez v7, :cond_1

    move v5, v6

    .line 1279
    :goto_0
    return v5

    .line 1243
    :cond_1
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_binaryValue:[B

    array-length v4, v7

    .line 1244
    .local v4, "len":I
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_binaryValue:[B

    invoke-virtual {p2, v7, v6, v4}, Ljava/io/OutputStream;->write([BII)V

    move v5, v4

    .line 1245
    goto :goto_0

    .line 1250
    .end local v4    # "len":I
    :cond_2
    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeByte:I

    const/4 v8, -0x3

    if-ne v7, v8, :cond_5

    .line 1251
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_readUnsignedVInt()I

    move-result v5

    .line 1252
    .local v5, "totalCount":I
    move v3, v5

    .line 1253
    .local v3, "left":I
    :goto_1
    if-lez v3, :cond_4

    .line 1254
    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    sub-int v0, v7, v8

    .line 1255
    .local v0, "avail":I
    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    if-lt v7, v8, :cond_3

    .line 1256
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->loadMoreGuaranteed()V

    .line 1257
    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    sub-int v0, v7, v8

    .line 1259
    :cond_3
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1260
    .local v1, "count":I
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    invoke-virtual {p2, v7, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 1261
    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 1262
    sub-int/2addr v3, v1

    .line 1263
    goto :goto_1

    .line 1264
    .end local v0    # "avail":I
    .end local v1    # "count":I
    :cond_4
    iput-boolean v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    goto :goto_0

    .line 1267
    .end local v3    # "left":I
    .end local v5    # "totalCount":I
    :cond_5
    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_typeByte:I

    const/16 v8, -0x18

    if-eq v7, v8, :cond_6

    .line 1268
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_throwInternal()V

    .line 1271
    :cond_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_readUnsignedVInt()I

    move-result v5

    .line 1272
    .restart local v5    # "totalCount":I
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/io/IOContext;->allocBase64Buffer()[B

    move-result-object v2

    .line 1274
    .local v2, "encodingBuffer":[B
    :try_start_0
    invoke-direct {p0, p2, v5, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_readBinaryEncoded(Ljava/io/OutputStream;I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v7, v2}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    .line 1278
    iput-boolean v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_tokenIncomplete:Z

    goto :goto_0

    .line 1276
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v7, v2}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    throw v6
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputEnd:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    sub-int v0, v2, v3

    .line 328
    .local v0, "count":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 334
    .end local v0    # "count":I
    :goto_0
    return v0

    .line 332
    .restart local v0    # "count":I
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputPtr:I

    .line 333
    .local v1, "origPtr":I
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_inputBuffer:[B

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)V
    .locals 0
    .param p1, "c"    # Lcom/fasterxml/jackson/core/ObjectCodec;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 235
    return-void
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method
