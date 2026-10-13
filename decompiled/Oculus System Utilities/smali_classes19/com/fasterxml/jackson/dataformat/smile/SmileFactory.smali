.class public Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;
.super Lcom/fasterxml/jackson/core/JsonFactory;
.source "SmileFactory.java"


# static fields
.field static final DEFAULT_SMILE_GENERATOR_FEATURE_FLAGS:I

.field static final DEFAULT_SMILE_PARSER_FEATURE_FLAGS:I

.field public static final FORMAT_NAME_SMILE:Ljava/lang/String; = "Smile"

.field private static final serialVersionUID:J = -0x178c2f2832fcfd2dL


# instance fields
.field protected _cfgDelegateToTextual:Z

.field protected _smileGeneratorFeatures:I

.field protected _smileParserFeatures:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->DEFAULT_SMILE_PARSER_FEATURE_FLAGS:I

    .line 53
    invoke-static {}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->DEFAULT_SMILE_GENERATOR_FEATURE_FLAGS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V
    .locals 1
    .param p1, "oc"    # Lcom/fasterxml/jackson/core/ObjectCodec;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V

    .line 93
    sget v0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->DEFAULT_SMILE_PARSER_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileParserFeatures:I

    .line 94
    sget v0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->DEFAULT_SMILE_GENERATOR_FEATURE_FLAGS:I

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileGeneratorFeatures:I

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;Lcom/fasterxml/jackson/core/ObjectCodec;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;
    .param p2, "oc"    # Lcom/fasterxml/jackson/core/ObjectCodec;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/ObjectCodec;)V

    .line 106
    iget-boolean v0, p1, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_cfgDelegateToTextual:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_cfgDelegateToTextual:Z

    .line 107
    iget v0, p1, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileParserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileParserFeatures:I

    .line 108
    iget v0, p1, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileGeneratorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileGeneratorFeatures:I

    .line 109
    return-void
.end method


