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

    const/16 v0, 0x24

    .line 31
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
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    const/4 p1, 0x0

    .line 38
    iput-char p1, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->mUtf16State:C

    return-void
.end method

.method private resetState()V
    .locals 1

    const/4 v0, 0x0

    .line 125
    iput-char v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->mUtf16State:C

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

    .line 66
    iget-object p1, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->out:Ljava/io/Writer;

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 68
    :cond_4
    invoke-direct {p0, p1}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    goto :goto_1

    .line 64
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

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

    .line 48
    iget-object v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 49
    iget-object v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->out:Ljava/io/Writer;

    sget-object v1, Lcom/facebook/acra/util/UrlEncodingWriter;->UPPER_CASE_DIGITS:[B

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 50
    iget-object v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->out:Ljava/io/Writer;

    sget-object v1, Lcom/facebook/acra/util/UrlEncodingWriter;->UPPER_CASE_DIGITS:[B

    and-int/lit8 p1, p1, 0xf

    aget-byte p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

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

    .line 130
    invoke-virtual {p0}, Lcom/facebook/acra/util/UrlEncodingWriter;->flush()V

    return-void
.end method

.method public enforceCodepointBoundary()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-char v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->mUtf16State:C

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    .line 118
    invoke-direct {p0, v0}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    .line 119
    invoke-direct {p0}, Lcom/facebook/acra/util/UrlEncodingWriter;->resetState()V

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

    .line 135
    invoke-virtual {p0}, Lcom/facebook/acra/util/UrlEncodingWriter;->enforceCodepointBoundary()V

    .line 136
    invoke-super {p0}, Ljava/io/FilterWriter;->flush()V

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

    .line 161
    iget-char v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->mUtf16State:C

    const/16 v1, 0x80

    const/16 v2, 0x3f

    if-eqz v0, :cond_1

    .line 170
    invoke-static {p1}, Lcom/facebook/acra/util/UrlEncodingWriter;->utf16IsSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/facebook/acra/util/UrlEncodingWriter;->utf16IsSurrogateTrail(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-char v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->mUtf16State:C

    invoke-static {v0, p1}, Lcom/facebook/acra/util/UrlEncodingWriter;->utf16GetSupplementary(CC)I

    move-result p1

    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    .line 172
    invoke-direct {p0, v0}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    shr-int/lit8 v0, p1, 0xc

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 173
    invoke-direct {p0, v0}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 174
    invoke-direct {p0, v0}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    int-to-byte p1, p1

    .line 175
    invoke-direct {p0, p1}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    .line 176
    invoke-direct {p0}, Lcom/facebook/acra/util/UrlEncodingWriter;->resetState()V

    goto :goto_0

    .line 181
    :cond_0
    invoke-direct {p0, v2}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    .line 184
    invoke-direct {p0}, Lcom/facebook/acra/util/UrlEncodingWriter;->resetState()V

    .line 185
    invoke-virtual {p0, p1}, Lcom/facebook/acra/util/UrlEncodingWriter;->write(I)V

    goto :goto_0

    :cond_1
    const v0, 0xffff

    and-int/2addr v0, p1

    if-ge v0, v1, :cond_2

    int-to-byte p1, p1

    .line 190
    invoke-direct {p0, p1}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeByte(B)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x800

    if-ge v0, v3, :cond_3

    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    .line 192
    invoke-direct {p0, v0}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    int-to-byte p1, p1

    .line 193
    invoke-direct {p0, p1}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    goto :goto_0

    .line 194
    :cond_3
    invoke-static {p1}, Lcom/facebook/acra/util/UrlEncodingWriter;->utf16IsSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 195
    invoke-static {p1}, Lcom/facebook/acra/util/UrlEncodingWriter;->utf16IsSurrogateLead(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    iput-char p1, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->mUtf16State:C

    goto :goto_0

    .line 202
    :cond_4
    invoke-direct {p0, v2}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    goto :goto_0

    :cond_5
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    int-to-byte v0, v0

    .line 207
    invoke-direct {p0, v0}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 208
    invoke-direct {p0, v0}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    int-to-byte p1, p1

    .line 209
    invoke-direct {p0, p1}, Lcom/facebook/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    move v1, p2

    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    .line 143
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/facebook/acra/util/UrlEncodingWriter;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 145
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/facebook/acra/util/UrlEncodingWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    move v1, p2

    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    .line 152
    :try_start_0
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/facebook/acra/util/UrlEncodingWriter;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 154
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
