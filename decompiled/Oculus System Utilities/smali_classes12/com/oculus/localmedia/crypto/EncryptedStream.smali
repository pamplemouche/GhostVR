.class public Lcom/oculus/localmedia/crypto/EncryptedStream;
.super Ljava/io/FilterOutputStream;
.source "EncryptedStream.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mBuffer:[B

.field private mNumBytesWritten:I

.field private final mStreamEncoder:Lcom/oculus/localmedia/crypto/StreamEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/oculus/localmedia/crypto/EncryptedStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/localmedia/crypto/EncryptedStream;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/oculus/localmedia/crypto/StreamEncoder;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "encoder"    # Lcom/oculus/localmedia/crypto/StreamEncoder;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    invoke-interface {p2}, Lcom/oculus/localmedia/crypto/StreamEncoder;->getChunkSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/oculus/localmedia/crypto/EncryptedStream;->mBuffer:[B

    .line 29
    iput-object p2, p0, Lcom/oculus/localmedia/crypto/EncryptedStream;->mStreamEncoder:Lcom/oculus/localmedia/crypto/StreamEncoder;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/localmedia/crypto/EncryptedStream;->mNumBytesWritten:I

    .line 31
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 61
    iget v1, p0, Lcom/oculus/localmedia/crypto/EncryptedStream;->mNumBytesWritten:I

    if-lez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/oculus/localmedia/crypto/EncryptedStream;->mStreamEncoder:Lcom/oculus/localmedia/crypto/StreamEncoder;

    iget-object v2, p0, Lcom/oculus/localmedia/crypto/EncryptedStream;->mBuffer:[B

    iget v3, p0, Lcom/oculus/localmedia/crypto/EncryptedStream;->mNumBytesWritten:I

    invoke-interface {v1, v2, v3}, Lcom/oculus/localmedia/crypto/StreamEncoder;->encrypt([BI)[B

    move-result-object v0

    .line 63
    .local v0, "encrypted":[B
    iget-object v1, p0, Lcom/oculus/localmedia/crypto/EncryptedStream;->out:Ljava/io/OutputStream;

    array-length v2, v0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 64
    iput v4, p0, Lcom/oculus/localmedia/crypto/EncryptedStream;->mNumBytesWritten:I

    .line 66
    .end local v0    # "encrypted":[B
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 55
    .local v0, "bytes":[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 56
    invoke-virtual {p0, v0}, Lcom/oculus/localmedia/crypto/EncryptedStream;->write([B)V

    .line 57
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v2, p0, Lcom/oculus/localmedia/crypto/EncryptedStream;->mBuffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/oculus/localmedia/crypto/EncryptedStream;->mNumBytesWritten:I

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 37
    .local v1, "numBytesToWrite":I
    iget-object v2, p0, Lcom/oculus/localmedia/crypto/EncryptedStream;->mBuffer:[B

    iget v3, p0, Lcom/oculus/localmedia/crypto/EncryptedStream;->mNumBytesWritten:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget v2, p0, Lcom/oculus/localmedia/crypto/EncryptedStream;->mNumBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/oculus/localmedia/crypto/EncryptedStream;->mNumBytesWritten:I

    .line 41
    iget v2, p0, Lcom/oculus/localmedia/crypto/EncryptedStream;->mNumBytesWritten:I

    iget-object v3, p0, Lcom/oculus/localmedia/crypto/EncryptedStream;->mBuffer:[B

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/oculus/localmedia/crypto/EncryptedStream;->flush()V

    .line 46
    :cond_0
    sub-int v0, p3, v1

    .line 47
    .local v0, "numBytesRemaining":I
    if-lez v0, :cond_1

    .line 48
    add-int v2, p2, v1

    invoke-virtual {p0, p1, v2, v0}, Lcom/oculus/localmedia/crypto/EncryptedStream;->write([BII)V

    .line 50
    :cond_1
    return-void
.end method
