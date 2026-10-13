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
        "Lcom/facebook/analytics2/logger/EventBatchStore<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EventBatchFileStore"


# instance fields
.field private final mBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;

.field private final mPriorityAndProcessDir:Ljava/io/File;


# direct methods
.method public constructor <init>(IIILcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/crudolib/params/ParamsCollectionPool;Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState;)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/facebook/analytics2/logger/EventBatchStore;-><init>(IIILcom/facebook/analytics2/logger/BatchFixedMetadataHelper;Lcom/facebook/crudolib/params/ParamsCollectionPool;)V

    .line 36
    iput-object p6, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore;->mPriorityAndProcessDir:Ljava/io/File;

    .line 37
    iput-object p7, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore;->mBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;

    return-void
.end method

.method private createBatch(Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create parent directories for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 125
    :cond_1
    :goto_0
    new-instance v0, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;-><init>(Lcom/facebook/analytics2/logger/EventBatchFileStore;Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)V

    return-object v0
.end method

.method private getCurrentBatchFileOutputStream()Ljava/io/FileOutputStream;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_0
    check-cast v0, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;->fileOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method private updateFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected createNewBatch(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBatchStore$Batch;)Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;
    .locals 5
    .param p2    # Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 43
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore;->mPriorityAndProcessDir:Ljava/io/File;

    .line 45
    invoke-static {v1, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getUserDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getBatchFileForNow(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;

    iget-object p2, p2, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;->file:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 56
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventBatchFileStore;->updateFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    const/4 p2, 0x0

    .line 60
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore;->mBatchLockState:Lcom/facebook/analytics2/logger/BatchLockState;

    invoke-virtual {v1, p1}, Lcom/facebook/analytics2/logger/BatchLockState;->acquire(Ljava/lang/Object;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;

    move-result-object v1

    .line 62
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->tryLock(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_3

    .line 79
    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/facebook/analytics2/logger/EventBatchFileStore;->createBatch(Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    .line 87
    :goto_0
    :try_start_2
    invoke-virtual {v1, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 82
    :catch_0
    :try_start_3
    invoke-direct {p0, p1, v1}, Lcom/facebook/analytics2/logger/EventBatchFileStore;->createBatch(Ljava/io/File;Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;)Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez p2, :cond_2

    .line 94
    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->release()V

    :cond_2
    return-object p2

    .line 87
    :goto_2
    :try_start_4
    invoke-virtual {v1, p0}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->unlock(Ljava/lang/Object;)V

    throw p1

    .line 63
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t lock newly created file : EventBatchFileStore file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", path: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore;->mPriorityAndProcessDir:Ljava/io/File;

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", lockname: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->getLockName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    if-nez p2, :cond_4

    .line 94
    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;->release()V

    :cond_4
    throw p1
.end method

.method protected bridge synthetic createNewBatch(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBatchStore$Batch;)Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
    .locals 0
    .param p2    # Lcom/facebook/analytics2/logger/EventBatchStore$Batch;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/facebook/analytics2/logger/EventBatchFileStore;->createNewBatch(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBatchStore$Batch;)Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;

    move-result-object p1

    return-object p1
.end method

.method protected getCurrentBatchObject()Ljava/io/File;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchFileStore;->mCurrentBatch:Lcom/facebook/analytics2/logger/EventBatchStore$Batch;

    check-cast v0, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/EventBatchFileStore$Batch;->file:Ljava/io/File;

    return-object v0
.end method

.method protected bridge synthetic getCurrentBatchObject()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBatchFileStore;->getCurrentBatchObject()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
