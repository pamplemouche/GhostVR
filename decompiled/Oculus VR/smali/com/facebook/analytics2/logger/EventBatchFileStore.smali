.class Lcom/facebook/analytics2/logger/EventBatchFileStore;
.super Lcom/facebook/analytics2/logger/EventBatchStore;
.source "EventBatchFileStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/analytics2/logger/EventBatchStore",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBatchId:Ljava/lang/String;

.field private final mBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;

.field private final mPriorityAndProcessDir:Ljava/io/File;


# direct methods
.method public constructor <init>(IIILcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/crudolib/params/ParamsCollectionPool;Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/facebook/analytics2/logger/EventBatchStore;-><init>(IIILcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/crudolib/params/ParamsCollectionPool;)V

    .line 38
    iput-object p6, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore;->mPriorityAndProcessDir:Ljava/io/File;

    .line 39
    iput-object p7, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore;->mBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;

    .line 40
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore;->mBatchId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private createBatch(Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create parent directories for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    new-instance v0, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;-><init>(Lcom/facebook/analytics2/logger/EventBatchFileStore;Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V

    return-object v0
.end method

.method private updateFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const-string v0, ".json"

    .line 108
    const-string v0, "-1"

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".json"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createNewBatch(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBatchStore$Batch;)Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore;->mPriorityAndProcessDir:Ljava/io/File;

    .line 48
    invoke-static {v0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getUserDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore;->mBatchId:Ljava/lang/String;

    .line 47
    invoke-static {v0, v1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getBatchFileForNow(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 50
    if-eqz p2, :cond_5

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;

    iget-object v2, p2, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/analytics2/logger/EventBatchFileStore;->updateFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    :goto_0
    const/4 v1, 0x0

    .line 63
    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore;->mBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;

    invoke-virtual {v2, v0}, Lcom/facebook/analytics2/logger/BatchLockState;->acquire(Ljava/lang/Object;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    move-result-object v2

    .line 65
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->tryLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 66
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t lock newly created file : EventBatchFileStore file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", path: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore;->mPriorityAndProcessDir:Ljava/io/File;

    .line 74
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", lockname: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->getLockName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :catchall_0
    move-exception v0

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->release()V

    :cond_0
    throw v0

    .line 84
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, v2}, Lcom/facebook/analytics2/logger/EventBatchFileStore;->createBatch(Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 89
    if-nez v1, :cond_2

    .line 92
    :try_start_2
    invoke-virtual {v2, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 99
    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->release()V

    .line 102
    :cond_3
    return-object v1

    .line 85
    :catch_0
    move-exception v3

    .line 87
    :try_start_3
    invoke-direct {p0, v0, v2}, Lcom/facebook/analytics2/logger/EventBatchFileStore;->createBatch(Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 89
    if-nez v1, :cond_2

    .line 92
    :try_start_4
    invoke-virtual {v2, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V

    goto :goto_1

    .line 89
    :catchall_1
    move-exception v0

    if-nez v1, :cond_4

    .line 92
    invoke-virtual {v2, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V

    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected bridge synthetic createNewBatch(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBatchStore$Batch;)Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/facebook/analytics2/logger/EventBatchFileStore;->createNewBatch(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBatchStore$Batch;)Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentBatchObject()Ljava/io/File;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    check-cast v0, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;->file:Ljava/io/File;

    goto :goto_0
.end method

.method protected bridge synthetic getCurrentBatchObject()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchFileStore;->getCurrentBatchObject()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
