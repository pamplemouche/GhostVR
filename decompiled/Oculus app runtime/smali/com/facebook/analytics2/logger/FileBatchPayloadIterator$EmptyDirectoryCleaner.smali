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
            "Ljava/util/ArrayList<",
            "Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;->mDirectoriesToCleanup:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$1;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;->mDirectoriesToCleanup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cleanup()V
    .locals 6

    .line 278
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->daysSinceEpoch()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->hoursSinceEpoch()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 280
    iget-object v2, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;->mDirectoriesToCleanup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 281
    iget-object v4, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;->mDirectoriesToCleanup:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;

    .line 282
    instance-of v5, v4, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$HourDirNode;

    if-eqz v5, :cond_0

    .line 283
    invoke-virtual {v4}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->access$100(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 284
    :cond_0
    instance-of v5, v4, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DayDirNode;

    if-eqz v5, :cond_1

    .line 285
    invoke-virtual {v4}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->access$100(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 287
    :cond_1
    invoke-virtual {v4}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->access$200(Ljava/io/File;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$EmptyDirectoryCleaner;->mDirectoriesToCleanup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
