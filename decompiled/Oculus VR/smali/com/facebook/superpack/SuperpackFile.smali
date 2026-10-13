.class public final Lcom/facebook/superpack/SuperpackFile;
.super Ljava/lang/Object;
.source "SuperpackFile.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private mLength:I

.field private mPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "superpack-jni"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 37
    return-void
.end method

.method constructor <init>(J)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57
    :cond_0
    iput-wide p1, p0, Lcom/facebook/superpack/SuperpackFile;->mPtr:J

    .line 58
    invoke-static {p1, p2}, Lcom/facebook/superpack/SuperpackFile;->getLengthNative(J)I

    move-result v0

    iput v0, p0, Lcom/facebook/superpack/SuperpackFile;->mLength:I

    .line 59
    return-void
.end method

.method private static native closeNative(J)V
.end method

.method private static native createSuperpackFileNative(Ljava/lang/String;[B)J
.end method

.method private static native getLengthNative(J)I
.end method

.method private static native getNameNative(J)Ljava/lang/String;
.end method

.method private static native readBytesNative(JII[BI)V
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 116
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackFile;->mPtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 119
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackFile;->mPtr:J

    invoke-static {v0, v1}, Lcom/facebook/superpack/SuperpackFile;->closeNative(J)V

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/superpack/SuperpackFile;->mPtr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    monitor-exit p0

    return-void
.end method

.method protected finalize()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 125
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackFile;->mPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 126
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackFile;->mPtr:J

    invoke-static {v0, v1}, Lcom/facebook/superpack/SuperpackFile;->closeNative(J)V

    .line 127
    iput-wide v2, p0, Lcom/facebook/superpack/SuperpackFile;->mPtr:J

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 130
    :cond_0
    return-void
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackFile;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 90
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/superpack/SuperpackFileInputStream;

    invoke-direct {v0, p0}, Lcom/facebook/superpack/SuperpackFileInputStream;-><init>(Lcom/facebook/superpack/SuperpackFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getLength()I
    .locals 4

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackFile;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 81
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/facebook/superpack/SuperpackFile;->mLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackFile;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackFile;->mPtr:J

    invoke-static {v0, v1}, Lcom/facebook/superpack/SuperpackFile;->getNameNative(J)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized readBytes(II[BI)V
    .locals 6

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackFile;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 97
    :cond_0
    if-nez p3, :cond_1

    .line 98
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 100
    :cond_1
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    if-gez p4, :cond_3

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 103
    :cond_3
    add-int v0, p4, p2

    array-length v1, p3

    if-le v0, v1, :cond_4

    .line 104
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 106
    :cond_4
    add-int v0, p1, p2

    iget v1, p0, Lcom/facebook/superpack/SuperpackFile;->mLength:I

    if-le v0, v1, :cond_5

    .line 107
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 110
    :cond_5
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackFile;->mPtr:J

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/facebook/superpack/SuperpackFile;->readBytesNative(JII[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    monitor-exit p0

    return-void
.end method
