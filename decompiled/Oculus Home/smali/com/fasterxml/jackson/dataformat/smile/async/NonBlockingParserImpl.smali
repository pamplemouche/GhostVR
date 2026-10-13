.class public Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;
.super Lcom/fasterxml/jackson/core/base/ParserBase;
.source "NonBlockingParserImpl.java"

# interfaces
.implements Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParser;
.implements Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingInputFeeder;


# static fields
.field private static final NO_BYTES:[B

.field private static final NO_INTS:[I

.field private static final NO_STRINGS:[Ljava/lang/String;

.field protected static final STATE_HEADER:I = 0x1

.field protected static final STATE_INITIAL:I = 0x0

.field protected static final STATE_LONG_ASCII:I = 0x16

.field protected static final STATE_LONG_SHARED:I = 0x18

.field protected static final STATE_LONG_UNICODE:I = 0x17

.field protected static final STATE_NUMBER_BIGDEC:I = 0xf

.field protected static final STATE_NUMBER_BIGINT:I = 0xc

.field protected static final STATE_NUMBER_DOUBLE:I = 0xe

.field protected static final STATE_NUMBER_FLOAT:I = 0xd

.field protected static final STATE_NUMBER_INT:I = 0xa

.field protected static final STATE_NUMBER_LONG:I = 0xb

.field protected static final STATE_QUOTED_BINARY:I = 0x1a

.field protected static final STATE_RAW_BINARY:I = 0x19

.field protected static final STATE_SHORT_ASCII:I = 0x14

.field protected static final STATE_SHORT_UNICODE:I = 0x15

.field protected static final STATE_TOKEN_COMPLETE:I = 0x2

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
.field protected final _cfgRequireHeader:Z

.field protected _currQuad:I

.field protected _currQuadBytes:I

.field protected _endOfInput:Z

.field protected _got32BitFloat:Z

.field protected _inputBuffer:[B

.field protected _mayContainRawBinary:Z

.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

.field protected _origBufferLen:I

.field protected _pendingInt:I

.field protected _pendingLong:J

.field private _quad1:I

.field private _quad2:I

.field protected _quadBuffer:[I

.field protected _quadCount:I

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

.field protected _state:I

.field protected _substate:I

.field protected final _symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

.field protected _tokenIncomplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    new-array v0, v1, [B

    sput-object v0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->NO_BYTES:[B

    .line 23
    new-array v0, v1, [I

    sput-object v0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->NO_INTS:[I

    .line 24
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->NO_STRINGS:[Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;IILcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;)V
    .locals 4
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "parserFeatures"    # I
    .param p3, "smileFeatures"    # I
    .param p4, "codec"    # Lcom/fasterxml/jackson/core/ObjectCodec;
    .param p5, "sym"    # Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 244
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;I)V

    .line 104
    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->NO_BYTES:[B

    iput-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    .line 163
    iput-boolean v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_endOfInput:Z

    .line 179
    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->NO_INTS:[I

    iput-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    .line 201
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currQuadBytes:I

    .line 208
    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->NO_STRINGS:[Ljava/lang/String;

    iput-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    .line 210
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    .line 217
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValues:[Ljava/lang/String;

    .line 219
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValueCount:I

    .line 245
    iput-object p4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 246
    iput-object p5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 248
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenInputRow:I

    .line 249
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenInputCol:I

    .line 250
    invoke-static {}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_smileBufferRecycler()Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    .line 252
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 253
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 254
    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 256
    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->REQUIRE_HEADER:Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->getMask()I

    move-result v2

    and-int/2addr v2, p3

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_cfgRequireHeader:Z

    .line 257
    return-void

    :cond_0
    move v0, v1

    .line 256
    goto :goto_0
.end method

.method private final _addDecodedToSymbols(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "len"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1614
    const/4 v1, 0x5

    if-ge p1, v1, :cond_0

    .line 1615
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quad1:I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1621
    :goto_0
    return-object v1

    .line 1617
    :cond_0
    const/16 v1, 0x9

    if-ge p1, v1, :cond_1

    .line 1618
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quad1:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quad2:I

    invoke-virtual {v1, p2, v2, v3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1620
    :cond_1
    add-int/lit8 v1, p1, 0x3

    shr-int/lit8 v0, v1, 0x2

    .line 1621
    .local v0, "qlen":I
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

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
    .line 678
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_finishToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 679
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValueCount:I

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 681
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValues:[Ljava/lang/String;

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValueCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValueCount:I

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 685
    :goto_0
    return-void

    .line 684
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_expandSeenStringValues()V

    goto :goto_0
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
    .line 1709
    and-int/lit8 v10, p2, 0x3

    .line 1718
    .local v10, "lastQuadBytes":I
    const/4 v12, 0x4

    if-ge v10, v12, :cond_7

    .line 1719
    add-int/lit8 v12, p3, -0x1

    aget v9, p1, v12

    .line 1721
    .local v9, "lastQuad":I
    add-int/lit8 v12, p3, -0x1

    rsub-int/lit8 v13, v10, 0x4

    shl-int/lit8 v13, v13, 0x3

    shl-int v13, v9, v13

    aput v13, p1, v12

    .line 1726
    :goto_0
    iget-object v12, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v3

    .line 1727
    .local v3, "cbuf":[C
    const/4 v6, 0x0

    .line 1729
    .local v6, "cix":I
    const/4 v8, 0x0

    .local v8, "ix":I
    move v7, v6

    .end local v6    # "cix":I
    .local v7, "cix":I
    :goto_1
    move/from16 v0, p2

    if-ge v8, v0, :cond_b

    .line 1730
    shr-int/lit8 v12, v8, 0x2

    aget v4, p1, v12

    .line 1731
    .local v4, "ch":I
    and-int/lit8 v2, v8, 0x3

    .line 1732
    .local v2, "byteIx":I
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int v12, v4, v12

    and-int/lit16 v4, v12, 0xff

    .line 1733
    add-int/lit8 v8, v8, 0x1

    .line 1735
    const/16 v12, 0x7f

    if-le v4, v12, :cond_d

    .line 1737
    and-int/lit16 v12, v4, 0xe0

    const/16 v13, 0xc0

    if-ne v12, v13, :cond_8

    .line 1738
    and-int/lit8 v4, v4, 0x1f

    .line 1739
    const/4 v11, 0x1

    .line 1750
    .local v11, "needed":I
    :goto_2
    add-int v12, v8, v11

    move/from16 v0, p2

    if-le v12, v0, :cond_0

    .line 1751
    const-string v12, " in long field name"

    invoke-virtual {p0, v12}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1755
    :cond_0
    shr-int/lit8 v12, v8, 0x2

    aget v5, p1, v12

    .line 1756
    .local v5, "ch2":I
    and-int/lit8 v2, v8, 0x3

    .line 1757
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v5, v12

    .line 1758
    add-int/lit8 v8, v8, 0x1

    .line 1760
    and-int/lit16 v12, v5, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_1

    .line 1761
    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportInvalidOther(I)V

    .line 1763
    :cond_1
    shl-int/lit8 v12, v4, 0x6

    and-int/lit8 v13, v5, 0x3f

    or-int v4, v12, v13

    .line 1764
    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 1765
    shr-int/lit8 v12, v8, 0x2

    aget v5, p1, v12

    .line 1766
    and-int/lit8 v2, v8, 0x3

    .line 1767
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v5, v12

    .line 1768
    add-int/lit8 v8, v8, 0x1

    .line 1770
    and-int/lit16 v12, v5, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_2

    .line 1771
    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportInvalidOther(I)V

    .line 1773
    :cond_2
    shl-int/lit8 v12, v4, 0x6

    and-int/lit8 v13, v5, 0x3f

    or-int v4, v12, v13

    .line 1774
    const/4 v12, 0x2

    if-le v11, v12, :cond_4

    .line 1775
    shr-int/lit8 v12, v8, 0x2

    aget v5, p1, v12

    .line 1776
    and-int/lit8 v2, v8, 0x3

    .line 1777
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v5, v12

    .line 1778
    add-int/lit8 v8, v8, 0x1

    .line 1779
    and-int/lit16 v12, v5, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_3

    .line 1780
    and-int/lit16 v12, v5, 0xff

    invoke-virtual {p0, v12}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportInvalidOther(I)V

    .line 1782
    :cond_3
    shl-int/lit8 v12, v4, 0x6

    and-int/lit8 v13, v5, 0x3f

    or-int v4, v12, v13

    .line 1785
    :cond_4
    const/4 v12, 0x2

    if-le v11, v12, :cond_d

    .line 1786
    const/high16 v12, 0x10000

    sub-int/2addr v4, v12

    .line 1787
    array-length v12, v3

    if-lt v7, v12, :cond_5

    .line 1788
    iget-object v12, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v3

    .line 1790
    :cond_5
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "cix":I
    .restart local v6    # "cix":I
    const v12, 0xd800

    shr-int/lit8 v13, v4, 0xa

    add-int/2addr v12, v13

    int-to-char v12, v12

    aput-char v12, v3, v7

    .line 1791
    const v12, 0xdc00

    and-int/lit16 v13, v4, 0x3ff

    or-int v4, v12, v13

    .line 1794
    .end local v5    # "ch2":I
    .end local v11    # "needed":I
    :goto_3
    array-length v12, v3

    if-lt v6, v12, :cond_6

    .line 1795
    iget-object v12, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v3

    .line 1797
    :cond_6
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "cix":I
    .restart local v7    # "cix":I
    int-to-char v12, v4

    aput-char v12, v3, v6

    goto/16 :goto_1

    .line 1723
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

    .line 1740
    .restart local v2    # "byteIx":I
    .restart local v3    # "cbuf":[C
    .restart local v4    # "ch":I
    .restart local v7    # "cix":I
    .restart local v8    # "ix":I
    :cond_8
    and-int/lit16 v12, v4, 0xf0

    const/16 v13, 0xe0

    if-ne v12, v13, :cond_9

    .line 1741
    and-int/lit8 v4, v4, 0xf

    .line 1742
    const/4 v11, 0x2

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .line 1743
    .end local v11    # "needed":I
    :cond_9
    and-int/lit16 v12, v4, 0xf8

    const/16 v13, 0xf0

    if-ne v12, v13, :cond_a

    .line 1744
    and-int/lit8 v4, v4, 0x7

    .line 1745
    const/4 v11, 0x3

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .line 1747
    .end local v11    # "needed":I
    :cond_a
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportInvalidInitial(I)V

    .line 1748
    const/4 v4, 0x1

    move v11, v4

    .restart local v11    # "needed":I
    goto/16 :goto_2

    .line 1801
    .end local v2    # "byteIx":I
    .end local v4    # "ch":I
    .end local v11    # "needed":I
    :cond_b
    new-instance v1, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v1, v3, v12, v7}, Ljava/lang/String;-><init>([CII)V

    .line 1803
    .local v1, "baseName":Ljava/lang/String;
    const/4 v12, 0x4

    if-ge v10, v12, :cond_c

    .line 1804
    add-int/lit8 v12, p3, -0x1

    aput v9, p1, v12

    .line 1806
    :cond_c
    iget-object v12, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

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
    .line 1628
    iget-object v8, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 1629
    .local v5, "outBuf":[C
    const/4 v6, 0x0

    .line 1630
    .local v6, "outPtr":I
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    .line 1631
    .local v0, "inBuf":[B
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    .line 1634
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

    .line 1635
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v8, v0, v3

    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 1636
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v3    # "inPtr":I
    aget-byte v8, v0, v2

    int-to-char v8, v8

    aput-char v8, v5, v6

    .line 1637
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v8, v0, v3

    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 1638
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

    .line 1640
    :cond_0
    and-int/lit8 v4, p1, 0x3

    .line 1641
    .local v4, "left":I
    if-lez v4, :cond_2

    .line 1642
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v8, v0, v3

    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 1643
    const/4 v8, 0x1

    if-le v4, v8, :cond_1

    .line 1644
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v3    # "inPtr":I
    aget-byte v8, v0, v2

    int-to-char v8, v8

    aput-char v8, v5, v6

    .line 1645
    const/4 v8, 0x2

    if-le v4, v8, :cond_2

    .line 1646
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v8, v0, v3

    int-to-char v8, v8

    aput-char v8, v5, v7

    .line 1650
    :cond_1
    :goto_1
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    .line 1651
    iget-object v8, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v8, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1652
    iget-object v8, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

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
    .line 1665
    const/4 v8, 0x0

    .line 1666
    .local v8, "outPtr":I
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v7

    .line 1667
    .local v7, "outBuf":[C
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    .line 1668
    .local v5, "inPtr":I
    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/2addr v10, p1

    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    .line 1669
    sget-object v1, Lcom/fasterxml/jackson/dataformat/smile/SmileConstants;->sUtf8UnitLengths:[I

    .line 1670
    .local v1, "codes":[I
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    .line 1671
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

    .line 1672
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    aget-byte v10, v4, v6

    and-int/lit16 v3, v10, 0xff

    .line 1673
    .local v3, "i":I
    aget v0, v1, v3

    .line 1674
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 1676
    packed-switch v0, :pswitch_data_0

    .line 1696
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

    invoke-virtual {p0, v10}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    :cond_0
    move v8, v9

    .line 1699
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    :goto_1
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "outPtr":I
    .restart local v9    # "outPtr":I
    int-to-char v10, v3

    aput-char v10, v7, v8

    move v6, v5

    .line 1700
    .end local v5    # "inPtr":I
    .restart local v6    # "inPtr":I
    goto :goto_0

    .line 1678
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

    .line 1679
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    goto :goto_1

    .line 1681
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

    .line 1684
    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    goto :goto_1

    .line 1686
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

    .line 1691
    const/high16 v10, 0x10000

    sub-int/2addr v3, v10

    .line 1692
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "outPtr":I
    .restart local v8    # "outPtr":I
    const v10, 0xd800

    shr-int/lit8 v11, v3, 0xa

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v7, v9

    .line 1693
    const v10, 0xdc00

    and-int/lit16 v11, v3, 0x3ff

    or-int v3, v10, v11

    move v5, v6

    .line 1694
    .end local v6    # "inPtr":I
    .restart local v5    # "inPtr":I
    goto :goto_1

    .line 1701
    .end local v0    # "code":I
    .end local v3    # "i":I
    .end local v5    # "inPtr":I
    .end local v8    # "outPtr":I
    .restart local v6    # "inPtr":I
    .restart local v9    # "outPtr":I
    :cond_1
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v10, v9}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 1702
    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 1676
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final _expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "oldShared"    # [Ljava/lang/String;

    .prologue
    const/16 v2, 0x400

    const/16 v5, 0x40

    const/4 v4, 0x0

    .line 1591
    array-length v0, p1

    .line 1593
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 1594
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->allocSeenNamesBuffer()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1595
    .local v1, "newShared":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1596
    new-array v1, v5, [Ljava/lang/String;

    .line 1606
    :cond_0
    :goto_0
    return-object v1

    .line 1598
    .end local v1    # "newShared":[Ljava/lang/String;
    :cond_1
    if-ne v0, v2, :cond_2

    .line 1599
    move-object v1, p1

    .line 1600
    .restart local v1    # "newShared":[Ljava/lang/String;
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    goto :goto_0

    .line 1602
    .end local v1    # "newShared":[Ljava/lang/String;
    :cond_2
    if-ne v0, v5, :cond_3

    const/16 v2, 0x100

    .line 1603
    .local v2, "newSize":I
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    .line 1604
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

    .line 689
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValues:[Ljava/lang/String;

    .line 690
    .local v3, "oldShared":[Ljava/lang/String;
    array-length v0, v3

    .line 692
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 693
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->allocSeenStringValuesBuffer()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 694
    .local v1, "newShared":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 695
    new-array v1, v6, [Ljava/lang/String;

    .line 705
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValues:[Ljava/lang/String;

    .line 706
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValues:[Ljava/lang/String;

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValueCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValueCount:I

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 707
    return-void

    .line 697
    .end local v1    # "newShared":[Ljava/lang/String;
    :cond_1
    if-ne v0, v2, :cond_2

    .line 698
    move-object v1, v3

    .line 699
    .restart local v1    # "newShared":[Ljava/lang/String;
    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValueCount:I

    goto :goto_0

    .line 701
    .end local v1    # "newShared":[Ljava/lang/String;
    :cond_2
    if-ne v0, v6, :cond_3

    const/16 v2, 0x100

    .line 702
    .local v2, "newSize":I
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    .line 703
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
    .line 1893
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    sub-int/2addr v5, v6

    if-ge v5, p1, :cond_0

    .line 1894
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_loadToHaveAtLeast(I)Z

    .line 1897
    :cond_0
    const/4 v5, 0x5

    if-ge p1, v5, :cond_2

    .line 1898
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    .line 1899
    .local v1, "inPtr":I
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    .line 1900
    .local v0, "inBuf":[B
    aget-byte v5, v0, v1

    and-int/lit16 v2, v5, 0xff

    .line 1901
    .local v2, "q":I
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1902
    shl-int/lit8 v5, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v2, v5, v6

    .line 1903
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1904
    shl-int/lit8 v5, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v2, v5, v6

    .line 1905
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1906
    shl-int/lit8 v5, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v2, v5, v6

    .line 1910
    :cond_1
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quad1:I

    .line 1911
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v5, v2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName(I)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v5

    .line 1938
    .end local v0    # "inBuf":[B
    .end local v1    # "inPtr":I
    .end local v2    # "q":I
    :goto_0
    return-object v5

    .line 1913
    :cond_2
    const/16 v5, 0x9

    if-ge p1, v5, :cond_4

    .line 1914
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    .line 1915
    .restart local v1    # "inPtr":I
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    .line 1917
    .restart local v0    # "inBuf":[B
    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v3, v5, 0x8

    .line 1918
    .local v3, "q1":I
    add-int/lit8 v1, v1, 0x1

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    .line 1919
    shl-int/lit8 v3, v3, 0x8

    .line 1920
    add-int/lit8 v1, v1, 0x1

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    .line 1921
    shl-int/lit8 v3, v3, 0x8

    .line 1922
    add-int/lit8 v1, v1, 0x1

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    .line 1923
    add-int/lit8 v1, v1, 0x1

    aget-byte v5, v0, v1

    and-int/lit16 v4, v5, 0xff

    .line 1924
    .local v4, "q2":I
    add-int/lit8 p1, p1, -0x5

    .line 1925
    if-lez p1, :cond_3

    .line 1926
    shl-int/lit8 v5, v4, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v4, v5, v6

    .line 1927
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_3

    .line 1928
    shl-int/lit8 v5, v4, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v4, v5, v6

    .line 1929
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_3

    .line 1930
    shl-int/lit8 v5, v4, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    and-int/lit16 v6, v6, 0xff

    add-int v4, v5, v6

    .line 1934
    :cond_3
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quad1:I

    .line 1935
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quad2:I

    .line 1936
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v5, v3, v4}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName(II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v5

    goto :goto_0

    .line 1938
    .end local v0    # "inBuf":[B
    .end local v1    # "inPtr":I
    .end local v3    # "q1":I
    .end local v4    # "q2":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_findDecodedMedium(I)Lcom/fasterxml/jackson/core/sym/Name;

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
    .line 1949
    add-int/lit8 v7, p1, 0x3

    shr-int/lit8 v0, v7, 0x2

    .line 1950
    .local v0, "bufLen":I
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    array-length v7, v7

    if-le v0, v7, :cond_0

    .line 1951
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    invoke-static {v7, v0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_growArrayTo([II)[I

    move-result-object v7

    iput-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    .line 1955
    :cond_0
    const/4 v4, 0x0

    .line 1956
    .local v4, "offset":I
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    .line 1957
    .local v2, "inPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    .line 1959
    .local v1, "inBuf":[B
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .local v3, "inPtr":I
    aget-byte v7, v1, v2

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v6, v7, 0x8

    .line 1960
    .local v6, "q":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v7, v1, v3

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 1961
    shl-int/lit8 v6, v6, 0x8

    .line 1962
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPtr":I
    .restart local v3    # "inPtr":I
    aget-byte v7, v1, v2

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 1963
    shl-int/lit8 v6, v6, 0x8

    .line 1964
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPtr":I
    .restart local v2    # "inPtr":I
    aget-byte v7, v1, v3

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 1965
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    aput v6, v7, v4

    .line 1966
    add-int/lit8 p1, p1, -0x4

    const/4 v7, 0x3

    if-gt p1, v7, :cond_3

    .line 1968
    if-lez p1, :cond_2

    .line 1969
    aget-byte v7, v1, v2

    and-int/lit16 v6, v7, 0xff

    .line 1970
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1971
    shl-int/lit8 v7, v6, 0x8

    add-int/lit8 v2, v2, 0x1

    aget-byte v8, v1, v2

    and-int/lit16 v8, v8, 0xff

    add-int v6, v7, v8

    .line 1972
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_1

    .line 1973
    shl-int/lit8 v7, v6, 0x8

    add-int/lit8 v2, v2, 0x1

    aget-byte v8, v1, v2

    and-int/lit16 v8, v8, 0xff

    add-int v6, v7, v8

    .line 1976
    :cond_1
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    aput v6, v7, v5

    .line 1978
    :goto_1
    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    iget-object v8, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

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

.method private static _growArrayTo([II)[I
    .locals 3
    .param p0, "arr"    # [I
    .param p1, "minSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 1983
    add-int/lit8 v1, p1, 0x4

    new-array v0, v1, [I

    .line 1984
    .local v0, "newArray":[I
    if-eqz p0, :cond_0

    .line 1986
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1988
    :cond_0
    return-object v0
.end method

.method private final _handleHeader(I)Z
    .locals 7
    .param p1, "substate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 949
    :cond_0
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-ge v2, v5, :cond_5

    .line 950
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v0, v2, v5

    .line 951
    .local v0, "b":B
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 953
    :pswitch_0
    const/16 v2, 0x29

    if-eq v0, v2, :cond_0

    .line 954
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed content: header signature not valid, starts with 0x3a but followed by 0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    .line 955
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", not 0x29"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 954
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 959
    :pswitch_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    .line 960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed content: signature not valid, starts with 0x3a, 0x29, but followed by 0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    .line 961
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", not 0x0A"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 960
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 965
    :pswitch_2
    shr-int/lit8 v2, v0, 0x4

    and-int/lit8 v1, v2, 0xf

    .line 967
    .local v1, "versionBits":I
    if-eqz v1, :cond_1

    .line 968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header version number bits (0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") indicate unrecognized version; only 0x0 handled by parser"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    .line 972
    :cond_1
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_2

    .line 973
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    .line 974
    const/4 v2, -0x1

    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    .line 977
    :cond_2
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    .line 978
    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->NO_STRINGS:[Ljava/lang/String;

    iput-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValues:[Ljava/lang/String;

    .line 979
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValueCount:I

    .line 981
    :cond_3
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_mayContainRawBinary:Z

    .line 982
    iput-boolean v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 989
    .end local v0    # "b":B
    .end local v1    # "versionBits":I
    :goto_2
    return v3

    .restart local v0    # "b":B
    .restart local v1    # "versionBits":I
    :cond_4
    move v2, v4

    .line 981
    goto :goto_1

    .line 986
    .end local v0    # "b":B
    .end local v1    # "versionBits":I
    :cond_5
    iput-boolean v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 987
    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 988
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    move v3, v4

    .line 989
    goto :goto_2

    .line 951
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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

    .line 1812
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    .line 1813
    .local v3, "inBuf":[B
    const/4 v7, 0x0

    .line 1814
    .local v7, "quads":I
    const/4 v2, 0x0

    .line 1815
    .local v2, "bytes":I
    const/4 v6, 0x0

    .line 1818
    .local v6, "q":I
    :goto_0
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-lt v9, v10, :cond_0

    .line 1819
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->loadMoreGuaranteed()V

    .line 1821
    :cond_0
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v0, v3, v9

    .line 1822
    .local v0, "b":B
    if-ne v11, v0, :cond_5

    .line 1823
    const/4 v2, 0x0

    .line 1860
    :goto_1
    shl-int/lit8 v1, v7, 0x2

    .line 1861
    .local v1, "byteLen":I
    if-lez v2, :cond_2

    .line 1862
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    array-length v9, v9

    if-lt v7, v9, :cond_1

    .line 1863
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    array-length v10, v10

    add-int/lit16 v10, v10, 0x100

    invoke-static {v9, v10}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_growArrayTo([II)[I

    move-result-object v9

    iput-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    .line 1865
    :cond_1
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "quads":I
    .local v8, "quads":I
    aput v6, v9, v7

    .line 1866
    add-int/2addr v1, v2

    move v7, v8

    .line 1871
    .end local v8    # "quads":I
    .restart local v7    # "quads":I
    :cond_2
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    invoke-virtual {v9, v10, v7}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName([II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v4

    .line 1872
    .local v4, "n":Lcom/fasterxml/jackson/core/sym/Name;
    if-eqz v4, :cond_d

    .line 1873
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1877
    .local v5, "name":Ljava/lang/String;
    :goto_2
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 1878
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    array-length v10, v10

    if-lt v9, v10, :cond_3

    .line 1879
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    .line 1881
    :cond_3
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    aput-object v5, v9, v10

    .line 1883
    :cond_4
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v9, v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1884
    return-void

    .line 1826
    .end local v1    # "byteLen":I
    .end local v4    # "n":Lcom/fasterxml/jackson/core/sym/Name;
    .end local v5    # "name":Ljava/lang/String;
    :cond_5
    and-int/lit16 v6, v0, 0xff

    .line 1827
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-lt v9, v10, :cond_6

    .line 1828
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->loadMoreGuaranteed()V

    .line 1830
    :cond_6
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v0, v3, v9

    .line 1831
    if-ne v11, v0, :cond_7

    .line 1832
    const/4 v2, 0x1

    .line 1833
    goto :goto_1

    .line 1835
    :cond_7
    shl-int/lit8 v9, v6, 0x8

    and-int/lit16 v10, v0, 0xff

    or-int v6, v9, v10

    .line 1836
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-lt v9, v10, :cond_8

    .line 1837
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->loadMoreGuaranteed()V

    .line 1839
    :cond_8
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v0, v3, v9

    .line 1840
    if-ne v11, v0, :cond_9

    .line 1841
    const/4 v2, 0x2

    .line 1842
    goto :goto_1

    .line 1844
    :cond_9
    shl-int/lit8 v9, v6, 0x8

    and-int/lit16 v10, v0, 0xff

    or-int v6, v9, v10

    .line 1845
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-lt v9, v10, :cond_a

    .line 1846
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->loadMoreGuaranteed()V

    .line 1848
    :cond_a
    iget v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v0, v3, v9

    .line 1849
    if-ne v11, v0, :cond_b

    .line 1850
    const/4 v2, 0x3

    .line 1851
    goto/16 :goto_1

    .line 1853
    :cond_b
    shl-int/lit8 v9, v6, 0x8

    and-int/lit16 v10, v0, 0xff

    or-int v6, v9, v10

    .line 1854
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    array-length v9, v9

    if-lt v7, v9, :cond_c

    .line 1855
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    iget-object v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    array-length v10, v10

    add-int/lit16 v10, v10, 0x100

    invoke-static {v9, v10}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_growArrayTo([II)[I

    move-result-object v9

    iput-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    .line 1857
    :cond_c
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "quads":I
    .restart local v8    # "quads":I
    aput v6, v9, v7

    move v7, v8

    .line 1858
    .end local v8    # "quads":I
    .restart local v7    # "quads":I
    goto/16 :goto_0

    .line 1875
    .restart local v1    # "byteLen":I
    .restart local v4    # "n":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_d
    iget-object v9, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_quadBuffer:[I

    invoke-direct {p0, v9, v1, v7}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_decodeLongUnicodeName([III)Lcom/fasterxml/jackson/core/sym/Name;

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
    .line 668
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValueCount:I

    if-lt p1, v0, :cond_0

    .line 669
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportInvalidSharedStringValue(I)V

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValues:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithString(Ljava/lang/String;)V

    .line 672
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method private final _nextBigDecimal(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .param p1, "substate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 911
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    .line 913
    const/16 v0, 0xf

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 914
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method private final _nextBigInt(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .param p1, "substate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 848
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 849
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    .line 851
    const/16 v0, 0xf

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 852
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method private final _nextDouble(IJ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .param p1, "substate"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 890
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-ge v1, v2, :cond_1

    .line 891
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 892
    .local v0, "b":I
    const/4 v1, 0x7

    shl-long v2, p2, v1

    int-to-long v4, v0

    add-long p2, v2, v4

    .line 893
    add-int/lit8 p1, p1, 0x1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 894
    invoke-static {p2, p3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_numberDouble:D

    .line 895
    const/16 v1, 0x8

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_numTypesValid:I

    .line 896
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 897
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 904
    .end local v0    # "b":I
    :goto_0
    return-object v1

    .line 900
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 901
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    .line 902
    iput-wide p2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_pendingLong:J

    .line 903
    const/16 v1, 0xe

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 904
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0
.end method

.method private final _nextFloat(II)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .param p1, "substate"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 871
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-ge v1, v2, :cond_1

    .line 872
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 873
    .local v0, "b":I
    shl-int/lit8 v1, p2, 0x7

    add-int p2, v1, v0

    .line 874
    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 875
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    float-to-double v2, v1

    iput-wide v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_numberDouble:D

    .line 876
    const/16 v1, 0x8

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_numTypesValid:I

    .line 877
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 878
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 885
    .end local v0    # "b":I
    :goto_0
    return-object v1

    .line 881
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 882
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    .line 883
    iput p2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_pendingInt:I

    .line 884
    const/16 v1, 0xd

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 885
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0
.end method

.method private final _nextInt(II)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5
    .param p1, "substate"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 797
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-ge v1, v2, :cond_2

    .line 798
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 799
    .local v0, "b":I
    if-gez v0, :cond_0

    .line 800
    shl-int/lit8 v1, p2, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int p2, v1, v2

    .line 801
    invoke-static {p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagDecode(I)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_numberInt:I

    .line 802
    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_numTypesValid:I

    .line 803
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 804
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 817
    .end local v0    # "b":I
    :goto_1
    return-object v1

    .line 807
    .restart local v0    # "b":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x5

    if-lt p1, v1, :cond_1

    .line 808
    const-string v1, "Corrupt input; 32-bit VInt extends beyond 5 data bytes"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    .line 810
    :cond_1
    shl-int/lit8 v1, p2, 0x7

    or-int p2, v1, v0

    .line 811
    goto :goto_0

    .line 813
    .end local v0    # "b":I
    :cond_2
    iput-boolean v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 814
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    .line 815
    iput p2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_pendingInt:I

    .line 816
    const/16 v1, 0xa

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 817
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1
.end method

.method private final _nextLong(IJ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .param p1, "substate"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 822
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-ge v1, v2, :cond_2

    .line 823
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 824
    .local v0, "b":I
    if-gez v0, :cond_0

    .line 825
    const/4 v1, 0x6

    shl-long v2, p2, v1

    and-int/lit8 v1, v0, 0x3f

    int-to-long v4, v1

    or-long p2, v2, v4

    .line 826
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagDecode(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_numberLong:J

    .line 827
    const/4 v1, 0x2

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_numTypesValid:I

    .line 828
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 829
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 842
    .end local v0    # "b":I
    :goto_1
    return-object v1

    .line 832
    .restart local v0    # "b":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    const/16 v1, 0xa

    if-lt p1, v1, :cond_1

    .line 833
    const-string v1, "Corrupt input; 64-bit VInt extends beyond 10 data bytes"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    .line 835
    :cond_1
    const/4 v1, 0x7

    shl-long v2, p2, v1

    int-to-long v4, v0

    or-long p2, v2, v4

    .line 836
    goto :goto_0

    .line 838
    .end local v0    # "b":I
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 839
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    .line 840
    iput-wide p2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_pendingLong:J

    .line 841
    const/16 v1, 0xb

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 842
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1
.end method

.method private final _nextLongAscii(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .param p1, "substate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1079
    const/16 v0, 0x16

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 1080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 1081
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    .line 1082
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method private final _nextLongSharedString(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .param p1, "substate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 1215
    const/16 v0, 0x18

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 1216
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    .line 1217
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method private final _nextLongUnicode(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .param p1, "substate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1120
    const/16 v0, 0x17

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 1121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 1122
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    .line 1123
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method private final _nextQuotedBinary(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .param p1, "substate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 1258
    const/16 v0, 0x1a

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 1259
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    .line 1260
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method private final _nextRawBinary(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .param p1, "substate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 1224
    const/16 v0, 0x19

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 1225
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    .line 1226
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method private final _nextShortAscii(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .param p1, "substate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 994
    const/16 v0, 0x14

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 995
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 996
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    .line 997
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method private final _nextShortUnicode(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .param p1, "substate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1002
    const/16 v0, 0x15

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 1003
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    .line 1004
    iput p1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    .line 1005
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
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
    .line 329
    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 330
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler<Ljava/lang/String;>;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 332
    .local v0, "br":Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;, "Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler<Ljava/lang/String;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    .end local v0    # "br":Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;, "Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler<Ljava/lang/String;>;"
    invoke-direct {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;-><init>()V

    .line 334
    .restart local v0    # "br":Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;, "Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler<Ljava/lang/String;>;"
    sget-object v2, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_smileRecyclerRef:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 336
    :cond_0
    return-object v0

    .line 330
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    return-void
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
    .line 437
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_throwInternal()V

    .line 438
    return-void
.end method

.method protected final _finishToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2013
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 2014
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 2074
    :goto_0
    return-object v2

    .line 2016
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 2020
    .local v0, "b":B
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    if-nez v2, :cond_7

    .line 2021
    const/16 v2, 0x3a

    if-ne v0, v2, :cond_4

    .line 2022
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_handleHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2023
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 2026
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-lt v2, v3, :cond_2

    .line 2027
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 2029
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 2059
    :cond_3
    :goto_1
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    packed-switch v2, :pswitch_data_0

    .line 2073
    const-string v2, "Illegal state when trying to complete token: "

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_throwInvalidState(Ljava/lang/String;)V

    .line 2074
    const/4 v2, 0x0

    goto :goto_0

    .line 2033
    :cond_4
    iget-boolean v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_cfgRequireHeader:Z

    if-eqz v2, :cond_3

    .line 2035
    const/16 v2, 0x7b

    if-eq v0, v2, :cond_5

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_6

    .line 2036
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input does not start with Smile format header (first byte = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit16 v3, v0, 0xff

    .line 2037
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") -- rather, it starts with \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (plain JSON input?) -- can not parse"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2043
    .local v1, "msg":Ljava/lang/String;
    :goto_2
    new-instance v2, Lcom/fasterxml/jackson/core/JsonParseException;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-direct {v2, v1, v3}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v2

    .line 2040
    .end local v1    # "msg":Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input does not start with Smile format header (first byte = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit16 v3, v0, 0xff

    .line 2041
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") and parser has REQUIRE_HEADER enabled: can not parse"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_2

    .line 2047
    .end local v1    # "msg":Ljava/lang/String;
    :cond_7
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2048
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_handleHeader(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2049
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 2052
    :cond_8
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-lt v2, v3, :cond_9

    .line 2053
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 2055
    :cond_9
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v0, v2, v3

    goto/16 :goto_1

    .line 2061
    :pswitch_0
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_pendingInt:I

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextInt(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto/16 :goto_0

    .line 2063
    :pswitch_1
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    iget-wide v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_pendingLong:J

    invoke-direct {p0, v2, v4, v5}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextLong(IJ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto/16 :goto_0

    .line 2065
    :pswitch_2
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextBigInt(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto/16 :goto_0

    .line 2067
    :pswitch_3
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_pendingInt:I

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextFloat(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto/16 :goto_0

    .line 2069
    :pswitch_4
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    iget-wide v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_pendingLong:J

    invoke-direct {p0, v2, v4, v5}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextDouble(IJ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto/16 :goto_0

    .line 2071
    :pswitch_5
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_substate:I

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextBigDecimal(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto/16 :goto_0

    .line 2059
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
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
    .line 1483
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-lt v5, v6, :cond_0

    .line 1484
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->loadMoreGuaranteed()V

    .line 1486
    :cond_0
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v0, v5, v6

    .line 1487
    .local v0, "ch":I
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_0

    .line 1579
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid type marker byte 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v7, v7, -0x1

    aget-byte v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for expected field name (or END_OBJECT marker)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    .line 1581
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 1489
    :pswitch_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1491
    :sswitch_0
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1492
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 1498
    :sswitch_1
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-lt v5, v6, :cond_2

    .line 1499
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->loadMoreGuaranteed()V

    .line 1501
    :cond_2
    and-int/lit8 v5, v0, 0x3

    shl-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    add-int v1, v5, v6

    .line 1502
    .local v1, "index":I
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    if-lt v1, v5, :cond_3

    .line 1503
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportInvalidSharedName(I)V

    .line 1505
    :cond_3
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1507
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 1509
    .end local v1    # "index":I
    :sswitch_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_handleLongFieldName()V

    .line 1510
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 1515
    :pswitch_1
    and-int/lit8 v1, v0, 0x3f

    .line 1516
    .restart local v1    # "index":I
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    if-lt v1, v5, :cond_4

    .line 1517
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportInvalidSharedName(I)V

    .line 1519
    :cond_4
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1521
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 1524
    .end local v1    # "index":I
    :pswitch_2
    and-int/lit8 v5, v0, 0x3f

    add-int/lit8 v2, v5, 0x1

    .line 1526
    .local v2, "len":I
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_findDecodedFromSymbols(I)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v3

    .line 1527
    .local v3, "n":Lcom/fasterxml/jackson/core/sym/Name;
    if-eqz v3, :cond_7

    .line 1528
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1529
    .local v4, "name":Ljava/lang/String;
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    .line 1534
    :goto_2
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 1535
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    array-length v6, v6

    if-lt v5, v6, :cond_5

    .line 1536
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    .line 1538
    :cond_5
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    aput-object v4, v5, v6

    .line 1540
    :cond_6
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1542
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_1

    .line 1531
    .end local v4    # "name":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_decodeShortAsciiName(I)Ljava/lang/String;

    move-result-object v4

    .line 1532
    .restart local v4    # "name":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_addDecodedToSymbols(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1545
    .end local v2    # "len":I
    .end local v3    # "n":Lcom/fasterxml/jackson/core/sym/Name;
    .end local v4    # "name":Ljava/lang/String;
    :pswitch_3
    and-int/lit8 v0, v0, 0x3f

    .line 1547
    const/16 v5, 0x37

    if-le v0, v5, :cond_9

    .line 1548
    const/16 v5, 0x3b

    if-ne v0, v5, :cond_1

    .line 1549
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1550
    const/16 v5, 0x7d

    const/16 v6, 0x5d

    invoke-virtual {p0, v5, v6}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportMismatchedEndMarker(IC)V

    .line 1552
    :cond_8
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 1553
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_1

    .line 1556
    :cond_9
    add-int/lit8 v2, v0, 0x2

    .line 1558
    .restart local v2    # "len":I
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_findDecodedFromSymbols(I)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v3

    .line 1559
    .restart local v3    # "n":Lcom/fasterxml/jackson/core/sym/Name;
    if-eqz v3, :cond_c

    .line 1560
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1561
    .restart local v4    # "name":Ljava/lang/String;
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    .line 1566
    :goto_3
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 1567
    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    iget-object v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    array-length v6, v6

    if-lt v5, v6, :cond_a

    .line 1568
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_expandSeenNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    .line 1570
    :cond_a
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    aput-object v4, v5, v6

    .line 1572
    :cond_b
    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 1573
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_1

    .line 1563
    .end local v4    # "name":Ljava/lang/String;
    :cond_c
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_decodeShortUnicodeName(I)Ljava/lang/String;

    move-result-object v4

    .line 1564
    .restart local v4    # "name":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_addDecodedToSymbols(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 1487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1489
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
    .locals 1
    .param p1, "minAvailable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_throwInternal()V

    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method protected _parseNumericValue(I)V
    .locals 1
    .param p1, "expType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 2001
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 2002
    const-string v0, "No current token available, can not call accessors"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    .line 2004
    :cond_0
    return-void
.end method

.method protected _releaseBuffers()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 472
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_releaseBuffers()V

    .line 474
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    .line 475
    .local v0, "nameBuf":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 476
    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    .line 480
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    if-lez v2, :cond_0

    .line 481
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    invoke-static {v0, v4, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 483
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->releaseSeenNamesBuffer([Ljava/lang/Object;)V

    .line 487
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValues:[Ljava/lang/String;

    .line 488
    .local v1, "valueBuf":[Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    .line 489
    iput-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValues:[Ljava/lang/String;

    .line 493
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValueCount:I

    if-lez v2, :cond_2

    .line 494
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValueCount:I

    invoke-static {v1, v4, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 496
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_smileBufferRecycler:Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileBufferRecycler;->releaseSeenStringValuesBuffer([Ljava/lang/Object;)V

    .line 499
    :cond_3
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
    .line 2198
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 2199
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_throwInvalidSpace(I)V

    .line 2201
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportInvalidInitial(I)V

    .line 2202
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
    .line 2207
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

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    .line 2208
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
    .line 2213
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

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    .line 2214
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
    .line 2219
    iput p2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    .line 2220
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportInvalidOther(I)V

    .line 2221
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
    .line 2181
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2182
    const-string v0, "Encountered shared name reference, even though document header explicitly declared no shared name references are included"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    .line 2184
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

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " names in buffer (invalid content)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    .line 2185
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
    .line 2189
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2190
    const-string v0, "Encountered shared text value reference, even though document header did not declared shared text value references may be included"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    .line 2192
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

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValueCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " names in buffer (invalid content)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    .line 2193
    return-void
.end method

.method protected _throwInvalidState(Ljava/lang/String;)V
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 2225
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->close()V

    .line 445
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->release()V

    .line 446
    return-void
.end method

.method public endOfInput()V
    .locals 1

    .prologue
    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_endOfInput:Z

    .line 759
    return-void
.end method

.method public feedInput([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 739
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-ge v0, v1, :cond_0

    .line 740
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " undecoded bytes, should not call \'feedInput\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_endOfInput:Z

    if-eqz v0, :cond_1

    .line 744
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed, can not feed more input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_1
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currInputProcessed:J

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_origBufferLen:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currInputProcessed:J

    .line 748
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currInputRowStart:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_origBufferLen:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currInputRowStart:I

    .line 751
    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    .line 752
    iput p2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    .line 753
    add-int v0, p2, p3

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    .line 754
    iput p3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_origBufferLen:I

    .line 755
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
    .line 1447
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    .line 1451
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_binaryValue:[B

    return-object v0
.end method

.method public getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 8

    .prologue
    .line 395
    iget-wide v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currInputProcessed:J

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    int-to-long v4, v4

    add-long v2, v0, v4

    .line 396
    .local v2, "offset":J
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    long-to-int v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

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
    .line 1458
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_binaryValue:[B

    .line 1461
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

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
    .line 719
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_got32BitFloat:Z

    if-eqz v0, :cond_0

    .line 720
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    .line 722
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1348
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_1

    .line 1349
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v1

    .line 1365
    :cond_0
    :goto_0
    return-object v1

    .line 1351
    :cond_1
    iget-boolean v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    if-nez v2, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 1355
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-eqz v0, :cond_0

    .line 1358
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 1359
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1361
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1363
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->getNumberValue()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1365
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTextCharacters()[C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1372
    iget-object v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v3, :cond_0

    .line 1373
    sget-object v3, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1396
    iget-boolean v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    if-eqz v3, :cond_4

    .line 1402
    :cond_0
    :goto_0
    return-object v2

    .line 1375
    :pswitch_0
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v2

    goto :goto_0

    .line 1377
    :pswitch_1
    iget-boolean v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nameCopied:Z

    if-nez v2, :cond_2

    .line 1378
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 1379
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1380
    .local v1, "nameLen":I
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nameCopyBuffer:[C

    if-nez v2, :cond_3

    .line 1381
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nameCopyBuffer:[C

    .line 1385
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nameCopyBuffer:[C

    invoke-virtual {v0, v5, v1, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1386
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nameCopied:Z

    .line 1388
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameLen":I
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nameCopyBuffer:[C

    goto :goto_0

    .line 1382
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "nameLen":I
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nameCopyBuffer:[C

    array-length v2, v2

    if-ge v2, v1, :cond_1

    .line 1383
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nameCopyBuffer:[C

    goto :goto_1

    .line 1394
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameLen":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->getNumberValue()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    goto :goto_0

    .line 1399
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v2

    goto :goto_0

    .line 1373
    :pswitch_data_0
    .packed-switch 0x1
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
    .line 1409
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_1

    .line 1410
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    .line 1411
    const/4 v0, -0x1

    .line 1428
    :goto_0
    return v0

    .line 1413
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1425
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    .line 1415
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    goto :goto_0

    .line 1417
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 1422
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->getNumberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 1428
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1413
    :pswitch_data_0
    .packed-switch 0x1
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
    .line 1434
    const/4 v0, 0x0

    return v0
.end method

.method public getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 10

    .prologue
    .line 383
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenInputTotal:J

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    iget-wide v8, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenInputTotal:J

    long-to-int v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
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

    .line 279
    if-eqz p1, :cond_0

    .line 280
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    .line 282
    :cond_0
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-lt v4, v5, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->loadMoreGuaranteed()V

    .line 285
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v4, v4, v5

    const/16 v5, 0x29

    if-eq v4, v5, :cond_3

    .line 286
    if-eqz p2, :cond_2

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed content: signature not valid, starts with 0x3a but followed by 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v4, v4, v5

    .line 288
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not 0x29"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    .line 324
    :cond_2
    :goto_0
    return v2

    .line 292
    :cond_3
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-lt v4, v5, :cond_4

    .line 293
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->loadMoreGuaranteed()V

    .line 295
    :cond_4
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v4, v4, v5

    const/16 v5, 0xa

    if-eq v4, v5, :cond_5

    .line 296
    if-eqz p2, :cond_2

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed content: signature not valid, starts with 0x3a, 0x29, but followed by 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v4, v4, v5

    .line 298
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not 0xA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_5
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-lt v4, v5, :cond_6

    .line 304
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->loadMoreGuaranteed()V

    .line 306
    :cond_6
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v0, v4, v5

    .line 307
    .local v0, "ch":I
    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v1, v4, 0xf

    .line 309
    .local v1, "versionBits":I
    if-eqz v1, :cond_7

    .line 310
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

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    .line 314
    :cond_7
    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_8

    .line 315
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNames:[Ljava/lang/String;

    .line 316
    const/4 v4, -0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenNameCount:I

    .line 319
    :cond_8
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_9

    .line 320
    sget-object v4, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->NO_STRINGS:[Ljava/lang/String;

    iput-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValues:[Ljava/lang/String;

    .line 321
    iput v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValueCount:I

    .line 323
    :cond_9
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_a

    move v2, v3

    :cond_a
    iput-boolean v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_mayContainRawBinary:Z

    move v2, v3

    .line 324
    goto/16 :goto_0
.end method

.method public hasTextCharacters()Z
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 453
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->hasTextAsCharacters()Z

    move-result v0

    .line 460
    :goto_0
    return v0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 457
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nameCopied:Z

    goto :goto_0

    .line 460
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final loadMore()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_throwInternal()V

    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public mayContainRawBinary()Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_mayContainRawBinary:Z

    return v0
.end method

.method public final needMoreInput()Z
    .locals 2

    .prologue
    .line 732
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_endOfInput:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 520
    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_numTypesValid:I

    .line 522
    iget-boolean v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    if-eqz v2, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_finishToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 662
    :goto_0
    return-object v1

    .line 526
    :cond_0
    iget-wide v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currInputProcessed:J

    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenInputTotal:J

    .line 528
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_binaryValue:[B

    .line 530
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    .line 531
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_handleFieldName()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 533
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    if-lt v2, v3, :cond_2

    .line 534
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 536
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    aget-byte v0, v2, v3

    .line 537
    .local v0, "ch":I
    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x7

    packed-switch v2, :pswitch_data_0

    .line 661
    :goto_1
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type marker byte 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit16 v3, v0, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for expected value token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :pswitch_1
    if-nez v0, :cond_3

    .line 540
    const-string v1, "Invalid token byte 0x00"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    .line 542
    :cond_3
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_handleSharedString(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 546
    :pswitch_2
    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_numTypesValid:I

    .line 547
    and-int/lit8 v2, v0, 0x1f

    packed-switch v2, :pswitch_data_1

    :pswitch_3
    goto :goto_1

    .line 549
    :pswitch_4
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithEmpty()V

    .line 550
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 552
    :pswitch_5
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 554
    :pswitch_6
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 556
    :pswitch_7
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 558
    :pswitch_8
    const/16 v1, 0xa

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 559
    invoke-direct {p0, v6, v6}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextInt(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 561
    :pswitch_9
    iput-wide v8, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_numberLong:J

    .line 562
    const/16 v1, 0xb

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 563
    invoke-direct {p0, v6, v8, v9}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextLong(IJ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 565
    :pswitch_a
    const/16 v1, 0xc

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 566
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextBigInt(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 570
    :pswitch_b
    iput v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_pendingInt:I

    .line 571
    const/16 v1, 0xd

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 572
    iput-boolean v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_got32BitFloat:Z

    .line 573
    invoke-direct {p0, v6, v6}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextFloat(II)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 575
    :pswitch_c
    iput-wide v8, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_pendingLong:J

    .line 576
    const/16 v1, 0xe

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 577
    iput-boolean v6, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_got32BitFloat:Z

    .line 578
    invoke-direct {p0, v6, v8, v9}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextDouble(IJ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 580
    :pswitch_d
    const/16 v1, 0xf

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    .line 581
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextBigDecimal(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 585
    :pswitch_e
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_handleHeader(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 586
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 594
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-nez v2, :cond_5

    .line 595
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 597
    :cond_5
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 606
    :pswitch_f
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextShortAscii(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 612
    :pswitch_10
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 613
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_seenStringValueCount:I

    if-ltz v1, :cond_6

    .line 614
    invoke-direct {p0}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_addSeenStringValue()V

    .line 618
    :goto_2
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextShortUnicode(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 616
    :cond_6
    iput-boolean v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    goto :goto_2

    .line 621
    :pswitch_11
    and-int/lit8 v1, v0, 0x1f

    invoke-static {v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileUtil;->zigzagDecode(I)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_numberInt:I

    .line 622
    iput v10, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_numTypesValid:I

    .line 623
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 625
    :pswitch_12
    and-int/lit8 v2, v0, 0x1f

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    .line 627
    :sswitch_0
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextLongAscii(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 629
    :sswitch_1
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextLongUnicode(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 631
    :sswitch_2
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextQuotedBinary(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 636
    :sswitch_3
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextLongSharedString(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 639
    :sswitch_4
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1, v7, v7}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 640
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 642
    :sswitch_5
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v1

    if-nez v1, :cond_7

    .line 643
    const/16 v1, 0x5d

    const/16 v2, 0x7d

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportMismatchedEndMarker(IC)V

    .line 645
    :cond_7
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 646
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 648
    :sswitch_6
    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1, v7, v7}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 649
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 651
    :sswitch_7
    const-string v1, "Invalid type marker byte 0xFB in value mode (would be END_OBJECT in key mode)"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_reportError(Ljava/lang/String;)V

    .line 654
    :sswitch_8
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_nextRawBinary(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 656
    :sswitch_9
    iput-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 547
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_e
    .end packed-switch

    .line 625
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_3
        0xe -> :sswitch_3
        0xf -> :sswitch_3
        0x18 -> :sswitch_4
        0x19 -> :sswitch_5
        0x1a -> :sswitch_6
        0x1b -> :sswitch_7
        0x1d -> :sswitch_8
        0x1f -> :sswitch_9
    .end sparse-switch
.end method

.method public peekNextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_tokenIncomplete:Z

    if-nez v0, :cond_0

    .line 770
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 783
    :goto_0
    return-object v0

    .line 772
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 785
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: unknown \'state\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :pswitch_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 776
    :pswitch_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 779
    :pswitch_3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 783
    :pswitch_4
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 772
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .locals 1
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1468
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 359
    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputEnd:I

    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    sub-int v0, v2, v3

    .line 360
    .local v0, "count":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 366
    .end local v0    # "count":I
    :goto_0
    return v0

    .line 364
    .restart local v0    # "count":I
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputPtr:I

    .line 365
    .local v1, "origPtr":I
    iget-object v2, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_inputBuffer:[B

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)V
    .locals 0
    .param p1, "c"    # Lcom/fasterxml/jackson/core/ObjectCodec;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/async/NonBlockingParserImpl;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 267
    return-void
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 347
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method
