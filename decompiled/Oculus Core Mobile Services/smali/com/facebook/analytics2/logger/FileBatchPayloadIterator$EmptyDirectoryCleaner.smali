.class Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;
.super Ljava/lang/Object;
.source "FileBatchPayloadIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyDirectoryCleaner"
.end annotation


# instance fields
.field private final mDirectoriesToCleanup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;->mDirectoriesToCleanup:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$1;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;)V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;->mDirectoriesToCleanup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method

.method public cleanup()V
    .locals 6

    .prologue
    .line 283
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->daysSinceEpoch()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->hoursSinceEpoch()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 285
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;->mDirectoriesToCleanup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    .line 286
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;->mDirectoriesToCleanup:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;

    .line 287
    instance-of v5, v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$HourDirNode;

    if-eqz v5, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->access$100(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 289
    :cond_0
    instance-of v5, v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DayDirNode;

    if-eqz v5, :cond_1

    .line 290
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->access$100(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 292
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->access$200(Ljava/io/File;)V

    goto :goto_1

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;->mDirectoriesToCleanup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 296
    return-void
.end method
