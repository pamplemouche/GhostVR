.class public Lcom/facebook/superpack/SuperpackFileInputStream;
.super Ljava/io/InputStream;
.source "SuperpackFileInputStream.java"


# instance fields
.field private mCloseWhenInputStreamIsClosed:Ljava/lang/Boolean;

.field private mLength:I

.field private mMarked:I

.field private mOffset:I

.field private mOneByte:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSuperpackFile:Lcom/facebook/superpack/SuperpackFile;


# direct methods
.method constructor <init>(Lcom/facebook/superpack/SuperpackFile;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mSuperpackFile:Lcom/facebook/superpack/SuperpackFile;

    .line 22
    iput v1, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOffset:I

    .line 23
    iget-object v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mSuperpackFile:Lcom/facebook/superpack/SuperpackFile;

    invoke-virtual {v0}, Lcom/facebook/superpack/SuperpackFile;->getLength()I

    move-result v0

    iput v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mLength:I

    .line 24
    iput v1, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mMarked:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOneByte:[B

    .line 26
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mCloseWhenInputStreamIsClosed:Ljava/lang/Boolean;

    .line 27
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mCloseWhenInputStreamIsClosed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mSuperpackFile:Lcom/facebook/superpack/SuperpackFile;

    invoke-virtual {v0}, Lcom/facebook/superpack/SuperpackFile;->close()V

    .line 103
    :cond_0
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOffset:I

    iput v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mMarked:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOneByte:[B

    if-nez v1, :cond_0

    .line 62
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOneByte:[B

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOneByte:[B

    invoke-virtual {p0, v1}, Lcom/facebook/superpack/SuperpackFileInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 65
    if-ne v1, v0, :cond_1

    .line 71
    :goto_0
    monitor-exit p0

    return v0

    .line 68
    :cond_1
    if-eq v1, v2, :cond_2

    .line 69
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected number of bytes read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 71
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOneByte:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOneByte:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    add-int/lit16 v0, v0, 0x100

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOneByte:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/superpack/SuperpackFileInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 3

    .prologue
    .line 81
    monitor-enter p0

    if-nez p1, :cond_0

    .line 82
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p3, p2

    :try_start_1
    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 87
    :cond_2
    iget v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOffset:I

    iget v1, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v1, :cond_3

    .line 88
    const/4 v0, -0x1

    .line 95
    :goto_0
    monitor-exit p0

    return v0

    .line 90
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOffset:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mLength:I

    if-le v0, v1, :cond_4

    .line 91
    iget v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mLength:I

    iget v1, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOffset:I

    sub-int/2addr v0, v1

    .line 93
    :goto_1
    iget-object v1, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mSuperpackFile:Lcom/facebook/superpack/SuperpackFile;

    iget v2, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOffset:I

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/facebook/superpack/SuperpackFile;->readBytes(II[BI)V

    .line 94
    iget v1, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOffset:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    move v0, p3

    goto :goto_1
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mMarked:I

    iput v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 107
    monitor-enter p0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 114
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 110
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOffset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mLength:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 111
    iget v0, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mLength:I

    iget v1, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOffset:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 113
    :goto_1
    iget v2, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOffset:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/facebook/superpack/SuperpackFileInputStream;->mOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-wide v0, p1

    goto :goto_1
.end method
