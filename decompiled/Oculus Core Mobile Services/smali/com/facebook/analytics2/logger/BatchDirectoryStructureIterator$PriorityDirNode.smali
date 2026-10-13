.class public final Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$PriorityDirNode;
.super Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;
.source "BatchDirectoryStructureIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PriorityDirNode"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;-><init>(Ljava/io/File;)V

    .line 225
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->access$100()Ljava/io/FileFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$PriorityDirNode;->setFileFilter(Ljava/io/FileFilter;)V

    .line 226
    return-void
.end method


# virtual methods
.method protected newChildNode(Ljava/io/File;)Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$ProcessDirNode;

    invoke-direct {v0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$ProcessDirNode;-><init>(Ljava/io/File;)V

    return-object v0
.end method
