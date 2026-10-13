.class Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;
.super Ljava/io/Writer;
.source "PoolFriendlyBufferedWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter$Api19Utils;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private buf:[C

.field private out:Ljava/io/Writer;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;[C)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 43
    iput-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    .line 44
    iput-object p2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    return-void
.end method

.method private checkNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedWriter is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private flushInternal()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 112
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    .line 114
    :cond_0
    iput v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    return-void
.end method

.method private isClosed()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 87
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

    .line 55
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 61
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->flushInternal()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 65
    :goto_0
    iput-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    .line 68
    :try_start_1
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    if-nez v1, :cond_1

    move-object v1, v2

    .line 74
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    if-eqz v1, :cond_2

    .line 77
    invoke-static {v1}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->sneakyThrow(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->checkNotClosed()V

    .line 99
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->flushInternal()V

    .line 100
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public newLine()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 135
    invoke-static {}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter$Api19Utils;->getSystemLineSeparator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "line.separator"

    .line 137
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->checkNotClosed()V

    .line 201
    iget v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 202
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 203
    iput v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    iget v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    int-to-char p1, p1

    aput-char p1, v0, v1

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->checkNotClosed()V

    if-gtz p3, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_6

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_6

    .line 230
    iget v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    array-length v0, v0

    if-lt p3, v0, :cond_1

    .line 231
    new-array v0, p3, [C

    add-int v2, p2, p3

    .line 232
    invoke-virtual {p1, p2, v2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 233
    iget-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/Writer;->write([CII)V

    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    array-length v0, v0

    iget v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    sub-int/2addr v0, v2

    if-ge p3, v0, :cond_2

    move v0, p3

    :cond_2
    if-lez v0, :cond_3

    add-int v2, p2, v0

    .line 241
    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    iget v4, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 242
    iget v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    .line 244
    :cond_3
    iget v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    iget-object v3, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    array-length v4, v3

    if-ne v2, v4, :cond_5

    .line 245
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    array-length v4, v3

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/Writer;->write([CII)V

    .line 246
    iput v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    if-le p3, v0, :cond_5

    add-int/2addr p2, v0

    sub-int v0, p3, v0

    .line 250
    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    array-length v3, v2

    if-lt v0, v3, :cond_4

    .line 251
    new-array p3, p3, [C

    add-int v2, p2, v0

    .line 252
    invoke-virtual {p1, p2, v2, p3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 253
    iget-object p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, p3, v1, v0}, Ljava/io/Writer;->write([CII)V

    return-void

    :cond_4
    add-int p3, p2, v0

    .line 256
    iget v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    invoke-virtual {p1, p2, p3, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 257
    iget p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    :cond_5
    return-void

    .line 228
    :cond_6
    invoke-static {p1, p2, p3}, Lcom/facebook/analytics2/logger/LibcoreUtils;->newStringIndexOutOfBoundsException(Ljava/lang/String;II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object p1

    throw p1
.end method

.method public write([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->checkNotClosed()V

    if-eqz p1, :cond_5

    .line 160
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/facebook/analytics2/logger/LibcoreUtils;->checkOffsetAndCount(III)V

    .line 161
    iget v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    array-length v0, v0

    if-lt p3, v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    array-length v0, v0

    iget v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    sub-int/2addr v0, v1

    if-ge p3, v0, :cond_1

    move v0, p3

    :cond_1
    if-lez v0, :cond_2

    .line 170
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    iget v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    .line 173
    :cond_2
    iget v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    iget-object v2, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    array-length v3, v2

    if-ne v1, v3, :cond_4

    .line 174
    iget-object v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Writer;->write([CII)V

    .line 175
    iput v4, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    if-le p3, v0, :cond_4

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 179
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->buf:[C

    array-length v1, v0

    if-lt p3, v1, :cond_3

    .line 180
    iget-object v0, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void

    .line 184
    :cond_3
    iget v1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/facebook/analytics2/logger/PoolFriendlyBufferedWriter;->pos:I

    :cond_4
    return-void

    .line 158
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
