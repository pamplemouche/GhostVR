.class public Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;
.super Ljava/lang/Object;
.source "BalancedIntKeyObjectTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;,
        Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private rootNode:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "TE;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->rootNode:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->convertToSortedList(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->buildTree(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor<",
            "TE;>;[TE;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->rootNode:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->convertToSortedList(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->buildTree(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;Ljava/util/List;)V

    return-void
.end method

.method private buildTree(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;Ljava/util/List;II)Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor<",
            "TE;>;",
            "Ljava/util/List<",
            "Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;",
            ">;II)",
            "Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    if-le p3, p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int v0, p3, p4

    shr-int/lit8 v0, v0, 0x1

    .line 44
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    add-int/lit8 v2, v0, -0x1

    .line 45
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->buildTree(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;Ljava/util/List;II)Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    move-result-object p3

    iput-object p3, v1, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;->mLeft:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    add-int/lit8 v0, v0, 0x1

    .line 46
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->buildTree(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;Ljava/util/List;II)Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    move-result-object p1

    iput-object p1, v1, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;->mRight:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    return-object v1
.end method

.method private buildTree(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor<",
            "TE;>;",
            "Ljava/util/List<",
            "Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->buildTree(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;Ljava/util/List;II)Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->rootNode:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    return-void
.end method

.method private convertToSortedList(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/List<",
            "Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {p0}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 93
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 94
    new-instance v2, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    invoke-direct {v2, p1, v1}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;-><init>(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;Ljava/lang/Object;)V

    .line 95
    invoke-interface {v0, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method private convertToSortedList(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;[Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor<",
            "TE;>;[TE;)",
            "Ljava/util/List<",
            "Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {p0}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 102
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 103
    new-instance v4, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    invoke-direct {v4, p1, v3}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;-><init>(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$IntKeyExtractor;Ljava/lang/Object;)V

    .line 104
    invoke-interface {v0, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method private countNodes(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 77
    :cond_0
    iget-object v0, p1, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;->mLeft:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    invoke-direct {p0, v0}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->countNodes(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object p1, p1, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;->mRight:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->countNodes(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$1;

    invoke-direct {v0, p0}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$1;-><init>(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;)V

    return-object v0
.end method

.method private getFromTree(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;",
            "I)TE;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 61
    :cond_0
    iget v0, p1, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;->mKey:I

    if-ne p2, v0, :cond_1

    .line 62
    iget-object p1, p1, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;->mItem:Ljava/lang/Object;

    return-object p1

    .line 65
    :cond_1
    iget v0, p1, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;->mKey:I

    if-ge p2, v0, :cond_2

    iget-object p1, p1, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;->mLeft:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;->mRight:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->getFromTree(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->rootNode:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    invoke-direct {p0, v0, p1}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->getFromTree(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getRootNode()Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->rootNode:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->rootNode:Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;

    invoke-direct {p0, v0}, Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree;->countNodes(Lcom/facebook/common/collectlite/BalancedIntKeyObjectTree$TreeNode;)I

    move-result v0

    return v0
.end method
