.class public final Lcom/facebook/forker/Process;
.super Ljava/lang/Process;
.source "Process.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/forker/Process$WaiterThread;
    }
.end annotation


# static fields
.field private static final FD_STREAM_INPUT:I = 0x0

.field private static final FD_STREAM_OUTPUT:I = 0x1

.field private static final IGNORE_FD:I = -0x1

.field public static final SD_BLACK_HOLE:I = -0x3

.field public static final SD_INHERIT:I = -0x2

.field public static final SD_PIPE:I = -0x4

.field public static final SD_STDOUT:I = -0x5

.field public static final SIGCONT:I = 0x12

.field public static final SIGKILL:I = 0x9

.field public static final SIGSTOP:I = 0x13

.field public static final SIGTERM:I = 0xf

.field public static final SIGTSTP:I = 0x14

.field public static final STATUS_EXITED:I = 0x4

.field public static final STATUS_RUNNING:I = 0x1

.field public static final STATUS_STOPPED:I = 0x2

.field public static final STDERR:I = 0x2

.field public static final STDIN:I = 0x0

.field public static final STDOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "fb-Process"

.field public static final WAIT_RESULT_RUNNING:I = -0x7ffffffe

.field public static final WAIT_RESULT_STOPPED:I = -0x7fffffff

.field public static final WAIT_RESULT_TIMEOUT:I = -0x80000000


# instance fields
.field private mChildStderr:Ljava/io/InputStream;

.field private mChildStdin:Ljava/io/OutputStream;

.field private mChildStdout:Ljava/io/InputStream;

.field private mExitStatus:I

.field private mPid:I

.field private mProcessStatus:I

