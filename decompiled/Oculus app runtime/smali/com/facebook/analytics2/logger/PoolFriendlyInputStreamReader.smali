.class public Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;
.super Ljava/io/Reader;
.source "PoolFriendlyInputStreamReader.java"


# instance fields
.field private final bytes:Ljava/nio/ByteBuffer;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private endOfInput:Z

.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->endOfInput:Z

    .line 75
    iput-object p3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_0

    .line 79
    iput-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;

    .line 82
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    sget-object p3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 84
    invoke-virtual {p1, p3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    sget-object p3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 85
    invoke-virtual {p1, p3}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    iget-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void

    :catch_0
    move-exception p1

    .line 87
    new-instance p3, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p3, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p3, p1}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/UnsupportedEncodingException;

    throw p1

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "charsetName == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 58
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 116
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->endOfInput:Z

    .line 117
    iput-object p3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 118
    iput-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;

    .line 121
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 122
    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 123
    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 124
    iget-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 101
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->endOfInput:Z

    .line 102
    iput-object p3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    .line 104
    iput-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;

    .line 105
    iput-object p2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 106
    iget-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method private isOpen()Z
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    :cond_0
    const/4 v1, 0x0

    .line 139
    iput-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 140
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 142
    iput-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;

    .line 144
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 174
    new-array v2, v1, [C

    const/4 v3, 0x0

    .line 175
    invoke-virtual {p0, v2, v3, v1}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->read([CII)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    aget-char v4, v2, v3

    :cond_0
    monitor-exit v0

    return v4

    .line 172
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "InputStreamReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 176
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read([CII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 197
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lcom/facebook/analytics2/logger/LibcoreUtils;->checkOffsetAndCount(III)V

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 199
    monitor-exit v0

    return v1

    .line 202
    :cond_0
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 203
    sget-object p3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 207
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 209
    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, -0x1

    if-eqz v4, :cond_7

    if-eqz v2, :cond_5

    .line 213
    :try_start_1
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v2, p2, :cond_2

    goto :goto_2

    .line 221
    :catch_0
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget-object v4, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    sub-int/2addr v2, v4

    .line 222
    iget-object v4, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    iget-object v6, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v4, v6

    .line 223
    iget-object v6, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;

    iget-object v7, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6, v7, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 226
    iput-boolean v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->endOfInput:Z

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    goto :goto_2

    .line 231
    :cond_4
    iget-object p3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 236
    :cond_5
    iget-object p3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, v2, p1, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p3

    .line 238
    invoke-virtual {p3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 240
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget-object v4, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ne v2, v4, :cond_6

    .line 241
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 242
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 243
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_6
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 251
    :cond_7
    :goto_2
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne p3, v1, :cond_9

    iget-boolean v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->endOfInput:Z

    if-eqz v1, :cond_9

    .line 252
    iget-object p3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, v1, p1, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p3

    .line 253
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne p3, v1, :cond_8

    .line 254
    iget-object p3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p3, p1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p3

    .line 256
    :cond_8
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 258
    :cond_9
    invoke-virtual {p3}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p3}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 259
    :cond_a
    invoke-virtual {p3}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 262
    :cond_b
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result p3

    sub-int/2addr p3, p2

    if-nez p3, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result p1

    sub-int v5, p1, p2

    :goto_3
    monitor-exit v0

    return v5

    .line 194
    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "InputStreamReader is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 263
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public ready()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 287
    :try_start_1
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyInputStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :try_start_2
    monitor-exit v0

    return v1

    .line 289
    :catch_0
    monitor-exit v0

    return v1

    .line 284
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "InputStreamReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 291
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
