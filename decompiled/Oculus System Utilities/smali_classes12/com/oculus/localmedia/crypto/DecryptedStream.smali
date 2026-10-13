.class public Lcom/oculus/localmedia/crypto/DecryptedStream;
.super Ljava/io/FilterInputStream;
.source "DecryptedStream.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mDecryptedBuffer:[B

.field private mNumSentBytes:I

.field private final mRawBuffer:[B

.field private final mStreamEncoder:Lcom/oculus/localmedia/crypto/StreamEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/oculus/localmedia/crypto/DecryptedStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/localmedia/crypto/DecryptedStream;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/oculus/localmedia/crypto/StreamEncoder;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "encoder"    # Lcom/oculus/localmedia/crypto/StreamEncoder;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 30
    iput-object p2, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mStreamEncoder:Lcom/oculus/localmedia/crypto/StreamEncoder;

    .line 31
    invoke-interface {p2}, Lcom/oculus/localmedia/crypto/StreamEncoder;->getChunkSize()I

    move-result v0

    invoke-interface {p2}, Lcom/oculus/localmedia/crypto/StreamEncoder;->getChunkSizeEncryptionOverhead()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mRawBuffer:[B

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mDecryptedBuffer:[B

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mNumSentBytes:I

    .line 34
    return-void
.end method

.method private fillRawBuffer()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "read":I
    :cond_0
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mRawBuffer:[B

    iget-object v5, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mRawBuffer:[B

    array-length v5, v5

    sub-int/2addr v5, v0

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "size":I
    if-eq v2, v1, :cond_1

    .line 77
    add-int/2addr v0, v1

    .line 78
    iget-object v2, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mRawBuffer:[B

    array-length v2, v2

    if-ne v0, v2, :cond_0

    .line 82
    :cond_1
    sget-object v2, Lcom/oculus/localmedia/crypto/DecryptedStream;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v0
.end method

.method private flush([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 63
    iget-object v1, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mDecryptedBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mNumSentBytes:I

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 64
    .local v0, "available":I
    iget-object v1, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mDecryptedBuffer:[B

    iget v2, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mNumSentBytes:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget v1, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mNumSentBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mNumSentBytes:I

    .line 66
    sget-object v1, Lcom/oculus/localmedia/crypto/DecryptedStream;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sent byte downstream size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mNumSentBytes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return v0
.end method


# virtual methods
.method public read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v2, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mDecryptedBuffer:[B

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mNumSentBytes:I

    iget-object v3, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mDecryptedBuffer:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/localmedia/crypto/DecryptedStream;->flush([BII)I

    move-result v1

    .line 56
    :goto_0
    return v1

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/oculus/localmedia/crypto/DecryptedStream;->fillRawBuffer()I

    move-result v0

    .line 45
    .local v0, "read":I
    if-lez v0, :cond_2

    .line 46
    iget-object v2, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mStreamEncoder:Lcom/oculus/localmedia/crypto/StreamEncoder;

    iget-object v3, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mRawBuffer:[B

    invoke-interface {v2, v3, v0}, Lcom/oculus/localmedia/crypto/StreamEncoder;->decrypt([BI)[B

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mDecryptedBuffer:[B

    .line 47
    iget-object v2, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mDecryptedBuffer:[B

    if-nez v2, :cond_1

    .line 48
    sget-object v2, Lcom/oculus/localmedia/crypto/DecryptedStream;->TAG:Ljava/lang/String;

    const-string v3, "Error decoding chunk."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_1
    iput v1, p0, Lcom/oculus/localmedia/crypto/DecryptedStream;->mNumSentBytes:I

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/localmedia/crypto/DecryptedStream;->flush([BII)I

    move-result v1

    goto :goto_0

    .line 56
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method
