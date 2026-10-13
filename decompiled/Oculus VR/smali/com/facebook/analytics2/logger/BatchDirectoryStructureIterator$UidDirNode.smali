.class public final Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$UidDirNode;
.super Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;
.source "BatchDirectoryStructureIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UidDirNode"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;-><init>(Ljava/io/File;)V

    .line 249
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->access$100()Ljava/io/FileFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$UidDirNode;->setFileFilter(Ljava/io/FileFilter;)V

    .line 250
    sget-object v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->TIMESTAMP_FILE_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$UidDirNode;->setChildComparator(Ljava/util/Comparator;)V

    .line 251
    return-void
.end method


# virtual methods
.method protected newChildNode(Ljava/io/File;)Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DayDirNode;

    invoke-direct {v0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DayDirNode;-><init>(Ljava/io/File;)V

    return-object v0
.end method
