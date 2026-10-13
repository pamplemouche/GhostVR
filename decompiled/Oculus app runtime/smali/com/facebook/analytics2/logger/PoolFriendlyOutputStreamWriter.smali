.class Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;
.super Ljava/io/Writer;
.source "PoolFriendlyOutputStreamWriter.java"


# instance fields
.field private bytes:Ljava/nio/ByteBuffer;

.field private encoder:Ljava/nio/charset/CharsetEncoder;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 65
    iput-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->out:Ljava/io/OutputStream;

    .line 66
    iput-object p3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 68
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    iget-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object p2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 73
    iget-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object p2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    return-void

    .line 70
    :catch_0
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "charsetName == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 44
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 85
    iput-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->out:Ljava/io/OutputStream;

    .line 86
    iput-object p3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 88
    iget-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object p2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 89
    iget-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object p2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 103
    iput-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->out:Ljava/io/OutputStream;

    .line 104
    iput-object p3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 105
    iput-object p2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method private checkStatus()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "OutputStreamWriter is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private convert(Ljava/nio/CharBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-direct {p0, v2}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->flushBytes(Z)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_1
    return-void
.end method

.method private drainEncoder()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 175
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 177
    :goto_0
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_1

    .line 180
    :cond_0
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->flushBytes(Z)V

    goto :goto_0

    .line 190
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 191
    :goto_2
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-nez v2, :cond_3

    .line 192
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->flushBytes(Z)V

    .line 194
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_2

    .line 196
    :cond_2
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private flushBytes(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->checkStatus()V

    .line 144
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lez v1, :cond_0

    .line 146
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 147
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 148
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    if-eqz p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 153
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v1, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->drainEncoder()V

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, v1}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->flushBytes(Z)V

    .line 123
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    const/4 v1, 0x0

    .line 124
    iput-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 125
    iput-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->bytes:Ljava/nio/ByteBuffer;

    .line 127
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 138
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->flushBytes(Z)V

    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 216
    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->checkStatus()V

    const/4 v1, 0x1

    .line 253
    new-array v1, v1, [C

    const/4 v2, 0x0

    int-to-char p1, p1

    aput-char p1, v1, v2

    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 254
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V

    .line 255
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p3, :cond_2

    if-eqz p1, :cond_1

    or-int v1, p2, p3

    if-ltz v1, :cond_0

    .line 279
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->checkStatus()V

    add-int/2addr p3, p2

    .line 283
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 284
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V

    .line 285
    monitor-exit v0

    return-void

    .line 280
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/facebook/analytics2/logger/LibcoreUtils;->newStringIndexOutOfBoundsException(Ljava/lang/String;II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object p1

    throw p1

    .line 277
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "str == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/facebook/analytics2/logger/LibcoreUtils;->newStringIndexOutOfBoundsException(Ljava/lang/String;II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 285
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->checkStatus()V

    .line 235
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lcom/facebook/analytics2/logger/LibcoreUtils;->checkOffsetAndCount(III)V

    .line 236
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 237
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/PoolFriendlyOutputStreamWriter;->convert(Ljava/nio/CharBuffer;)V

    .line 238
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
