.class public final Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$ProcessDirNode;
.super Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;
.source "BatchDirectoryStructureIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessDirNode"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 236
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;-><init>(Ljava/io/File;)V

    .line 237
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->access$100()Ljava/io/FileFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$ProcessDirNode;->setFileFilter(Ljava/io/FileFilter;)V

    return-void
.end method


# virtual methods
.method protected newChildNode(Ljava/io/File;)Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;
    .locals 1

    .line 242
    new-instance v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$UidDirNode;

    invoke-direct {v0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$UidDirNode;-><init>(Ljava/io/File;)V

    return-object v0
.end method
