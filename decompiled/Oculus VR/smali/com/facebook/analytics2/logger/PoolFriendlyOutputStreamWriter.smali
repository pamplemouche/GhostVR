.class Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;
.super Ljava/io/Writer;
.source "PoolFriendlyOutputStreamWriter.java"


# instance fields
.field private bytes:Ljava/nio/ByteBuffer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private encoder:Ljava/nio/charset/CharsetEncoder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/nio/ByteBuffer;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 86
    iput-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->out:Ljava/io/OutputStream;

    .line 87
    iput-object p3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 89
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 90
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 91
    return-void
.end method

.method private checkStatus()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/io/IOException;

    const-string v1, "OutputStreamWriter is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    return-void
.end method

.method private convert(Ljava/nio/CharBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    invoke-direct {p0, v2}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->flushBytes(Z)V

    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_0
.end method

.method private drainEncoder()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 178
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_1

    .line 210
    :cond_0
    return-void

    .line 186
    :cond_1
    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 190
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 202
    :goto_1
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    invoke-direct {p0, v4}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->flushBytes(Z)V

    .line 205
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_1

    .line 191
    :cond_3
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    invoke-direct {p0, v4}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->flushBytes(Z)V

    goto :goto_0

    .line 207
    :cond_4
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_1
.end method

.method private flushBytes(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->checkStatus()V

    .line 145
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 146
    monitor-exit v1

    .line 158
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 149
    if-lez v0, :cond_1

    .line 150
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 151
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 152
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 154
    :cond_1
    if-eqz p1, :cond_2

    .line 155
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 157
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 120
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->drainEncoder()V

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->flushBytes(Z)V

    .line 124
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 128
    :cond_0
    monitor-exit v1

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->flushBytes(Z)V

    .line 140
    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->checkStatus()V

    .line 264
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v2, 0x0

    int-to-char v3, p1

    aput-char v3, v0, v2

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 265
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V

    .line 266
    monitor-exit v1

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    if-gez p3, :cond_0

    .line 285
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/facebook/analytics2/logger/LibcoreUtils;->newStringIndexOutOfBoundsException(Ljava/lang/String;II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 287
    :cond_0
    if-nez p1, :cond_1

    .line 288
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "str == null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_1
    or-int v0, p2, p3

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_3

    .line 291
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/facebook/analytics2/logger/LibcoreUtils;->newStringIndexOutOfBoundsException(Ljava/lang/String;II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 293
    :cond_3
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->checkStatus()V

    .line 294
    add-int v0, p3, p2

    invoke-static {p1, p2, v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 295
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V

    .line 296
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    return-void
.end method

.method public write([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->checkStatus()V

    .line 246
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/facebook/analytics2/logger/LibcoreUtils;->checkOffsetAndCount(III)V

    .line 247
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 248
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V

    .line 249
    monitor-exit v1

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
