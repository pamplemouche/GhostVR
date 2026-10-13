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

    const/4 v0, 0x1

    const-string v1, "UTF-8"

    .line 39
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 47
    iput-object p1, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mOut:Ljava/io/OutputStream;

    .line 48
    iput-boolean p2, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mThrowOnNonAscii:Z

    .line 49
    iput-object p3, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mCharset:Ljava/lang/String;

    return-void
.end method

.method public static allowNonAscii(Ljava/io/OutputStream;Ljava/lang/String;)Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;
    .locals 2

    .line 31
    new-instance v0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static strict(Ljava/io/OutputStream;)Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;
    .locals 3

    .line 24
    new-instance v0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    return-object v0
.end method

.method private writeImpl(C)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mOut:Ljava/io/OutputStream;

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    return v0

    .line 110
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mThrowOnNonAscii:Z

    if-nez v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mOut:Ljava/io/OutputStream;

    new-instance v2, Ljava/lang/String;

    new-array v0, v0, [C

    const/4 v3, 0x0

    aput-char p1, v0, v3

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iget-object p1, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mCharset:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    return v3

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-ASCII character detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-char p1, p1

    .line 102
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->writeImpl(C)Z

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    or-int v0, p2, p3

    if-ltz v0, :cond_2

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int/lit8 v1, p2, 0x1

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-direct {p0, p2}, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->writeImpl(C)Z

    move-result p2

    if-nez p2, :cond_0

    sub-int p2, p3, v0

    if-lez p2, :cond_0

    .line 93
    iget-object p2, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mOut:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mCharset:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 85
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; offset="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; count="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 55
    aget-char v2, p1, v1

    invoke-direct {p0, v2}, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->writeImpl(C)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

    or-int v0, p2, p3

    if-ltz v0, :cond_2

    .line 61
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int/lit8 v1, p2, 0x1

    .line 66
    aget-char p2, p1, p2

    invoke-direct {p0, p2}, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->writeImpl(C)Z

    move-result p2

    if-nez p2, :cond_0

    sub-int p2, p3, v0

    if-lez p2, :cond_0

    .line 70
    iget-object p2, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mOut:Ljava/io/OutputStream;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v1, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object p1, p0, Lcom/facebook/crudolib/text/AsciiOutputStreamWriter;->mCharset:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; offset="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; count="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
