.class public Lcom/facebook/zstd/ZstdInputStream;
.super Ljava/io/FilterInputStream;
.source "ZstdInputStream.java"


# instance fields
.field private mBufferSize:I

.field private final mHybridData:Lcom/facebook/jni/HybridData;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mInBuf:[B

.field private mOutBuf:[B

.field private sourceEOF:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "zstddecoder"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 24
    return-void
.end method

.method private native canWrite()Z
.end method

.method private decodeMoreBytes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/zstd/ZstdInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/facebook/zstd/ZstdInputStream;->mInBuf:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 91
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/zstd/ZstdInputStream;->sourceEOF:Z

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/facebook/zstd/ZstdInputStream;->mInBuf:[B

    invoke-direct {p0, v1, v0}, Lcom/facebook/zstd/ZstdInputStream;->nativeWrite([BI)V

    goto :goto_0
.end method

.method private static native initHybrid(I)Lcom/facebook/jni/HybridData;
.end method

.method private native nativeRead([BI)I
.end method

.method private native nativeWrite([BI)V
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 82
    new-array v0, v2, [B

    .line 83
    invoke-virtual {p0, v0}, Lcom/facebook/zstd/ZstdInputStream;->read([B)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 84
    const/4 v0, -0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/zstd/ZstdInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 41
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v2, p2, p3

    if-ltz v2, :cond_0

    array-length v2, p1

    add-int v3, p2, p3

    sub-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 43
    :cond_1
    if-nez p3, :cond_2

    .line 72
    :goto_0
    return v0

    :cond_2
    move v2, v0

    .line 48
    :goto_1
    if-ge v2, p3, :cond_7

    .line 49
    invoke-direct {p0}, Lcom/facebook/zstd/ZstdInputStream;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 50
    invoke-direct {p0}, Lcom/facebook/zstd/ZstdInputStream;->decodeMoreBytes()V

    .line 52
    :cond_3
    iget v3, p0, Lcom/facebook/zstd/ZstdInputStream;->mBufferSize:I

    sub-int v4, p3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 53
    iget-object v4, p0, Lcom/facebook/zstd/ZstdInputStream;->mOutBuf:[B

    invoke-direct {p0, v4, v3}, Lcom/facebook/zstd/ZstdInputStream;->nativeRead([BI)I

    move-result v3

    .line 54
    iget-boolean v4, p0, Lcom/facebook/zstd/ZstdInputStream;->sourceEOF:Z

    if-eqz v4, :cond_6

    .line 55
    if-nez v3, :cond_4

    .line 59
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected end of ZSTD stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_4
    if-ne v3, v1, :cond_6

    .line 62
    if-nez v2, :cond_5

    move v0, v1

    .line 63
    goto :goto_0

    :cond_5
    move v0, v2

    .line 65
    goto :goto_0

    .line 69
    :cond_6
    iget-object v4, p0, Lcom/facebook/zstd/ZstdInputStream;->mOutBuf:[B

    add-int v5, p2, v2

    invoke-static {v4, v0, p1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    add-int/2addr v2, v3

    .line 71
    goto :goto_1

    :cond_7
    move v0, v2

    .line 72
    goto :goto_0
.end method
