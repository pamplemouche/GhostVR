.class public Lcom/facebook/superpack/SuperpackArchive;
.super Ljava/lang/Object;
.source "SuperpackArchive.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/facebook/superpack/SuperpackFile;",
        ">;"
    }
.end annotation


# instance fields
.field private mPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "superpack-jni"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 53
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 62
    :cond_0
    iput-wide p1, p0, Lcom/facebook/superpack/SuperpackArchive;->mPtr:J

    .line 63
    return-void
.end method

.method private static native appendNative(JJ)V
.end method

.method private static native closeNative(J)V
.end method

.method private static native createNative()J
.end method

.method private static native isEmptyNative(J)Z
.end method

.method private static native nextNative(J)J
.end method

.method public static read(Ljava/io/InputStream;Ljava/lang/String;)Lcom/facebook/superpack/SuperpackArchive;
    .locals 4

    .prologue
    .line 152
    if-nez p0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 155
    :cond_0
    new-instance v0, Lcom/facebook/superpack/SuperpackArchive;

    invoke-static {p0, p1}, Lcom/facebook/superpack/SuperpackArchive;->readNative(Ljava/io/InputStream;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/facebook/superpack/SuperpackArchive;-><init>(J)V

    return-object v0
.end method

.method private static native readNative(Ljava/io/InputStream;Ljava/lang/String;)J
.end method

.method private static native writeNative(JLjava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 116
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackArchive;->mPtr:J

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
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackArchive;->mPtr:J

    invoke-static {v0, v1}, Lcom/facebook/superpack/SuperpackArchive;->closeNative(J)V

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/superpack/SuperpackArchive;->mPtr:J
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

    .line 160
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackArchive;->mPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 161
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackArchive;->mPtr:J

    invoke-static {v0, v1}, Lcom/facebook/superpack/SuperpackArchive;->closeNative(J)V

    .line 162
    iput-wide v2, p0, Lcom/facebook/superpack/SuperpackArchive;->mPtr:J

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 165
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/facebook/superpack/SuperpackArchive;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 4

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackArchive;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackArchive;->mPtr:J

    invoke-static {v0, v1}, Lcom/facebook/superpack/SuperpackArchive;->isEmptyNative(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized next()Lcom/facebook/superpack/SuperpackFile;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 74
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackArchive;->mPtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 78
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackArchive;->mPtr:J

    invoke-static {v0, v1}, Lcom/facebook/superpack/SuperpackArchive;->nextNative(J)J

    move-result-wide v0

    .line 79
    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 80
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 83
    :cond_1
    new-instance v2, Lcom/facebook/superpack/SuperpackFile;

    invoke-direct {v2, v0, v1}, Lcom/facebook/superpack/SuperpackFile;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/facebook/superpack/SuperpackArchive;->next()Lcom/facebook/superpack/SuperpackFile;

    move-result-object v0

    return-object v0
.end method
