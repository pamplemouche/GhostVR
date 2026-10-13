.class public Lcom/facebook/acra/util/BoundedLinkedList;
.super Ljava/util/LinkedList;
.source "BoundedLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 38
    .local p0, "this":Lcom/facebook/acra/util/BoundedLinkedList;, "Lcom/facebook/acra/util/BoundedLinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/acra/util/BoundedLinkedList;->maxSize:I

    .line 39
    iput p1, p0, Lcom/facebook/acra/util/BoundedLinkedList;->maxSize:I

    .line 40
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/facebook/acra/util/BoundedLinkedList;, "Lcom/facebook/acra/util/BoundedLinkedList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/facebook/acra/util/BoundedLinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/facebook/acra/util/BoundedLinkedList;->maxSize:I

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/facebook/acra/util/BoundedLinkedList;->removeFirst()Ljava/lang/Object;

    .line 65
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/facebook/acra/util/BoundedLinkedList;, "Lcom/facebook/acra/util/BoundedLinkedList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/facebook/acra/util/BoundedLinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/facebook/acra/util/BoundedLinkedList;->maxSize:I

    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/facebook/acra/util/BoundedLinkedList;->removeFirst()Ljava/lang/Object;

    .line 52
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/facebook/acra/util/BoundedLinkedList;, "Lcom/facebook/acra/util/BoundedLinkedList<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/facebook/acra/util/BoundedLinkedList;, "Lcom/facebook/acra/util/BoundedLinkedList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/facebook/acra/util/BoundedLinkedList;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int v1, v2, v3

    .line 76
    .local v1, "totalNeededSize":I
    iget v2, p0, Lcom/facebook/acra/util/BoundedLinkedList;->maxSize:I

    sub-int v0, v1, v2

    .line 77
    .local v0, "overhead":I
    if-lez v0, :cond_0

    .line 78
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/acra/util/BoundedLinkedList;->removeRange(II)V

    .line 80
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/facebook/acra/util/BoundedLinkedList;, "Lcom/facebook/acra/util/BoundedLinkedList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/facebook/acra/util/BoundedLinkedList;, "Lcom/facebook/acra/util/BoundedLinkedList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/facebook/acra/util/BoundedLinkedList;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 127
    .local p0, "this":Lcom/facebook/acra/util/BoundedLinkedList;, "Lcom/facebook/acra/util/BoundedLinkedList<TE;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/facebook/acra/util/BoundedLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 133
    .end local v0    # "object":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