# virtual methods
.method protected _createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_cfgDelegateToTextual:Z

    if-eqz v0, :cond_0

    .line 511
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    return-object v0

    .line 513
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not create generator for non-byte-based target"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    iget v3, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileGeneratorFeatures:I

    .line 547
    .local v3, "feats":I
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_generatorFeatures:I

    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    move-object v1, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;IILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/OutputStream;)V

    .line 548
    .local v0, "gen":Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;
    sget-object v1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->WRITE_HEADER:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result v1

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 549
    invoke-virtual {v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;->writeHeader()V

    .line 562
    :cond_0
    return-object v0

    .line 551
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->CHECK_SHARED_STRING_VALUES:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result v1

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 552
    new-instance v1, Lcom/fasterxml/jackson/core/JsonGenerationException;

    const-string v2, "Inconsistent settings: WRITE_HEADER disabled, but CHECK_SHARED_STRING_VALUES enabled; can not construct generator due to possible data loss (either enable WRITE_HEADER, or disable CHECK_SHARED_STRING_VALUES to resolve)"

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->ENCODE_BINARY_AS_7BIT:Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result v1

    and-int/2addr v1, v3

    if-nez v1, :cond_0

    .line 557
    new-instance v1, Lcom/fasterxml/jackson/core/JsonGenerationException;

    const-string v2, "Inconsistent settings: WRITE_HEADER disabled, but ENCODE_BINARY_AS_7BIT disabled; can not construct generator due to possible data loss (either enable WRITE_HEADER, or ENCODE_BINARY_AS_7BIT to resolve)"

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected bridge synthetic _createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method protected _createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .param p1, "r"    # Ljava/io/Reader;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_cfgDelegateToTextual:Z

    if-eqz v0, :cond_0

    .line 483
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    return-object v0

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not create generator for non-byte-based target"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic _createParser([BIILcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createParser([BIILcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method protected _createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 469
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;

    invoke-direct {v0, p2, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;)V

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_parserFeatures:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileParserFeatures:I

    sget-object v3, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 470
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z

    move-result v3

    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_rootByteSymbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 469
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->constructParser(IIZLcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method protected _createParser([BIILcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 496
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;[BII)V

    iget v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_parserFeatures:I

    iget v2, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileParserFeatures:I

    sget-object v3, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 498
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z

    move-result v3

    iget-object v4, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    iget-object v5, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_rootByteSymbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 496
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->constructParser(IIZLcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method protected _createUTF8Generator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic _createUTF8JsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createUTF8JsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object v0

    return-object v0
.end method

.method protected _createUTF8JsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 450
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object v0

    return-object v0
.end method

.method protected _createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;Lcom/fasterxml/jackson/core/io/IOContext;)Ljava/io/Writer;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "enc"    # Lcom/fasterxml/jackson/core/JsonEncoding;
    .param p3, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_cfgDelegateToTextual:Z

    if-eqz v0, :cond_0

    .line 527
    invoke-super {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonFactory;->_createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;Lcom/fasterxml/jackson/core/io/IOContext;)Ljava/io/Writer;

    move-result-object v0

    return-object v0

    .line 529
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not create generator for non-byte-based target"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final configure(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;Z)Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;
    .locals 0
    .param p1, "f"    # Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 231
    if-eqz p2, :cond_0

    .line 232
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->enable(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;)Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    .line 236
    :goto_0
    return-object p0

    .line 234
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->disable(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;)Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    goto :goto_0
.end method

.method public final configure(Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;Z)Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;
    .locals 0
    .param p1, "f"    # Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 185
    if-eqz p2, :cond_0

    .line 186
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->enable(Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;)Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    .line 190
    :goto_0
    return-object p0

    .line 188
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->disable(Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;)Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    goto :goto_0
.end method

.method public bridge synthetic copy()Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->copy()Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;
    .locals 2

    .prologue
    .line 115
    const-class v0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_checkInvalidCopy(Ljava/lang/Class;)V

    .line 117
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>(Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;Lcom/fasterxml/jackson/core/ObjectCodec;)V

    return-object v0
.end method

.method public bridge synthetic createGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object v0

    return-object v0
.end method

.method public createGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object v0

    return-object v0
.end method

.method public createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "enc"    # Lcom/fasterxml/jackson/core/JsonEncoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createJsonGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createJsonGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createJsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createJsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object v0

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 441
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v0

    .line 442
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/io/IOContext;
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object v1

    return-object v1
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "enc"    # Lcom/fasterxml/jackson/core/JsonEncoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createJsonParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createJsonParser(Ljava/io/File;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createJsonParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createJsonParser(Ljava/net/URL;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createJsonParser(Ljava/net/URL;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createJsonParser([B)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createJsonParser([B)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createJsonParser([BII)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createJsonParser([BII)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/File;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
    .locals 2
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 324
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/net/URL;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_optimizedStreamFromURL(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser([B)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 362
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v0

    .line 363
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/io/IOContext;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createParser([BIILcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v1

    return-object v1
.end method

.method public createJsonParser([BII)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createParser([BIILcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createParser([B)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createParser([B)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createParser([BII)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createParser([BII)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/io/File;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
    .locals 2
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_optimizedStreamFromURL(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public createParser([B)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 298
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v0

    .line 299
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/io/IOContext;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createParser([BIILcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v1

    return-object v1
.end method

.method public createParser([BII)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 306
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_createParser([BIILcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/dataformat/smile/SmileParser;

    move-result-object v0

    return-object v0
.end method

.method public delegateToTextual(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_cfgDelegateToTextual:Z

    .line 122
    return-void
.end method

.method public disable(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;)Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    .prologue
    .line 254
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileGeneratorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileGeneratorFeatures:I

    .line 255
    return-object p0
.end method

.method public disable(Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;)Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;

    .prologue
    .line 207
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileParserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileParserFeatures:I

    .line 208
    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;)Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    .prologue
    .line 245
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileGeneratorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileGeneratorFeatures:I

    .line 246
    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;)Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;

    .prologue
    .line 198
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileParserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileParserFeatures:I

    .line 199
    return-object p0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "Smile"

    return-object v0
.end method

.method public hasFormat(Lcom/fasterxml/jackson/core/format/InputAccessor;)Lcom/fasterxml/jackson/core/format/MatchStrength;
    .locals 1
    .param p1, "acc"    # Lcom/fasterxml/jackson/core/format/InputAccessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParserBootstrapper;->hasSmileFormat(Lcom/fasterxml/jackson/core/format/InputAccessor;)Lcom/fasterxml/jackson/core/format/MatchStrength;

    move-result-object v0

    return-object v0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;)Z
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator$Feature;

    .prologue
    .line 262
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileGeneratorFeatures:I

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

.method public final isEnabled(Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;)Z
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;

    .prologue
    .line 215
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_smileParserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/dataformat/smile/SmileParser$Feature;->getMask()I

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

.method protected readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    iget-object v1, p0, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>(Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;Lcom/fasterxml/jackson/core/ObjectCodec;)V

    return-object v0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/fasterxml/jackson/dataformat/smile/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method
