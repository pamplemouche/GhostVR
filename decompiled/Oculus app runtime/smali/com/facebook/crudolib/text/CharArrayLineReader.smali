.class public Lcom/facebook/crudolib/text/CharArrayLineReader;
.super Ljava/lang/Object;
.source "CharArrayLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private mBuffer:[C

.field private mBufferLen:I

.field private mBufferPos:I

.field private mBufferingCR:Z

.field private mExhausted:Z

.field private final mIn:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;[C)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mIn:Ljava/io/Reader;

    .line 25
    iput-object p2, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mBuffer:[C

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mBufferPos:I

    .line 27
    iput p1, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mBufferLen:I

    return-void
.end method

.method private fillBuf()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-boolean v0, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mExhausted:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mIn:Ljava/io/Reader;

    iget-object v2, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mBuffer:[C

    invoke-virtual {v0, v2}, Ljava/io/Reader;->read([C)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mExhausted:Z

    return v1

    :cond_1
    const/4 v1, 0x0

    .line 82
    iput v1, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mBufferPos:I

    .line 83
    iput v0, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mBufferLen:I

    return v0
.end method

.method private readChar()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget v0, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mBufferPos:I

    iget v1, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mBufferLen:I

    if-lt v0, v1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayLineReader;->fillBuf()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mBuffer:[C

    iget v1, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mBufferPos:I

    aget-char v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 69
    iput v1, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mBufferPos:I

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mIn:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public readLine(Landroid/database/CharArrayBuffer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    iput v0, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 33
    :goto_0
    invoke-direct {p0}, Lcom/facebook/crudolib/text/CharArrayLineReader;->readChar()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 44
    iget-boolean v3, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mBufferingCR:Z

    if-eqz v3, :cond_0

    .line 46
    invoke-static {p1, v2}, Lcom/facebook/crudolib/text/CharArrayBuffers;->append(Landroid/database/CharArrayBuffer;C)V

    .line 47
    iput-boolean v0, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mBufferingCR:Z

    :cond_0
    int-to-char v1, v1

    .line 49
    invoke-static {p1, v1}, Lcom/facebook/crudolib/text/CharArrayBuffers;->append(Landroid/database/CharArrayBuffer;C)V

    goto :goto_0

    .line 36
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mBufferingCR:Z

    goto :goto_0

    .line 39
    :cond_2
    iput-boolean v0, p0, Lcom/facebook/crudolib/text/CharArrayLineReader;->mBufferingCR:Z

    return v3

    .line 56
    :cond_3
    iget p1, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-nez p1, :cond_4

    return v0

    :cond_4
    return v3
.end method
