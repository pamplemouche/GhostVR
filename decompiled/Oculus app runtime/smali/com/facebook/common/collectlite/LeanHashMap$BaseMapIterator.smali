.class Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;
.super Ljava/lang/Object;
.source "LeanHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/collectlite/LeanHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private mCurrentBaseIndex:I

.field private mExpectedModCount:I

.field private mNextBaseIndex:I

.field final synthetic this$0:Lcom/facebook/common/collectlite/LeanHashMap;


# direct methods
.method constructor <init>(Lcom/facebook/common/collectlite/LeanHashMap;)V
    .locals 1

    .line 761
    iput-object p1, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    invoke-static {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->access$300(Lcom/facebook/common/collectlite/LeanHashMap;)I

    move-result v0

    iput v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mExpectedModCount:I

    const/4 v0, -0x1

    .line 763
    iput v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mCurrentBaseIndex:I

    .line 764
    invoke-virtual {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->firstIndex()I

    move-result p1

    iput p1, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mNextBaseIndex:I

    return-void
.end method

.method private validateIndexPosition()V
    .locals 2

    .line 848
    iget v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mCurrentBaseIndex:I

    if-ltz v0, :cond_0

    return-void

    .line 849
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator not pointing to any element."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 833
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 836
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 837
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/common/collectlite/LeanHashMap;->access$700(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->access$700(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 789
    invoke-direct {p0}, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->validateIndexPosition()V

    .line 790
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    iget v1, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mCurrentBaseIndex:I

    invoke-virtual {v0, v1}, Lcom/facebook/common/collectlite/LeanHashMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 796
    invoke-direct {p0}, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->validateIndexPosition()V

    .line 797
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    iget v1, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mCurrentBaseIndex:I

    invoke-virtual {v0, v1}, Lcom/facebook/common/collectlite/LeanHashMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 768
    iget v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mNextBaseIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 842
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 843
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 844
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    return v0
.end method

.method nextEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 772
    iget v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mExpectedModCount:I

    iget-object v1, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-static {v1}, Lcom/facebook/common/collectlite/LeanHashMap;->access$300(Lcom/facebook/common/collectlite/LeanHashMap;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 776
    iget v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mNextBaseIndex:I

    if-ltz v0, :cond_0

    .line 780
    iput v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mCurrentBaseIndex:I

    .line 781
    iget-object v1, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-virtual {v1, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->nextIndex(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mNextBaseIndex:I

    return-object p0

    .line 777
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 773
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 811
    invoke-direct {p0}, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->validateIndexPosition()V

    .line 813
    iget v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mExpectedModCount:I

    iget-object v1, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-static {v1}, Lcom/facebook/common/collectlite/LeanHashMap;->access$300(Lcom/facebook/common/collectlite/LeanHashMap;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 816
    iget v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mExpectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mExpectedModCount:I

    .line 818
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    iget v1, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mCurrentBaseIndex:I

    invoke-virtual {v0, v1}, Lcom/facebook/common/collectlite/LeanHashMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/common/collectlite/LeanHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-static {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->access$500(Lcom/facebook/common/collectlite/LeanHashMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mCurrentBaseIndex:I

    invoke-static {v1}, Lcom/facebook/common/collectlite/LeanHashMap;->access$600(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 824
    iget v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mCurrentBaseIndex:I

    iput v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mNextBaseIndex:I

    :cond_0
    const/4 v0, -0x1

    .line 828
    iput v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mCurrentBaseIndex:I

    return-void

    .line 814
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 803
    invoke-direct {p0}, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->validateIndexPosition()V

    .line 804
    iget v0, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->mCurrentBaseIndex:I

    invoke-static {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->access$400(I)I

    move-result v0

    .line 805
    iget-object v1, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-static {v1}, Lcom/facebook/common/collectlite/LeanHashMap;->access$500(Lcom/facebook/common/collectlite/LeanHashMap;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    .line 806
    iget-object v2, p0, Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;->this$0:Lcom/facebook/common/collectlite/LeanHashMap;

    invoke-static {v2}, Lcom/facebook/common/collectlite/LeanHashMap;->access$500(Lcom/facebook/common/collectlite/LeanHashMap;)[Ljava/lang/Object;

    move-result-object v2

    aput-object p1, v2, v0

    return-object v1
.end method
