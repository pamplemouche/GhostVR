.class Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;
.super Ljava/io/Writer;
.source "PoolFriendlyBufferedWriter.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private buf:[C
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private out:Ljava/io/Writer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;[C)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 46
    iput-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    .line 47
    iput-object p2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    .line 48
    return-void
.end method

.method private flushInternal()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->getOpenedBufferedWriter()Ljava/io/Writer;

    move-result-object v0

    .line 116
    iget v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    if-lez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    iget v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 119
    :cond_0
    iput v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    .line 120
    return-void
.end method

.method private getOpenedBufferedWriter()Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedWriter is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    return-object v0
.end method

.method private isClosed()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sneakyThrow(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 90
    throw p0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->getOpenedBufferedWriter()Ljava/io/Writer;

    move-result-object v2

    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->flushInternal()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 68
    :goto_1
    iput-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    .line 71
    :try_start_1
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    :cond_2
    :goto_2
    iput-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    .line 79
    if-eqz v0, :cond_0

    .line 80
    invoke-static {v0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->sneakyThrow(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    .line 73
    if-nez v0, :cond_2

    move-object v0, v2

    .line 74
    goto :goto_2

    .line 65
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->getOpenedBufferedWriter()Ljava/io/Writer;

    move-result-object v0

    .line 102
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->flushInternal()V

    .line 103
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 104
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
    const/4 v4, 0x0

    .line 206
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->getOpenedBufferedWriter()Ljava/io/Writer;

    move-result-object v1

    .line 207
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 208
    iget v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 209
    array-length v2, v0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/Writer;->write([CII)V

    .line 210
    iput v4, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    .line 212
    :cond_0
    iget v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 213
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 230
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->getOpenedBufferedWriter()Ljava/io/Writer;

    move-result-object v2

    .line 231
    if-gtz p3, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_3

    .line 235
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/facebook/analytics2/logger/LibcoreUtils;->newStringIndexOutOfBoundsException(Ljava/lang/String;II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 238
    iget v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    if-nez v1, :cond_4

    array-length v1, v0

    if-lt p3, v1, :cond_4

    .line 239
    new-array v0, p3, [C

    .line 240
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 241
    invoke-virtual {v2, v0, v5, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 244
    :cond_4
    array-length v1, v0

    iget v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    sub-int/2addr v1, v3

    .line 245
    if-ge p3, v1, :cond_5

    move v1, p3

    .line 248
    :cond_5
    if-lez v1, :cond_6

    .line 249
    add-int v3, p2, v1

    iget v4, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    invoke-virtual {p1, p2, v3, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 250
    iget v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    .line 252
    :cond_6
    iget v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    array-length v4, v0

    if-ne v3, v4, :cond_0

    .line 253
    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    iget-object v4, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    array-length v4, v4

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/Writer;->write([CII)V

    .line 254
    iput v5, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    .line 255
    if-le p3, v1, :cond_0

    .line 256
    add-int v3, p2, v1

    .line 257
    sub-int v1, p3, v1

    .line 258
    array-length v4, v0

    if-lt v1, v4, :cond_7

    .line 259
    new-array v0, p3, [C

    .line 260
    add-int v4, v3, v1

    invoke-virtual {p1, v3, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 261
    invoke-virtual {v2, v0, v5, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 264
    :cond_7
    add-int v2, v3, v1

    iget v4, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    invoke-virtual {p1, v3, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 265
    iget v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    goto :goto_0
.end method

.method public write([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 161
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->getOpenedBufferedWriter()Ljava/io/Writer;

    move-result-object v1

    .line 162
    if-nez p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/facebook/analytics2/logger/LibcoreUtils;->checkOffsetAndCount(III)V

    .line 166
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 167
    iget v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    if-nez v2, :cond_2

    array-length v0, v0

    if-lt p3, v0, :cond_2

    .line 168
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    array-length v0, v0

    iget v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    sub-int/2addr v0, v2

    .line 172
    if-ge p3, v0, :cond_3

    move v0, p3

    .line 175
    :cond_3
    if-lez v0, :cond_4

    .line 176
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    iget v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iget v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    .line 179
    :cond_4
    iget v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 180
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Writer;->write([CII)V

    .line 181
    iput v4, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    .line 182
    if-le p3, v0, :cond_1

    .line 183
    add-int v2, p2, v0

    .line 184
    sub-int v0, p3, v0

    .line 185
    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    array-length v3, v3

    if-lt v0, v3, :cond_5

    .line 186
    invoke-virtual {v1, p1, v2, v0}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 190
    :cond_5
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    iget v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iget v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    goto :goto_0
.end method
