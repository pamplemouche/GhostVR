.class final Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;
.super Ljava/lang/Object;
.source "BatchDirectoryStructureIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FastArrayIterator;,
        Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$SnapshotDirectoryIterable;,
        Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$BatchFileNode;,
        Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$HourDirNode;,
        Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DayDirNode;,
        Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TimestampDirectoryNode;,
        Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$UidDirNode;,
        Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$ProcessDirNode;,
        Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$PriorityDirNode;,
        Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;,
        Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;,
        Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;,
        Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final DIRECTORY_FILTER:Ljava/io/FileFilter;


# instance fields
.field private mNext:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNextIsComputed:Z

.field private final mStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 305
    new-instance v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$1;

    invoke-direct {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$1;-><init>()V

    sput-object v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->DIRECTORY_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$PriorityDirNode;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->mStack:Ljava/util/ArrayDeque;

    .line 42
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$PriorityDirNode;->children()Ljava/util/Iterator;

    move-result-object p1

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->mStack:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;-><init>(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$100()Ljava/io/FileFilter;
    .locals 1

    .line 33
    sget-object v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->DIRECTORY_FILTER:Ljava/io/FileFilter;

    return-object v0
.end method

.method private computeNext()Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;
    .locals 6
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->mStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->mStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;

    .line 64
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;->getFileNode()Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;

    move-result-object v2

    .line 65
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;->hasNextChild()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;->nextChild()Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;

    move-result-object v3

    .line 67
    iget-object v4, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->mStack:Ljava/util/ArrayDeque;

    new-instance v5, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;

    invoke-direct {v5, v3, v1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;-><init>(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$1;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;->isFirstChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;-><init>(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;I)V

    return-object v0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->mStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 74
    instance-of v0, v2, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$DirectoryNode;

    if-eqz v0, :cond_2

    .line 75
    new-instance v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;-><init>(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;I)V

    return-object v0

    .line 77
    :cond_2
    new-instance v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;-><init>(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;I)V

    return-object v0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 53
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->mNextIsComputed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 54
    iput-boolean v1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->mNextIsComputed:Z

    .line 55
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->computeNext()Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->mNext:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->mNext:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->mNext:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;

    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->mNext:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;

    const/4 v1, 0x0

    .line 92
    iput-boolean v1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->mNextIsComputed:Z

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;->next()Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalEvent;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
