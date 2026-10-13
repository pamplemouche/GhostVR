.class public Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;
.super Ljava/lang/Object;
.source "SmileParserBootstrapper.java"


# instance fields
.field protected final _bufferRecyclable:Z

.field protected final _context:Lcom/fasterxml/jackson/core/io/IOContext;

.field protected final _in:Ljava/io/InputStream;

.field protected final _inputBuffer:[B

.field protected _inputEnd:I

.field protected _inputProcessed:I

.field protected _inputPtr:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 70
    iput-object p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_in:Ljava/io/InputStream;

    .line 71
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocReadIOBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputBuffer:[B

    .line 72
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputEnd:I

    .line 73
    iput v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputProcessed:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_bufferRecyclable:Z

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;[BII)V
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "inputBuffer"    # [B
    .param p3, "inputStart"    # I
    .param p4, "inputLen"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_in:Ljava/io/InputStream;

    .line 81
    iput-object p2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputBuffer:[B

    .line 82
    iput p3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputPtr:I

    .line 83
    add-int v0, p3, p4

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputEnd:I

    .line 85
    neg-int v0, p3

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputProcessed:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_bufferRecyclable:Z

    .line 87
    return-void
.end method

.method public static hasSmileFormat(Lcom/fasterxml/jackson/core/format/InputAccessor;)Lcom/fasterxml/jackson/core/format/MatchStrength;
    .locals 5
    .param p0, "acc"    # Lcom/fasterxml/jackson/core/format/InputAccessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    sget-object v3, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    .line 192
    :goto_0
    return-object v3

    .line 144
    :cond_0
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->nextByte()B

    move-result v0

    .line 145
    .local v0, "b1":B
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_1

    .line 146
    sget-object v3, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 148
    :cond_1
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->nextByte()B

    move-result v1

    .line 151
    .local v1, "b2":B
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_5

    .line 152
    const/16 v3, 0x29

    if-eq v1, v3, :cond_2

    .line 153
    sget-object v3, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 155
    :cond_2
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_3

    .line 156
    sget-object v3, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 158
    :cond_3
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->nextByte()B

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    sget-object v3, Lcom/fasterxml/jackson/core/format/MatchStrength;->FULL_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 162
    :cond_5
    const/4 v3, -0x6

    if-ne v0, v3, :cond_8

    .line 166
    const/16 v3, 0x34

    if-ne v1, v3, :cond_6

    .line 167
    sget-object v3, Lcom/fasterxml/jackson/core/format/MatchStrength;->SOLID_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 169
    :cond_6
    and-int/lit16 v2, v1, 0xff

    .line 170
    .local v2, "ch":I
    const/16 v3, 0x80

    if-lt v2, v3, :cond_7

    const/16 v3, 0xf8

    if-ge v2, v3, :cond_7

    .line 171
    sget-object v3, Lcom/fasterxml/jackson/core/format/MatchStrength;->SOLID_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 173
    :cond_7
    sget-object v3, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 176
    .end local v2    # "ch":I
    :cond_8
    const/4 v3, -0x8

    if-ne v0, v3, :cond_c

    .line 177
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_9

    .line 178
    sget-object v3, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 183
    :cond_9
    invoke-static {v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->likelySmileValue(B)Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->possibleSmileValue(BZ)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 184
    :cond_a
    sget-object v3, Lcom/fasterxml/jackson/core/format/MatchStrength;->SOLID_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 186
    :cond_b
    sget-object v3, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 189
    :cond_c
    invoke-static {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->likelySmileValue(B)Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->possibleSmileValue(BZ)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 190
    :cond_d
    sget-object v3, Lcom/fasterxml/jackson/core/format/MatchStrength;->SOLID_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 192
    :cond_e
    sget-object v3, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0
.end method

.method private static likelySmileValue(B)Z
    .locals 3
    .param p0, "b"    # B

    .prologue
    const/4 v1, 0x1

    .line 197
    const/16 v2, -0x20

    if-eq p0, v2, :cond_0

    const/16 v2, -0x1c

    if-eq p0, v2, :cond_0

    const/16 v2, -0x18

    if-eq p0, v2, :cond_0

    const/4 v2, -0x8

    if-eq p0, v2, :cond_0

    const/4 v2, -0x6

    if-ne p0, v2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v1

    .line 205
    :cond_1
    and-int/lit16 v0, p0, 0xff

    .line 207
    .local v0, "ch":I
    const/16 v2, 0x80

    if-lt v0, v2, :cond_2

    const/16 v2, 0x9f

    if-le v0, v2, :cond_0

    .line 210
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static possibleSmileValue(BZ)Z
    .locals 4
    .param p0, "b"    # B
    .param p1, "lenient"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 219
    and-int/lit16 v0, p0, 0xff

    .line 221
    .local v0, "ch":I
    const/16 v3, 0x80

    if-lt v0, v3, :cond_2

    .line 222
    const/16 v3, 0xe0

    if-gt v0, v3, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 222
    goto :goto_0

    .line 224
    :cond_2
    if-eqz p1, :cond_3

    .line 225
    const/16 v3, 0x40

    if-ge v0, v3, :cond_0

    .line 228
    const/16 v3, -0x20

    if-le v0, v3, :cond_3

    .line 229
    const/16 v3, 0x2c

    if-lt v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 232
    goto :goto_0
.end method


# virtual methods
.method public constructParser(IIZLcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
    .locals 16
    .param p1, "generalParserFeatures"    # I
    .param p2, "smileFeatures"    # I
    .param p3, "internNames"    # Z
    .param p4, "codec"    # Lcom/fasterxml/jackson/core/ObjectCodec;
    .param p5, "rootByteSymbols"    # Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v3, 0x1

    move-object/from16 v0, p5

    move/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->makeChild(ZZ)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    move-result-object v7

    .line 96
    .local v7, "can":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->ensureLoaded(I)Z

    .line 97
    new-instance v2, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_in:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputBuffer:[B

    move-object/from16 v0, p0

    iget v10, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputPtr:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputEnd:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_bufferRecyclable:Z

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v12}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;IILcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;Ljava/io/InputStream;[BIIZ)V

    .line 100
    .local v2, "p":Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
    const/4 v14, 0x0

    .line 101
    .local v14, "hadSig":Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputPtr:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputEnd:I

    if-ge v3, v4, :cond_4

    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputBuffer:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputPtr:I

    aget-byte v3, v3, v4

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_0

    .line 104
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser;->handleSignature(ZZ)Z

    move-result v14

    .line 113
    :cond_0
    if-nez v14, :cond_4

    sget-object v3, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->REQUIRE_HEADER:Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->getMask()I

    move-result v3

    and-int v3, v3, p2

    if-eqz v3, :cond_4

    .line 117
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputPtr:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputEnd:I

    if-ge v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputBuffer:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputPtr:I

    aget-byte v13, v3, v4

    .line 118
    .local v13, "firstByte":B
    :goto_0
    const/16 v3, 0x7b

    if-eq v13, v3, :cond_1

    const/16 v3, 0x5b

    if-ne v13, v3, :cond_3

    .line 119
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input does not start with Smile format header (first byte = 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, v13, 0xff

    .line 120
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") -- rather, it starts with \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-char v4, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' (plain JSON input?) -- can not parse"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 126
    .local v15, "msg":Ljava/lang/String;
    :goto_1
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    sget-object v4, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-direct {v3, v15, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v3

    .line 117
    .end local v13    # "firstByte":B
    .end local v15    # "msg":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 123
    .restart local v13    # "firstByte":B
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input does not start with Smile format header (first byte = 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, v13, 0xff

    .line 124
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") and parser has REQUIRE_HEADER enabled: can not parse"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 128
    .end local v13    # "firstByte":B
    .end local v15    # "msg":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method protected ensureLoaded(I)Z
    .locals 9
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 244
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_in:Ljava/io/InputStream;

    if-nez v4, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v2

    .line 251
    :cond_1
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputEnd:I

    iget v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputPtr:I

    sub-int v1, v4, v5

    .line 252
    .local v1, "gotten":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 253
    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputEnd:I

    iget-object v7, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputBuffer:[B

    array-length v7, v7

    iget v8, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputEnd:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 254
    .local v0, "count":I
    if-lt v0, v3, :cond_0

    .line 257
    iget v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputEnd:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->_inputEnd:I

    .line 258
    add-int/2addr v1, v0

    .line 259
    goto :goto_1

    .end local v0    # "count":I
    :cond_2
    move v2, v3

    .line 260
    goto :goto_0
.end method
