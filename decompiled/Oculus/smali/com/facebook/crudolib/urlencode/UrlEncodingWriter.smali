.class public Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;
.super Ljava/io/FilterWriter;
.source "UrlEncodingWriter.java"


# static fields
.field private static final UPPER_CASE_DIGITS:[B


# instance fields
.field private mUtf16State:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->UPPER_CASE_DIGITS:[B

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

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 37
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->mUtf16State:C

    .line 41
    return-void
.end method

.method private resetState()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->mUtf16State:C

    .line 125
    return-void
.end method

.method private static utf16GetSupplementary(CC)I
    .locals 2

    .prologue
    .line 78
    shl-int/lit8 v0, p0, 0xa

    add-int/2addr v0, p1

    const v1, 0x35fdc00

    sub-int/2addr v0, v1

    return v0
.end method

.method private static utf16IsSurrogate(C)Z
    .locals 2

    .prologue
    .line 105
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

    .prologue
    .line 87
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

    .prologue
    .line 96
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
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

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_4
    const/16 v0, 0x20

    if-ne p1, v0, :cond_5

    .line 65
    iget-object v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 67
    :cond_5
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->writeHexByte(B)V

    goto :goto_0
.end method

.method private writeHexByte(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 48
    iget-object v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->out:Ljava/io/Writer;

    sget-object v1, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->UPPER_CASE_DIGITS:[B

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 49
    iget-object v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->out:Ljava/io/Writer;

    sget-object v1, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->UPPER_CASE_DIGITS:[B

    and-int/lit8 v2, p1, 0xf

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 50
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
    .line 129
    invoke-virtual {p0}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->flush()V

    .line 130
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
    .line 113
    iget-char v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->mUtf16State:C

    if-eqz v0, :cond_0

    .line 117
    const/16 v0, 0x3f

    invoke-direct {p0, v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->writeHexByte(B)V

    .line 118
    invoke-direct {p0}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->resetState()V

    .line 121
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
    .line 134
    invoke-virtual {p0}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->enforceCodepointBoundary()V

    .line 135
    invoke-super {p0}, Ljava/io/FilterWriter;->flush()V

    .line 136
    return-void
.end method

.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v4, 0xffff

    const/16 v3, 0x3f

    .line 158
    int-to-char v0, p1

    .line 160
    iget-char v1, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->mUtf16State:C

    if-eqz v1, :cond_1

    .line 169
    invoke-static {v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->utf16IsSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->utf16IsSurrogateTrail(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-char v1, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->mUtf16State:C

    invoke-static {v1, v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->utf16GetSupplementary(CC)I

    move-result v0

    .line 171
    shr-int/lit8 v1, v0, 0x12

    or-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    invoke-direct {p0, v1}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->writeHexByte(B)V

    .line 172
    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-direct {p0, v1}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->writeHexByte(B)V

    .line 173
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-direct {p0, v1}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->writeHexByte(B)V

    .line 174
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->writeHexByte(B)V

    .line 175
    invoke-direct {p0}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->resetState()V

    .line 210
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-direct {p0, v3}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->writeHexByte(B)V

    .line 183
    invoke-direct {p0}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->resetState()V

    .line 184
    invoke-virtual {p0, v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->write(I)V

    goto :goto_0

    .line 187
    :cond_1
    and-int v1, v0, v4

    const/16 v2, 0x80

    if-ge v1, v2, :cond_2

    .line 189
    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->writeByte(B)V

    goto :goto_0

    .line 190
    :cond_2
    and-int v1, v0, v4

    const/16 v2, 0x800

    if-ge v1, v2, :cond_3

    .line 191
    shr-int/lit8 v1, v0, 0x6

    or-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    invoke-direct {p0, v1}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->writeHexByte(B)V

    .line 192
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->writeHexByte(B)V

    goto :goto_0

    .line 193
    :cond_3
    invoke-static {v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->utf16IsSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 194
    invoke-static {v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->utf16IsSurrogateLead(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 196
    iput-char v0, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->mUtf16State:C

    goto :goto_0

    .line 201
    :cond_4
    invoke-direct {p0, v3}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->writeHexByte(B)V

    goto :goto_0

    .line 206
    :cond_5
    shr-int/lit8 v1, v0, 0xc

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    invoke-direct {p0, v1}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->writeHexByte(B)V

    .line 207
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-direct {p0, v1}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->writeHexByte(B)V

    .line 208
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->writeHexByte(B)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v1, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    move v0, p2

    .line 141
    :goto_0
    add-int v2, p2, p3

    if-ge v0, v2, :cond_0

    .line 142
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->write(I)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v1, p0, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    move v0, p2

    .line 150
    :goto_0
    add-int v2, p2, p3

    if-ge v0, v2, :cond_0

    .line 151
    :try_start_0
    aget-char v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/facebook/crudolib/urlencode/UrlEncodingWriter;->write(I)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    monitor-exit v1

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
