.class Lcom/facebook/acra/util/UrlEncodingWriter;
.super Ljava/io/FilterWriter;
.source "UrlEncodingWriter.java"


# static fields
.field static final THROW_ON_INVALID_INPUT:Z = false

.field private static final U16_SURROGATE_OFFSET:I = 0x35fdc00

.field private static final UPPER_CASE_DIGITS:[B

.field private static final UTF16_REPLACEMENT_BYTE:B = 0x3ft


# instance fields
.field private mUtf16State:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/acra/util/UrlEncodingWriter;->UPPER_CASE_DIGITS:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 35
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->mUtf16State:C

    .line 39
    return-void
.end method

.method private resetState()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->mUtf16State:C

    .line 119
    return-void
.end method

.method private static utf16GetSupplementary(CC)I
    .locals 2
    .param p0, "lead"    # C
    .param p1, "trail"    # C

    .prologue
    .line 72
    shl-int/lit8 v0, p0, 0xa

    add-int/2addr v0, p1

    const v1, 0x35fdc00

    sub-int/2addr v0, v1

    return v0
.end method

.method private static utf16IsSurrogate(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 99
    const v0, 0xf800

    and-int/2addr v0, p0

    const v1, 0xd800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static utf16IsSurrogateLead(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 81
    and-int/lit16 v0, p0, 0x400

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static utf16IsSurrogateTrail(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 90
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeByte(B)V
    .locals 2
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_3

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x5a

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x30

    if-lt p1, v0, :cond_2

    const/16 v0, 0x39

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x2e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x5f

    if-ne p1, v0, :cond_4

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_4
    const/16 v0, 0x20

    if-ne p1, v0, :cond_5

    .line 59
    iget-object v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 61
    :cond_5
    invoke-direct {p0, p1}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    goto :goto_0
.end method

.method private writeHexByte(B)V
    .locals 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 44
    iget-object v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->out:Ljava/io/Writer;

    sget-object v1, Lcom/facebook/acra/util/UrlEncodingWriter;->UPPER_CASE_DIGITS:[B

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 45
    iget-object v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->out:Ljava/io/Writer;

    sget-object v1, Lcom/facebook/acra/util/UrlEncodingWriter;->UPPER_CASE_DIGITS:[B

    and-int/lit8 v2, p1, 0xf

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/facebook/acra/util/UrlEncodingWriter;->flush()V

    .line 124
    return-void
.end method

.method public enforceCodepointBoundary()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-char v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->mUtf16State:C

    if-eqz v0, :cond_0

    .line 111
    const/16 v0, 0x3f

    invoke-direct {p0, v0}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    .line 112
    invoke-direct {p0}, Lcom/facebook/acra/util/UrlEncodingWriter;->resetState()V

    .line 115
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/facebook/acra/util/UrlEncodingWriter;->enforceCodepointBoundary()V

    .line 129
    invoke-super {p0}, Ljava/io/FilterWriter;->flush()V

    .line 130
    return-void
.end method

.method public write(I)V
    .locals 6
    .param p1, "oneChar"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v5, 0xffff

    const/16 v4, 0x3f

    .line 152
    int-to-char v0, p1

    .line 154
    .local v0, "c":C
    iget-char v2, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->mUtf16State:C

    if-eqz v2, :cond_1

    .line 163
    invoke-static {v0}, Lcom/facebook/acra/util/UrlEncodingWriter;->utf16IsSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/facebook/acra/util/UrlEncodingWriter;->utf16IsSurrogateTrail(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iget-char v2, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->mUtf16State:C

    invoke-static {v2, v0}, Lcom/facebook/acra/util/UrlEncodingWriter;->utf16GetSupplementary(CC)I

    move-result v1

    .line 165
    .local v1, "codepoint":I
    shr-int/lit8 v2, v1, 0x12

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    .line 166
    shr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    .line 167
    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    .line 168
    and-int/lit8 v2, v1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    .line 169
    invoke-direct {p0}, Lcom/facebook/acra/util/UrlEncodingWriter;->resetState()V

    .line 204
    .end local v1    # "codepoint":I
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-direct {p0, v4}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    .line 177
    invoke-direct {p0}, Lcom/facebook/acra/util/UrlEncodingWriter;->resetState()V

    .line 178
    invoke-virtual {p0, v0}, Lcom/facebook/acra/util/UrlEncodingWriter;->write(I)V

    goto :goto_0

    .line 181
    :cond_1
    and-int v2, v0, v5

    const/16 v3, 0x80

    if-ge v2, v3, :cond_2

    .line 183
    int-to-byte v2, v0

    invoke-direct {p0, v2}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeByte(B)V

    goto :goto_0

    .line 184
    :cond_2
    and-int v2, v0, v5

    const/16 v3, 0x800

    if-ge v2, v3, :cond_3

    .line 185
    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    .line 186
    and-int/lit8 v2, v0, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    goto :goto_0

    .line 187
    :cond_3
    invoke-static {v0}, Lcom/facebook/acra/util/UrlEncodingWriter;->utf16IsSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 188
    invoke-static {v0}, Lcom/facebook/acra/util/UrlEncodingWriter;->utf16IsSurrogateLead(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    iput-char v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->mUtf16State:C

    goto :goto_0

    .line 195
    :cond_4
    invoke-direct {p0, v4}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    goto :goto_0

    .line 200
    :cond_5
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    .line 201
    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    .line 202
    and-int/lit8 v2, v0, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v2, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 136
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/acra/util/UrlEncodingWriter;->write(I)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    monitor-exit v2

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write([CII)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v2, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 144
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 145
    :try_start_0
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/facebook/acra/util/UrlEncodingWriter;->write(I)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    monitor-exit v2

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