.field private mWaiterThread:Lcom/facebook/forker/Process$WaiterThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "forker"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 25
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[B[I[ILjava/io/File;)V
    .locals 8
    .param p3    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    .line 188
    const/4 v2, -0x1

    .line 189
    const/4 v1, 0x0

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/forker/Process;->mPid:I

    .line 192
    new-instance v0, Lcom/facebook/forker/Process$WaiterThread;

    invoke-direct {v0, p0}, Lcom/facebook/forker/Process$WaiterThread;-><init>(Lcom/facebook/forker/Process;)V

    iput-object v0, p0, Lcom/facebook/forker/Process;->mWaiterThread:Lcom/facebook/forker/Process$WaiterThread;

    .line 195
    const/4 v0, 0x6

    :try_start_0
    new-array v6, v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 196
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    array-length v1, v6

    if-ge v0, v1, :cond_0

    .line 197
    const/4 v1, -0x1

    aput v1, v6, v0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, v6

    if-ge v0, v1, :cond_3

    .line 201
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {v1}, Lcom/facebook/forker/Process;->nativeUnixPipe([I)[I

    move-result-object v1

    .line 205
    if-nez v0, :cond_1

    .line 206
    add-int/lit8 v3, v0, 0x0

    const/4 v4, 0x1

    aget v4, v1, v4

    aput v4, v6, v3

    .line 207
    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    aget v1, v1, v4

    aput v1, v6, v3

    .line 200
    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 209
    :cond_1
    add-int/lit8 v3, v0, 0x0

    const/4 v4, 0x0

    aget v4, v1, v4

    aput v4, v6, v3

    .line 210
    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    aget v1, v1, v4

    aput v1, v6, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 279
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    invoke-static {v2}, Lcom/facebook/forker/Process;->unixClose(I)V

    .line 280
    invoke-static {v1}, Lcom/facebook/forker/Process;->unixClose([I)V

    .line 282
    iget-object v1, p0, Lcom/facebook/forker/Process;->mChildStdin:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/facebook/forker/Process;->safeClose(Ljava/io/Closeable;)V

    .line 283
    iget-object v1, p0, Lcom/facebook/forker/Process;->mChildStdout:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/facebook/forker/Process;->safeClose(Ljava/io/Closeable;)V

    .line 284
    iget-object v1, p0, Lcom/facebook/forker/Process;->mChildStderr:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/facebook/forker/Process;->safeClose(Ljava/io/Closeable;)V

    .line 285
    iget v1, p0, Lcom/facebook/forker/Process;->mPid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 286
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/facebook/forker/Process;->kill(I)V

    .line 287
    invoke-direct {p0}, Lcom/facebook/forker/Process;->nativeWait()V

    :cond_2
    throw v0

    .line 214
    :cond_3
    const/4 v0, 0x6

    :try_start_2
    new-array v4, v0, [I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    const/4 v0, 0x0

    move v7, v2

    move v2, v0

    :goto_4
    const/4 v0, 0x3

    if-ge v2, v0, :cond_7

    .line 219
    :try_start_3
    aget v0, p5, v2

    packed-switch v0, :pswitch_data_0

    .line 251
    aget v0, p5, v2

    if-gez v0, :cond_6

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal stream disposition %s for fd %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget v5, p5, v2

    .line 254
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    .line 253
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 279
    :catchall_1
    move-exception v0

    move-object v1, v6

    move v2, v7

    goto :goto_3

    :pswitch_0
    move v0, v2

    move v1, v7

    .line 260
    :cond_4
    :goto_5
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x0

    :try_start_4
    aput v0, v4, v3

    .line 261
    mul-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, 0x1

    aput v2, v4, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 215
    add-int/lit8 v2, v2, 0x1

    move v7, v1

    goto :goto_4

    .line 226
    :pswitch_1
    const/4 v0, -0x1

    if-ne v7, v0, :cond_a

    .line 227
    :try_start_5
    const-string v0, "/dev/null"

    invoke-static {v0}, Lcom/facebook/forker/Process;->nativeUnixOpen(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    move v1, v0

    .line 231
    :goto_6
    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    if-eqz p6, :cond_5

    .line 233
    :try_start_6
    invoke-virtual {p6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string v3, "fb-Process"

    const-string v5, "Failed to open /dev/null. Creating a tmp file for use."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {v0}, Lcom/facebook/forker/Process;->nativeUnixCreateTmpFile(Ljava/lang/String;)I

    move-result v0

    .line 240
    :cond_5
    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 241
    const-string v0, "fb-Process"

    const-string v3, "Failed to open any black hole sync. Just ignoring"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 242
    const/4 v0, -0x1

    goto :goto_5

    .line 248
    :pswitch_2
    mul-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, 0x1

    :try_start_7
    aget v0, v6, v0

    move v1, v7

    .line 249
    goto :goto_5

    .line 256
    :cond_6
    aget v0, p5, v2

    move v1, v7

    goto :goto_5

    .line 264
    :cond_7
    const/4 v0, 0x0

    :goto_7
    const/4 v1, 0x3

    if-ge v0, v1, :cond_9

    .line 265
    aget v1, p5, v0

    const/4 v2, -0x5

    if-ne v1, v2, :cond_8

    .line 266
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x0

    const/4 v2, 0x2

    aget v2, v4, v2

    aput v2, v4, v1

    .line 264
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 270
    invoke-direct/range {v0 .. v5}, Lcom/facebook/forker/Process;->nativeLaunch(Ljava/lang/String;[Ljava/lang/String;[B[I[I)I

    move-result v0

    iput v0, p0, Lcom/facebook/forker/Process;->mPid:I

    .line 271
    iget-object v0, p0, Lcom/facebook/forker/Process;->mWaiterThread:Lcom/facebook/forker/Process$WaiterThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PidWaiter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/forker/Process;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/forker/Process$WaiterThread;->setName(Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/forker/Process;->openFdStream(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/facebook/forker/Process;->mChildStdin:Ljava/io/OutputStream;

    .line 273
    const/4 v0, 0x2

    aget v0, v6, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/forker/Process;->openFdStream(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/facebook/forker/Process;->mChildStdout:Ljava/io/InputStream;

    .line 274
    const/4 v0, 0x4

    aget v0, v6, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/forker/Process;->openFdStream(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/facebook/forker/Process;->mChildStderr:Ljava/io/InputStream;

    .line 275
    iget-object v0, p0, Lcom/facebook/forker/Process;->mWaiterThread:Lcom/facebook/forker/Process$WaiterThread;

    invoke-virtual {v0}, Lcom/facebook/forker/Process$WaiterThread;->start()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 279
    invoke-static {v7}, Lcom/facebook/forker/Process;->unixClose(I)V

    .line 280
    invoke-static {v6}, Lcom/facebook/forker/Process;->unixClose([I)V

    .line 291
    return-void

    .line 279
    :catchall_2
    move-exception v0

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    move v2, v1

    move-object v1, v6

    goto/16 :goto_3

    :cond_a
    move v0, v7

    move v1, v7

    goto/16 :goto_6

    .line 219
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/facebook/forker/Process;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/forker/Process;->nativeWait()V

    return-void
.end method

.method public static describeStatus(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    if-gez p0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "killed by signal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    neg-int v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 66
    :cond_0
    if-lez p0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exited with status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_1
    const-string v0, "exited successfully"

    goto :goto_0
.end method

.method private static fdMagicName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/task/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fd/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native nativeKill(I)V
.end method

.method private native nativeLaunch(Ljava/lang/String;[Ljava/lang/String;[B[I[I)I
    .param p3    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native nativeUnixClose(I)V
.end method

.method private static native nativeUnixCreateTmpFile(Ljava/lang/String;)I
.end method

.method private static native nativeUnixOpen(Ljava/lang/String;)I
.end method

.method private static native nativeUnixPipe([I)[I
.end method

.method private native nativeWait()V
.end method

.method private static openFdStream(II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {p0}, Lcom/facebook/forker/Process;->fdMagicName(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 176
    :goto_0
    return-object v0

    .line 161
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 169
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 170
    if-nez p1, :cond_1

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .locals 3
    .param p0    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 135
    if-eqz p0, :cond_0

    .line 137
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "fb-Process"

    const-string v2, "suppressing close error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static unixClose(I)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 122
    invoke-static {p0}, Lcom/facebook/forker/Process;->nativeUnixClose(I)V

    .line 124
    :cond_0
    return-void
.end method

.method private static unixClose([I)V
    .locals 2
    .param p0    # [I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 127
    if-eqz p0, :cond_0

    .line 128
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 129
    aget v1, p0, v0

    invoke-static {v1}, Lcom/facebook/forker/Process;->unixClose(I)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/facebook/forker/Process;->destroy()V

    .line 331
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 304
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/facebook/forker/Process;->kill(I)V

    .line 305
    const/4 v0, 0x0

    .line 308
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/forker/Process;->mWaiterThread:Lcom/facebook/forker/Process$WaiterThread;

    invoke-virtual {v1}, Lcom/facebook/forker/Process$WaiterThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    monitor-enter p0

    .line 318
    :try_start_1
    iget-object v1, p0, Lcom/facebook/forker/Process;->mChildStdin:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/facebook/forker/Process;->safeClose(Ljava/io/Closeable;)V

    .line 319
    iget-object v1, p0, Lcom/facebook/forker/Process;->mChildStdout:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/facebook/forker/Process;->safeClose(Ljava/io/Closeable;)V

    .line 320
    iget-object v1, p0, Lcom/facebook/forker/Process;->mChildStderr:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/facebook/forker/Process;->safeClose(Ljava/io/Closeable;)V

    .line 321
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    if-eqz v0, :cond_0

    .line 324
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 326
    :cond_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    const/4 v0, 0x1

    .line 312
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public exitValue()I
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/facebook/forker/Process;->exitValueEx()I

    move-result v0

    .line 336
    if-gez v0, :cond_0

    neg-int v0, v0

    add-int/lit16 v0, v0, 0x80

    :cond_0
    return v0
.end method

.method public declared-synchronized exitValueEx()I
    .locals 3

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/forker/Process;->mProcessStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process has not yet terminated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/forker/Process;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 343
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/facebook/forker/Process;->mExitStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/facebook/forker/Process;->mChildStderr:Ljava/io/InputStream;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/facebook/forker/Process;->mChildStdout:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/facebook/forker/Process;->mChildStdin:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/facebook/forker/Process;->mPid:I

    return v0
.end method

.method public kill(I)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/facebook/forker/Process;->nativeKill(I)V

    .line 300
    return-void
.end method

.method public declared-synchronized waitFor()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 376
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/facebook/forker/Process;->mProcessStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 379
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/forker/Process;->exitValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized waitFor(II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 394
    monitor-enter p0

    move-wide v0, v2

    .line 396
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/facebook/forker/Process;->mProcessStatus:I

    and-int/2addr v2, p2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/facebook/forker/Process;->mProcessStatus:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    if-eqz p1, :cond_2

    .line 399
    if-lez p1, :cond_0

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 401
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    move-wide v2, v0

    .line 405
    :goto_1
    if-lez p1, :cond_5

    .line 406
    const-wide/16 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 407
    int-to-long v4, p1

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    .line 408
    const/4 v0, 0x0

    :goto_2
    move p1, v0

    move-wide v0, v2

    .line 412
    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    move-wide v2, v0

    goto :goto_1

    .line 410
    :cond_1
    long-to-int v0, v0

    sub-int v0, p1, v0

    goto :goto_2

    .line 415
    :cond_2
    iget v0, p0, Lcom/facebook/forker/Process;->mProcessStatus:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    .line 416
    iget v0, p0, Lcom/facebook/forker/Process;->mProcessStatus:I

    packed-switch v0, :pswitch_data_0

    .line 424
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 418
    :pswitch_1
    const v0, -0x7ffffffe

    .line 429
    :goto_3
    monitor-exit p0

    return v0

    .line 420
    :pswitch_2
    const v0, -0x7fffffff

    goto :goto_3

    .line 422
    :pswitch_3
    :try_start_1
    iget v0, p0, Lcom/facebook/forker/Process;->mExitStatus:I

    goto :goto_3

    .line 428
    :cond_3
    if-nez p1, :cond_4

    .line 429
    const/high16 v0, -0x80000000

    goto :goto_3

    .line 432
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process entered unexpected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/forker/Process;->mProcessStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    move-wide v0, v2

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public waitForUninterruptibly()I
    .locals 2

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 440
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/forker/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 449
    if-eqz v0, :cond_0

    .line 450
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 453
    :cond_0
    return v1

    .line 442
    :catch_0
    move-exception v0

    .line 443
    const/4 v0, 0x1

    .line 444
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_0
.end method

.method public waitForUninterruptibly(II)I
    .locals 10

    .prologue
    .line 457
    const/4 v1, 0x0

    .line 458
    const/high16 v0, -0x80000000

    .line 459
    const-wide/16 v4, 0x0

    move v2, p1

    .line 462
    :cond_0
    if-lez v2, :cond_1

    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 466
    :cond_1
    :try_start_0
    invoke-virtual {p0, v2, p2}, Lcom/facebook/forker/Process;->waitFor(II)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 467
    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_3

    .line 484
    :goto_0
    if-eqz v1, :cond_2

    .line 485
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 488
    :cond_2
    return v0

    .line 470
    :catch_0
    move-exception v1

    .line 471
    const/4 v1, 0x1

    .line 472
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 474
    :cond_3
    if-lez v2, :cond_4

    .line 475
    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 476
    int-to-long v8, v2

    cmp-long v3, v8, v6

    if-gez v3, :cond_5

    .line 477
    const/4 v2, 0x0

    .line 482
    :cond_4
    :goto_1
    if-nez v2, :cond_0

    goto :goto_0

    .line 479
    :cond_5
    long-to-int v3, v6

    sub-int/2addr v2, v3

    goto :goto_1
.end method
