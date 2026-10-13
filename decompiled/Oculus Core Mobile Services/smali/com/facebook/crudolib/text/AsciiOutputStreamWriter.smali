.class public Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;
.super Ljava/io/Writer;
.source "AsciiOutputStreamWriter.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final mCharset:Ljava/lang/String;

.field private final mOut:Ljava/io/OutputStream;

.field private final mThrowOnNonAscii:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x1

    const-string v1, "UTF-8"

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 47
    iput-object p1, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mOut:Ljava/io/OutputStream;

    .line 48
    iput-boolean p2, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mThrowOnNonAscii:Z

    .line 49
    iput-object p3, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mCharset:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private writeImpl(C)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    const/16 v2, 0x7f

    if-gt p1, v2, :cond_0

    .line 107
    iget-object v1, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mOut:Ljava/io/OutputStream;

    int-to-byte v2, p1

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 114
    :goto_0
    return v0

    .line 110
    :cond_0
    iget-boolean v2, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mThrowOnNonAscii:Z

    if-eqz v2, :cond_1

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-ASCII character detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mOut:Ljava/io/OutputStream;

    new-instance v3, Ljava/lang/String;

    new-array v0, v0, [C

    aput-char p1, v0, v1

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    iget-object v0, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mCharset:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    move v0, v1

    .line 114
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 127
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 122
    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    int-to-char v0, p1

    invoke-direct {p0, v0}, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->writeImpl(C)Z

    .line 103
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 80
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_1

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 89
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->writeImpl(C)Z

    move-result v2

    .line 90
    if-nez v2, :cond_3

    .line 91
    sub-int v2, p3, v0

    .line 92
    if-lez v2, :cond_3

    .line 93
    iget-object v0, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mOut:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mCharset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 98
    :cond_2
    return-void

    .line 88
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0
.end method

.method public write([C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 55
    aget-char v2, p1, v0

    invoke-direct {p0, v2}, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->writeImpl(C)Z

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public write([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 66
    add-int/lit8 v1, p2, 0x1

    aget-char v2, p1, p2

    invoke-direct {p0, v2}, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->writeImpl(C)Z

    move-result v2

    .line 67
    if-nez v2, :cond_3

    .line 68
    sub-int v2, p3, v0

    .line 69
    if-lez v2, :cond_3

    .line 70
    iget-object v0, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mOut:Ljava/io/OutputStream;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mCharset:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 75
    :cond_2
    return-void

    .line 65
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0
.end method
