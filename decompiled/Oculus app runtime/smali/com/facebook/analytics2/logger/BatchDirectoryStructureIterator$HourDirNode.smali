.class public final Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$HourDirNode;
.super Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;
.source "BatchDirectoryStructureIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HourDirNode"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 288
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;-><init>(Ljava/io/File;)V

    .line 289
    sget-object p1, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->TIMESTAMP_FILE_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$HourDirNode;->setChildComparator(Ljava/util/Comparator;)V

    .line 290
    sget-object p1, Lcom/facebook/analytics2/logger/BatchDirectoryStructure$BatchFilenameStructure;->BATCH_FILE_FILTER:Ljava/io/FileFilter;

    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$HourDirNode;->setFileFilter(Ljava/io/FileFilter;)V

    return-void
.end method


# virtual methods
.method protected newChildNode(Ljava/io/File;)Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;
    .locals 1

    .line 295
    new-instance v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$BatchFileNode;

    invoke-direct {v0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$BatchFileNode;-><init>(Ljava/io/File;)V

    return-object v0
.end method
