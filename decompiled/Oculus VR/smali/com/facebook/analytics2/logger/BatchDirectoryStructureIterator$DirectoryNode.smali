.class public abstract Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;
.super Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;
.source "BatchDirectoryStructureIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DirectoryNode"
.end annotation


# instance fields
.field private mChildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFileFilter:Ljava/io/FileFilter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;-><init>(Ljava/io/File;)V

    .line 187
    return-void
.end method


# virtual methods
.method children()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$SnapshotDirectoryIterable;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;->mFile:Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;->mFileFilter:Ljava/io/FileFilter;

    iget-object v3, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;->mChildComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$SnapshotDirectoryIterable;-><init>(Ljava/io/File;Ljava/io/FileFilter;Ljava/util/Comparator;)V

    .line 200
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$SnapshotDirectoryIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 201
    new-instance v1, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode$1;-><init>(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;Ljava/util/Iterator;)V

    return-object v1
.end method

.method protected abstract newChildNode(Ljava/io/File;)Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;
.end method

.method public setChildComparator(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;->mChildComparator:Ljava/util/Comparator;

    .line 195
    return-void
.end method

.method public setFileFilter(Ljava/io/FileFilter;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;->mFileFilter:Ljava/io/FileFilter;

    .line 191
    return-void
.end method
