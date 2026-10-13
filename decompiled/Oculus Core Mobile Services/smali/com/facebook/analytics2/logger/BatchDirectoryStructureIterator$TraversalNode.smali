.class final Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;
.super Ljava/lang/Object;
.source "BatchDirectoryStructureIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TraversalNode"
.end annotation


# instance fields
.field private mChildrenIter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNextChildIndex:I

.field private final mNode:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;


# direct methods
.method private constructor <init>(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;->mNode:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$1;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;-><init>(Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;)V

    return-void
.end method

.method private children()Ljava/util/Iterator;
    .locals 1
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
    .line 130
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;->mChildrenIter:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;->mNode:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;->children()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;->mChildrenIter:Ljava/util/Iterator;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;->mChildrenIter:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public getFileNode()Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;->mNode:Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;

    return-object v0
.end method

.method public hasNextChild()Z
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;->children()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public isFirstChild()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 121
    iget v1, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;->mNextChildIndex:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextChild()Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;->mNextChildIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;->mNextChildIndex:I

    .line 126
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$TraversalNode;->children()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructureIterator$FileNode;

    return-object v0
.end method
