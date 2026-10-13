.class public Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;
.super Ljava/io/Writer;
.source "UrlEncodingOutputStreamWriter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final THROW_ON_INVALID_INPUT:Z = false

.field private static final U16_SURROGATE_OFFSET:I = 0x35fdc00

.field private static final UPPER_CASE_DIGITS:[B

.field private static final UTF16_REPLACEMENT_BYTE:B = 0x3ft


# instance fields
.field private final mTargetOutputStream:Ljava/io/OutputStream;

.field private mUtf16State:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x24

    .line 34
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->UPPER_CASE_DIGITS:[B

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

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-char v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->mUtf16State:C

    .line 46
    iput-object p1, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->mTargetOutputStream:Ljava/io/OutputStream;

    return-void
.end method

.method private resetState()V
    .locals 1

    const/4 v0, 0x0

    .line 136
    iput-char v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->mUtf16State:C

    return-void
.end method

.method private static utf16GetSupplementary(CC)I
    .locals 0

    shl-int/lit8 p0, p0, 0xa

    add-int/2addr p0, p1

    const p1, 0x35fdc00

    sub-int/2addr p0, p1

    return p0
.end method

.method private static utf16IsSurrogate(C)Z
    .locals 1

    const v0, 0xf800

    and-int/2addr p0, v0

    const v0, 0xd800

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static utf16IsSurrogateLead(C)Z
    .locals 0

    and-int/lit16 p0, p0, 0x400

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static utf16IsSurrogateTrail(C)Z
    .locals 0

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private writeByte(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_5

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x5a

    if-le p1, v0, :cond_5

    :cond_1
    const/16 v0, 0x30

    if-lt p1, v0, :cond_2

    const/16 v0, 0x39

    if-le p1, v0, :cond_5

    :cond_2
    const/16 v0, 0x2e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_5

    const/16 v0, 0x5f

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x20

    if-ne p1, v0, :cond_4

    .line 71
    iget-object p1, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->mTargetOutputStream:Ljava/io/OutputStream;

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 73
    :cond_4
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->writeHexByte(B)V

    goto :goto_1

    .line 69
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->mTargetOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    :goto_1
    return-void
.end method

.method private writeHexByte(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->mTargetOutputStream:Ljava/io/OutputStream;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 54
    iget-object v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->mTargetOutputStream:Ljava/io/OutputStream;

    sget-object v1, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->UPPER_CASE_DIGITS:[B

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 55
    iget-object v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->mTargetOutputStream:Ljava/io/OutputStream;

    sget-object v1, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->UPPER_CASE_DIGITS:[B

    and-int/lit8 p1, p1, 0xf

    aget-byte p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

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

    .line 141
    invoke-virtual {p0}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->flush()V

    return-void
.end method

.method public enforceCodepointBoundary()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-char v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->mUtf16State:C

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    .line 129
    invoke-direct {p0, v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->writeHexByte(B)V

    .line 130
    invoke-direct {p0}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->resetState()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->enforceCodepointBoundary()V

    .line 147
    iget-object v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->mTargetOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-char p1, p1

    .line 175
    iget-char v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->mUtf16State:C

    const/16 v1, 0x80

    const/16 v2, 0x3f

    if-eqz v0, :cond_1

    .line 184
    invoke-static {p1}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->utf16IsSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->utf16IsSurrogateTrail(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-char v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->mUtf16State:C

    invoke-static {v0, p1}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->utf16GetSupplementary(CC)I

    move-result p1

    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    .line 186
    invoke-direct {p0, v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->writeHexByte(B)V

    shr-int/lit8 v0, p1, 0xc

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 187
    invoke-direct {p0, v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->writeHexByte(B)V

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 188
    invoke-direct {p0, v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->writeHexByte(B)V

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    int-to-byte p1, p1

    .line 189
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->writeHexByte(B)V

    .line 190
    invoke-direct {p0}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->resetState()V

    goto :goto_0

    .line 195
    :cond_0
    invoke-direct {p0, v2}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->writeHexByte(B)V

    .line 198
    invoke-direct {p0}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->resetState()V

    .line 199
    invoke-virtual {p0, p1}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->write(I)V

    goto :goto_0

    :cond_1
    const v0, 0xffff

    and-int/2addr v0, p1

    if-ge v0, v1, :cond_2

    int-to-byte p1, p1

    .line 204
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->writeByte(B)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x800

    if-ge v0, v3, :cond_3

    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    .line 206
    invoke-direct {p0, v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->writeHexByte(B)V

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    int-to-byte p1, p1

    .line 207
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->writeHexByte(B)V

    goto :goto_0

    .line 208
    :cond_3
    invoke-static {p1}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->utf16IsSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    invoke-static {p1}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->utf16IsSurrogateLead(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    iput-char p1, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->mUtf16State:C

    goto :goto_0

    .line 216
    :cond_4
    invoke-direct {p0, v2}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->writeHexByte(B)V

    goto :goto_0

    :cond_5
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    int-to-byte v0, v0

    .line 221
    invoke-direct {p0, v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->writeHexByte(B)V

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 222
    invoke-direct {p0, v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->writeHexByte(B)V

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    int-to-byte p1, p1

    .line 223
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->writeHexByte(B)V

    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 167
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeRaw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->mTargetOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public writeUtf16String(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 115
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/crudolib/urlencode/UrlEncodingOutputStreamWriter;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
