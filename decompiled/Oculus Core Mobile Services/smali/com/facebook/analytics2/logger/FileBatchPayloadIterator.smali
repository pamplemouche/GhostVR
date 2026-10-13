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
        "Ljava/util/Iterator",
        "<",
        "Lcom/facebook/analytics2/logger/BatchPayloadInternal;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBatchDirectoryStructureIterator:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;

.field private final mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

.field private mCurrentBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/analytics2/logger/BatchLockState",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIteratedFileCount:I

.field private mLastFilePerProcess:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNext:Lcom/facebook/analytics2/logger/BatchPayloadInternal;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNextIsComputed:Z

.field private final mOldestAllowedDayDirName:J

.field private final mOldestAllowedHourDirName:J

.field private final mProcessDirectoryProgressCallback:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;

.field private final mSoftMaxPayloadSize:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;I)V
    .locals 4

    .prologue
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

    move-result-wide v0

    const-wide/16 v2, 0x7

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mOldestAllowedDayDirName:J

    .line 91
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->hoursSinceEpoch()J

    move-result-wide v0

    const-wide/16 v2, 0xa8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mOldestAllowedHourDirName:J

    .line 92
    return-void
.end method

.method static synthetic access$100(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->deleteIfEmptyAndNotMatching(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->deleteIfEmpty(Ljava/io/File;)V

    return-void
.end method

.method private computeNext()Lcom/facebook/analytics2/logger/BatchPayloadInternal;
    .locals 14
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 135
    new-instance v7, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;

    invoke-direct {v7, v6}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;-><init>(Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$1;)V

    .line 136
    new-instance v8, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v6

    move v3, v5

    .line 140
    :goto_0
    if-eqz v3, :cond_0

    iget v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mSoftMaxPayloadSize:I

    if-ge v3, v0, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mBatchDirectoryStructureIterator:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;

    .line 141
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 142
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mBatchDirectoryStructureIterator:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->next()Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;

    move-result-object v1

    .line 143
    iget-object v0, v1, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;->fileNode:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;

    .line 145
    iget v9, v1, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;->eventType:I

    packed-switch v9, :pswitch_data_0

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;->eventType:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :pswitch_0
    instance-of v1, v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$ProcessDirNode;

    if-eqz v1, :cond_2

    .line 150
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/facebook/crudolib/processname/ProcessNameHelper;->getMyFullProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    .line 149
    :goto_1
    invoke-static {v0}, Lcom/facebook/analytics2/logger/BatchLockState;->getInstance(Z)Lcom/facebook/analytics2/logger/BatchLockState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mCurrentBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;

    move v0, v3

    :goto_2
    move v3, v0

    .line 197
    goto :goto_0

    :cond_1
    move v0, v5

    .line 150
    goto :goto_1

    .line 151
    :cond_2
    instance-of v1, v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;

    if-eqz v1, :cond_a

    .line 152
    check-cast v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;

    .line 153
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->hasExceededTTL(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_3
    move-object v2, v0

    move v0, v3

    .line 156
    goto :goto_2

    .line 160
    :pswitch_1
    if-eqz v2, :cond_4

    .line 161
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->deleteIfEmpty(Ljava/io/File;)V

    .line 162
    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v2, v6

    .line 168
    :cond_3
    :goto_4
    instance-of v1, v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$ProcessDirNode;

    if-eqz v1, :cond_a

    .line 169
    iget-object v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mProcessDirectoryProgressCallback:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;

    .line 170
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v0

    iget-object v9, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mLastFilePerProcess:Ljava/io/File;

    .line 169
    invoke-interface {v1, v0, v9}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;->onExhaustedProcessDir(Ljava/io/File;Ljava/io/File;)V

    .line 171
    iput-object v6, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mLastFilePerProcess:Ljava/io/File;

    move v0, v3

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 166
    check-cast v1, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;

    invoke-virtual {v7, v1}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;->add(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;)V

    goto :goto_4

    .line 176
    :pswitch_2
    if-eqz v2, :cond_5

    .line 177
    const-string v1, "FileBatchPayloadIterator"

    const-string v9, "Deleting expired analytics data: %s"

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-static {v1, v9, v10}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mCurrentBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;

    invoke-direct {p0, v0, v1}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->lockAwareDeleteFile(Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState;)Z

    move v0, v3

    goto :goto_2

    .line 179
    :cond_5
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-nez v1, :cond_6

    .line 180
    const-string v1, "FileBatchPayloadIterator"

    const-string v9, "Ignoring newly created batch file with 0 length: %s"

    .line 183
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v1, v9, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v3

    goto :goto_2

    .line 185
    :cond_6
    new-instance v1, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;

    iget-object v9, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

    .line 187
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v10

    iget-object v11, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mCurrentBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;

    invoke-direct {v1, v9, v10, v11}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;-><init>(Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState;)V

    .line 188
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    int-to-long v10, v3

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$FileBatchPayload;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v1, v10

    .line 190
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mLastFilePerProcess:Ljava/io/File;

    move v0, v1

    .line 192
    goto/16 :goto_2

    .line 199
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 200
    if-lez v0, :cond_8

    .line 202
    iget v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mIteratedFileCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mIteratedFileCount:I

    .line 203
    if-le v0, v4, :cond_9

    .line 204
    const-string v0, "FileBatchPayloadIterator"

    const-string v1, "Merged %d batches together (total %d bytes uncompressed)"

    .line 207
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 208
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 204
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    new-instance v0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mBatchDynamicMetadataHelper:Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

    invoke-direct {v0, v8, v1}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$MultiBatchPayload;-><init>(Ljava/util/List;Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;)V

    .line 213
    :goto_5
    new-instance v6, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;

    invoke-direct {v6, v0, v7}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$CleanupBatchPayloadWrapper;-><init>(Lcom/facebook/analytics2/logger/BatchPayloadInternal;Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;)V

    .line 215
    :cond_8
    return-object v6

    .line 211
    :cond_9
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    goto :goto_5

    :cond_a
    move v0, v3

    goto/16 :goto_2

    :cond_b
    move-object v0, v2

    goto/16 :goto_3

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static deleteIfEmpty(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 245
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const-string v0, "FileBatchPayloadIterator"

    const-string v1, "%s: not a directory, deleting anyway..."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 254
    return-void
.end method

.method private static deleteIfEmptyAndNotMatching(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-static {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->deleteIfEmpty(Ljava/io/File;)V

    .line 242
    :cond_0
    return-void
.end method

.method private hasExceededTTL(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;)Z
    .locals 3

    .prologue
    .line 257
    instance-of v0, p1, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DayDirNode;

    if-eqz v0, :cond_0

    .line 258
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mOldestAllowedDayDirName:J

    invoke-static {p1, v0, v1}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->hasExceededTTL(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;J)Z

    move-result v0

    .line 260
    :goto_0
    return v0

    .line 259
    :cond_0
    instance-of v0, p1, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$HourDirNode;

    if-eqz v0, :cond_1

    .line 260
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mOldestAllowedHourDirName:J

    invoke-static {p1, v0, v1}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->hasExceededTTL(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;J)Z

    move-result v0

    goto :goto_0

    .line 262
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directoryNode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static hasExceededTTL(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;J)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 268
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;->asTimestamp(I)J

    move-result-wide v2

    .line 269
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    :cond_1
    cmp-long v1, v2, p1

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lockAwareDeleteFile(Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/facebook/analytics2/logger/BatchLockState",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p2, p1}, Lcom/facebook/analytics2/logger/BatchLockState;->acquire(Ljava/lang/Object;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    move-result-object v1

    .line 222
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->tryLock(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v1, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->markDeleted(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    const/4 v0, 0x1

    .line 229
    :try_start_2
    invoke-virtual {v1, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->release()V

    .line 235
    :goto_0
    return v0

    .line 229
    :cond_0
    :try_start_3
    invoke-virtual {v1, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 233
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->release()V

    .line 235
    const/4 v0, 0x0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 233
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->release()V

    throw v0
.end method


# virtual methods
.method public getIteratedFileCount()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mIteratedFileCount:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 96
    iget-boolean v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mNextIsComputed:Z

    if-nez v1, :cond_0

    .line 97
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mNextIsComputed:Z

    .line 98
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->computeNext()Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mNext:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mNext:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/facebook/analytics2/logger/BatchPayloadInternal;
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mNext:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mNextIsComputed:Z

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->mNext:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    .line 112
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->next()Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "File removal should be accomplished via markSuccessful"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
