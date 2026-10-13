.class Lcom/facebook/analytics2/logger/CrossProcessBatchLockState;
.super Lcom/facebook/analytics2/logger/BatchLockState;
.source "CrossProcessBatchLockState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/CrossProcessBatchLockState$FailedFileCreationException;,
        Lcom/facebook/analytics2/logger/CrossProcessBatchLockState$CrossProcessBatchLock;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/analytics2/logger/BatchLockState",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lcom/facebook/analytics2/logger/BatchLockState;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchLockState;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/analytics2/logger/BatchLockState;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/facebook/analytics2/logger/CrossProcessBatchLockState;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/analytics2/logger/CrossProcessBatchLockState;->sInstance:Lcom/facebook/analytics2/logger/BatchLockState;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/facebook/analytics2/logger/CrossProcessBatchLockState;

    invoke-direct {v0}, Lcom/facebook/analytics2/logger/CrossProcessBatchLockState;-><init>()V

    sput-object v0, Lcom/facebook/analytics2/logger/CrossProcessBatchLockState;->sInstance:Lcom/facebook/analytics2/logger/BatchLockState;

    .line 27
    :cond_0
    sget-object v0, Lcom/facebook/analytics2/logger/CrossProcessBatchLockState;->sInstance:Lcom/facebook/analytics2/logger/BatchLockState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected newBatchLock(Ljava/io/File;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/facebook/analytics2/logger/BatchLockState",
            "<",
            "Ljava/io/File;",
            ">.Batch",
            "Lock;"
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    new-instance v0, Lcom/facebook/analytics2/logger/CrossProcessBatchLockState$CrossProcessBatchLock;

    invoke-direct {v0, p0, p1}, Lcom/facebook/analytics2/logger/CrossProcessBatchLockState$CrossProcessBatchLock;-><init>(Lcom/facebook/analytics2/logger/CrossProcessBatchLockState;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Lcom/facebook/analytics2/logger/CrossProcessBatchLockState$FailedFileCreationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error, failed to create file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/analytics2/logger/CrossProcessBatchLockState$FailedFileCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected bridge synthetic newBatchLock(Ljava/lang/Object;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/CrossProcessBatchLockState;->newBatchLock(Ljava/io/File;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    move-result-object v0

    return-object v0
.end method
