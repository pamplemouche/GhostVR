.class public Lcom/oculus/browser/acra/util/UrlEncodingWriter;
.super Ljava/io/FilterWriter;
.source "PG"


# static fields
.field public static final THROW_ON_INVALID_INPUT:Z = false

.field public static final U16_SURROGATE_OFFSET:I = 0x35fdc00

.field public static final UPPER_CASE_DIGITS:[B

.field public static final UTF16_REPLACEMENT_BYTE:B = 0x3ft


# instance fields
.field public mUtf16State:C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->UPPER_CASE_DIGITS:[B

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

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    const/4 p1, 0x0

    .line 2
    iput-char p1, p0, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->mUtf16State:C

    return-void
.end method

.method private resetState()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-char v0, p0, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->mUtf16State:C

    return-void
.end method

.method public static utf16GetSupplementary(CC)I
    .locals 0

    shl-int/lit8 p0, p0, 0xa

    add-int/2addr p0, p1

    const p1, 0x35fdc00

    sub-int/2addr p0, p1

    return p0
.end method

.method public static utf16IsSurrogate(C)Z
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

.method public static utf16IsSurrogateLead(C)Z
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

.method public static utf16IsSurrogateTrail(C)Z
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

    .line 1
    iget-object p1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 2
    :cond_4
    invoke-direct {p0, p1}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    goto :goto_1

    .line 3
    :cond_5
    :goto_0
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    :goto_1
    return-void
.end method

.method private writeHexByte(B)V
    .locals 3

    .line 1
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 2
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    sget-object v1, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->UPPER_CASE_DIGITS:[B

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 3
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    sget-object v1, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->UPPER_CASE_DIGITS:[B

    and-int/lit8 p1, p1, 0xf

    aget-byte p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->flush()V

    return-void
.end method

.method public enforceCodepointBoundary()V
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->mUtf16State:C

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    .line 2
    invoke-direct {p0, v0}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    .line 3
    invoke-direct {p0}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->resetState()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->enforceCodepointBoundary()V

    .line 2
    invoke-super {p0}, Ljava/io/FilterWriter;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 4

    int-to-char p1, p1

    .line 7
    iget-char v0, p0, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->mUtf16State:C

    const/16 v1, 0x80

    const/16 v2, 0x3f

    if-eqz v0, :cond_1

    .line 8
    invoke-static {p1}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->utf16IsSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->utf16IsSurrogateTrail(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-char v0, p0, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->mUtf16State:C

    invoke-static {v0, p1}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->utf16GetSupplementary(CC)I

    move-result p1

    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    .line 10
    invoke-direct {p0, v0}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    shr-int/lit8 v0, p1, 0xc

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 11
    invoke-direct {p0, v0}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 12
    invoke-direct {p0, v0}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    int-to-byte p1, p1

    .line 13
    invoke-direct {p0, p1}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    .line 14
    invoke-direct {p0}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->resetState()V

    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0, v2}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    .line 16
    invoke-direct {p0}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->resetState()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->write(I)V

    goto :goto_0

    :cond_1
    const v0, 0xffff

    and-int/2addr v0, p1

    if-ge v0, v1, :cond_2

    int-to-byte p1, p1

    .line 18
    invoke-direct {p0, p1}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->writeByte(B)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x800

    if-ge v0, v3, :cond_3

    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    .line 19
    invoke-direct {p0, v0}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    int-to-byte p1, p1

    .line 20
    invoke-direct {p0, p1}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-static {p1}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->utf16IsSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    invoke-static {p1}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->utf16IsSurrogateLead(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    iput-char p1, p0, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->mUtf16State:C

    goto :goto_0

    .line 24
    :cond_4
    invoke-direct {p0, v2}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    goto :goto_0

    :cond_5
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    int-to-byte v0, v0

    .line 25
    invoke-direct {p0, v0}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 26
    invoke-direct {p0, v0}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    int-to-byte p1, p1

    .line 27
    invoke-direct {p0, p1}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->writeHexByte(B)V

    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    move v1, p2

    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write([CII)V
    .locals 3

    .line 4
    iget-object v0, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    move v1, p2

    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    .line 5
    :try_start_0
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
