.class Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;
.super Ljava/lang/Object;
.source "FileBatchPayloadIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;,
        Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;,
        Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;,
        Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;,
        Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/facebook/analytics2/logger/BatchPayloadInternal;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_SOFT_MAX_PAYLOAD_SIZE:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "FileBatchPayloadIterator"

.field static final TTL_IN_DAYS:I = 0x7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TTL_IN_HOURS:I = 0xa8


# instance fields
.field private final mBatchDirectoryStructureIterator:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;

.field private final mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

.field private mCurrentBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/analytics2/logger/BatchLockState<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIteratedFileCount:I

.field private mLastFilePerProcess:Ljava/io/File;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNext:Lcom/facebook/analytics2/logger/BatchPayloadInternal;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNextIsComputed:Z

.field private final mOldestAllowedDayDirName:J

.field private final mOldestAllowedHourDirName:J

.field private final mProcessDirectoryProgressCallback:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;

.field private final mSoftMaxPayloadSize:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;I)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;

    new-instance v1, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$PriorityDirNode;

    invoke-direct {v1, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$PriorityDirNode;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;-><init>(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$PriorityDirNode;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mBatchDirectoryStructureIterator:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;

    .line 86
    iput-object p2, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

    .line 87
    iput-object p3, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mProcessDirectoryProgressCallback:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;

    .line 88
    iput p4, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mSoftMaxPayloadSize:I

    .line 90
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->daysSinceEpoch()J

    move-result-wide p1

    const-wide/16 p3, 0x7

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mOldestAllowedDayDirName:J

    .line 91
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->hoursSinceEpoch()J

    move-result-wide p1

    const-wide/16 p3, 0xa8

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mOldestAllowedHourDirName:J

    return-void
.end method

.method static synthetic access$100(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->deleteIfEmptyAndNotMatching(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/io/File;)V
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->deleteIfEmpty(Ljava/io/File;)V

    return-void
.end method

.method private computeNext()Lcom/facebook/analytics2/logger/BatchPayloadInternal;
    .locals 12
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 135
    new-instance v0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;-><init>(Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$1;)V

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move-object v5, v1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const-string v6, "FileBatchPayloadIterator"

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    .line 140
    iget v8, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mSoftMaxPayloadSize:I

    if-ge v4, v8, :cond_9

    :cond_1
    iget-object v8, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mBatchDirectoryStructureIterator:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;

    .line 141
    invoke-virtual {v8}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 142
    iget-object v8, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mBatchDirectoryStructureIterator:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;

    invoke-virtual {v8}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->next()Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;

    move-result-object v8

    .line 143
    iget-object v9, v8, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;->fileNode:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;

    .line 145
    iget v10, v8, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;->eventType:I

    if-eq v10, v7, :cond_7

    const/4 v7, 0x2

    if-eq v10, v7, :cond_4

    const/4 v7, 0x3

    if-ne v10, v7, :cond_3

    if-eqz v5, :cond_2

    .line 177
    invoke-virtual {v9}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v7

    const-string v8, "Deleting expired analytics data: %s"

    invoke-static {v6, v8, v7}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v9}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mCurrentBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;

    invoke-direct {p0, v6, v7}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->lockAwareDeleteFile(Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState;)Z

    goto :goto_0

    .line 180
    :cond_2
    new-instance v6, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;

    iget-object v7, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

    .line 182
    invoke-virtual {v9}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v8

    iget-object v10, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mCurrentBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;

    invoke-direct {v6, v7, v8, v10}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;-><init>(Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState;)V

    .line 183
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-long v7, v4

    .line 184
    invoke-virtual {v6}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v7, v10

    long-to-int v4, v7

    .line 185
    invoke-virtual {v9}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mLastFilePerProcess:Ljava/io/File;

    goto :goto_0

    .line 190
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;->eventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eqz v5, :cond_5

    .line 161
    invoke-virtual {v9}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->deleteIfEmpty(Ljava/io/File;)V

    .line 162
    invoke-virtual {v5}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v9}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v5, v1

    goto :goto_1

    .line 166
    :cond_5
    move-object v6, v9

    check-cast v6, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;

    invoke-virtual {v0, v6}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;->add(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;)V

    .line 168
    :cond_6
    :goto_1
    instance-of v6, v9, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$ProcessDirNode;

    if-eqz v6, :cond_0

    .line 169
    iget-object v6, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mProcessDirectoryProgressCallback:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;

    .line 170
    invoke-virtual {v9}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mLastFilePerProcess:Ljava/io/File;

    .line 169
    invoke-interface {v6, v7, v8}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;->onExhaustedProcessDir(Ljava/io/File;Ljava/io/File;)V

    .line 171
    iput-object v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mLastFilePerProcess:Ljava/io/File;

    goto/16 :goto_0

    .line 147
    :cond_7
    instance-of v6, v9, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$ProcessDirNode;

    if-eqz v6, :cond_8

    .line 150
    invoke-virtual {v9}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/facebook/crudolib/processname/ProcessNameHelper;->getMyFullProcessName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v7

    .line 149
    invoke-static {v6}, Lcom/facebook/analytics2/logger/BatchLockState;->getInstance(Z)Lcom/facebook/analytics2/logger/BatchLockState;

    move-result-object v6

    iput-object v6, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mCurrentBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;

    goto/16 :goto_0

    .line 151
    :cond_8
    instance-of v6, v9, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;

    if-eqz v6, :cond_0

    .line 152
    move-object v6, v9

    check-cast v6, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;

    .line 153
    invoke-direct {p0, v6}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->hasExceededTTL(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v5, v6

    goto/16 :goto_0

    .line 194
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 197
    iget v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mIteratedFileCount:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mIteratedFileCount:I

    if-le v5, v7, :cond_a

    .line 202
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 203
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Merged %d batches together (total %d bytes uncompressed)"

    .line 199
    invoke-static {v6, v4, v1, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    new-instance v1, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;

    iget-object v3, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

    invoke-direct {v1, v2, v3}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;-><init>(Ljava/util/List;Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;)V

    goto :goto_2

    .line 206
    :cond_a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    .line 208
    :goto_2
    new-instance v2, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;

    invoke-direct {v2, v1, v0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;-><init>(Lcom/facebook/analytics2/logger/BatchPayloadInternal;Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;)V

    return-object v2

    :cond_b
    return-object v1
.end method

.method private static deleteIfEmpty(Ljava/io/File;)V
    .locals 3

    .line 240
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 243
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "FileBatchPayloadIterator"

    const-string v2, "%s: not a directory, deleting anyway..."

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static deleteIfEmptyAndNotMatching(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 234
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 235
    invoke-static {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->deleteIfEmpty(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method private hasExceededTTL(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;)Z
    .locals 3

    .line 252
    instance-of v0, p1, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DayDirNode;

    if-eqz v0, :cond_0

    .line 253
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mOldestAllowedDayDirName:J

    invoke-static {p1, v0, v1}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->hasExceededTTL(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;J)Z

    move-result p1

    return p1

    .line 254
    :cond_0
    instance-of v0, p1, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$HourDirNode;

    if-eqz v0, :cond_1

    .line 255
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mOldestAllowedHourDirName:J

    invoke-static {p1, v0, v1}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->hasExceededTTL(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;J)Z

    move-result p1

    return p1

    .line 257
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directoryNode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static hasExceededTTL(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;J)Z
    .locals 5

    const/4 v0, -0x1

    .line 263
    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;->asTimestamp(I)J

    move-result-wide v0

    const/4 p0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return p0

    :cond_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private lockAwareDeleteFile(Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/facebook/analytics2/logger/BatchLockState<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 215
    invoke-virtual {p2, p1}, Lcom/facebook/analytics2/logger/BatchLockState;->acquire(Ljava/lang/Object;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    move-result-object p2

    .line 217
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->tryLock(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 219
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p2, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->markDeleted(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 224
    :try_start_2
    invoke-virtual {p2, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 228
    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->release()V

    return p1

    .line 224
    :cond_0
    :try_start_3
    invoke-virtual {p2, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p2, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 228
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->release()V

    const/4 p1, 0x0

    return p1

    :catchall_1
    move-exception p1

    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->release()V

    throw p1
.end method


# virtual methods
.method public getIteratedFileCount()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mIteratedFileCount:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mNextIsComputed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 97
    iput-boolean v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mNextIsComputed:Z

    .line 98
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->computeNext()Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mNext:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mNext:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Lcom/facebook/analytics2/logger/BatchPayloadInternal;
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mNext:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    const/4 v1, 0x0

    .line 110
    iput-boolean v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mNextIsComputed:Z

    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mNext:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->next()Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "File removal should be accomplished via markSuccessful"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
