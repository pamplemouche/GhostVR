.class public Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;
.super Ljava/lang/Object;
.source "SodiumStreamEncoder.java"

# interfaces
.implements Lcom/oculus/localmedia/crypto/StreamEncoder;


# static fields
.field private static final DEFAULT_ENCRYPTION_CHUNK_SIZE:I = 0x8000

.field private static final ENCRYPTION_SHARED_SECRET_SIZE:I = 0x20

.field public static final TAG:Ljava/lang/String;

.field private static sEncryptionChunkSizeOverhead:I


# instance fields
.field private final mChunkSize:I

.field private final mSecretKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const-class v1, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->TAG:Ljava/lang/String;

    .line 26
    const/4 v1, 0x0

    sput v1, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->sEncryptionChunkSizeOverhead:I

    .line 30
    :try_start_0
    const-string v1, "localmediacrypto"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->nativeGetChunkOverhead()I

    move-result v1

    sput v1, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->sEncryptionChunkSizeOverhead:I

    .line 36
    sget v1, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->sEncryptionChunkSizeOverhead:I

    if-gtz v1, :cond_0

    .line 37
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Encryption chunksize overheard needs to be greater than 0"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    sget-object v1, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->TAG:Ljava/lang/String;

    const-string v2, "Could not get native chunk overhead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :cond_0
    return-void

    .line 31
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 32
    .restart local v0    # "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->TAG:Ljava/lang/String;

    const-string v2, "Could not load native library"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->nativeRandom(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;-><init>([B)V

    .line 49
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "secretKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    const v0, 0x8000

    invoke-direct {p0, p1, v0}, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;-><init>([BI)V

    .line 53
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "secretKey"    # [B
    .param p2, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-gtz p2, :cond_0

    .line 57
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Chunksize needs to be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->mSecretKey:[B

    .line 60
    iput p2, p0, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->mChunkSize:I

    .line 61
    return-void
.end method

.method private static native nativeDecrypt([B[BI)[B
.end method

.method private static native nativeEncrypt([B[BI)[B
.end method

.method private static native nativeGetChunkOverhead()I
.end method

.method private static native nativeRandom(I)[B
.end method


# virtual methods
.method public decrypt([BI)[B
    .locals 1
    .param p1, "encryptedText"    # [B
    .param p2, "length"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->mSecretKey:[B

    invoke-static {v0, p1, p2}, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->nativeDecrypt([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([BI)[B
    .locals 1
    .param p1, "rawText"    # [B
    .param p2, "length"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->mSecretKey:[B

    invoke-static {v0, p1, p2}, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->nativeEncrypt([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getChunkSize()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->mChunkSize:I

    return v0
.end method

.method public getChunkSizeEncryptionOverhead()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->sEncryptionChunkSizeOverhead:I

    return v0
.end method

.method public getDecryptedLength(J)J
    .locals 9
    .param p1, "encryptedLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 96
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "EncryptedLength needs to be greater than 0"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 98
    :cond_0
    long-to-double v4, p1

    .line 99
    invoke-virtual {p0}, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->getChunkSize()I

    move-result v6

    invoke-virtual {p0}, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->getChunkSizeEncryptionOverhead()I

    move-result v7

    add-int/2addr v6, v7

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-long v2, v4

    .line 100
    .local v2, "numChunks":J
    const-wide v4, 0x7fffffffffffffffL

    div-long/2addr v4, v2

    invoke-virtual {p0}, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->getChunkSizeEncryptionOverhead()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 101
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Zero length or overflow"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->getChunkSizeEncryptionOverhead()I

    move-result v4

    int-to-long v4, v4

    mul-long v0, v2, v4

    .line 105
    .local v0, "chunkOverhead":J
    sub-long v4, p1, v0

    return-wide v4
.end method

.method public getEncryptedChunkSize()I
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->getChunkSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->getChunkSizeEncryptionOverhead()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getEncryptedLength(J)J
    .locals 11
    .param p1, "rawLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide v8, 0x7fffffffffffffffL

    .line 80
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 81
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "RawLength needs to be greater than 0"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 83
    :cond_0
    long-to-double v4, p1

    invoke-virtual {p0}, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->getChunkSize()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-long v2, v4

    .line 84
    .local v2, "numChunks":J
    div-long v4, v8, v2

    invoke-virtual {p0}, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->getChunkSizeEncryptionOverhead()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 85
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Zero length or overflow"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->getChunkSizeEncryptionOverhead()I

    move-result v4

    int-to-long v4, v4

    mul-long v0, v2, v4

    .line 88
    .local v0, "chunkOverhead":J
    sub-long v4, v8, p1

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 89
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Overflow"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 91
    :cond_2
    add-long v4, p1, v0

    return-wide v4
.end method

.method public getSecretKey()[B
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oculus/localmedia/crypto/SodiumStreamEncoder;->mSecretKey:[B

    return-object v0
.end method
