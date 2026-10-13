.class public Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;
.super Ljava/io/Reader;
.source "PoolFriendlyInputStreamReader.java"


# instance fields
.field private final bytes:Ljava/nio/ByteBuffer;

.field private decoder:Ljava/nio/charset/CharsetDecoder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private endOfInput:Z

.field private in:Ljava/io/InputStream;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/nio/ByteBuffer;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 47
    iput-boolean v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->endOfInput:Z

    .line 120
    iput-object p3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 121
    iput-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;

    .line 124
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 125
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 126
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 127
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 128
    return-void
.end method

.method private getOpenedInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/io/IOException;

    const-string v2, "InputStreamReader is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 187
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private isOpen()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 142
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 143
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;

    .line 147
    :cond_1
    monitor-exit v1

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 173
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    new-instance v0, Ljava/io/IOException;

    const-string v2, "InputStreamReader is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 177
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [C

    .line 178
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->read([CII)I

    move-result v3

    if-eq v3, v0, :cond_1

    const/4 v0, 0x0

    aget-char v0, v2, v0

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public read([CII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 204
    iget-object v4, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 205
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->getOpenedInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 206
    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-static {v3}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    array-length v3, p1

    invoke-static {v3, p2, p3}, Lcom/facebook/analytics2/logger/LibcoreUtils;->checkOffsetAndCount(III)V

    .line 209
    if-nez p3, :cond_0

    .line 210
    monitor-exit v4

    .line 273
    :goto_0
    return v0

    .line 213
    :cond_0
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 214
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 218
    iget-object v7, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-nez v7, :cond_1

    move v0, v1

    :cond_1
    move v9, v0

    move-object v0, v3

    move v3, v9

    .line 220
    :goto_1
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->hasRemaining()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 222
    if-eqz v3, :cond_9

    .line 224
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->position()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-le v3, p2, :cond_7

    .line 262
    :cond_2
    :goto_2
    :try_start_2
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v0, v1, :cond_4

    iget-boolean v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->endOfInput:Z

    if-eqz v1, :cond_4

    .line 263
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v6, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 264
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v0, v1, :cond_3

    .line 265
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, v6}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 267
    :cond_3
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 269
    :cond_4
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 270
    :cond_5
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 273
    :cond_6
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    sub-int/2addr v0, p2

    if-nez v0, :cond_b

    move v0, v2

    :goto_3
    monitor-exit v4

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 228
    :catch_0
    move-exception v3

    .line 232
    :cond_7
    :try_start_3
    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    iget-object v7, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    sub-int/2addr v3, v7

    .line 233
    iget-object v7, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    iget-object v8, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    add-int/2addr v7, v8

    .line 234
    iget-object v8, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v5, v8, v7, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 236
    if-ne v3, v2, :cond_8

    .line 237
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->endOfInput:Z

    goto :goto_2

    .line 239
    :cond_8
    if-eqz v3, :cond_2

    .line 242
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 247
    :cond_9
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v6, v7}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 251
    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    iget-object v7, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ne v3, v7, :cond_a

    .line 252
    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 253
    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 254
    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_a
    move v3, v1

    .line 256
    goto/16 :goto_1

    .line 273
    :cond_b
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->position()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    sub-int/2addr v0, p2

    goto :goto_3
.end method

.method public ready()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 293
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->getOpenedInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 296
    :try_start_1
    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :try_start_2
    monitor-exit v1

    .line 298
    :goto_0
    return v0

    .line 297
    :catch_0
    move-exception v2

    .line 298
    monitor-exit v1

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
