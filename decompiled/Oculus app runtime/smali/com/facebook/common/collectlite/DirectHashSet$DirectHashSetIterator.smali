.class final Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;
.super Ljava/lang/Object;
.source "DirectHashSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/collectlite/DirectHashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DirectHashSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final mBackingArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mCanRemove:Z

.field private mCurrentPosition:I

.field private mExpectedModCount:I

.field private mLastPosition:I

.field private final mSet:Lcom/facebook/common/collectlite/DirectHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/collectlite/DirectHashSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/common/collectlite/DirectHashSet;


# direct methods
.method constructor <init>(Lcom/facebook/common/collectlite/DirectHashSet;Lcom/facebook/common/collectlite/DirectHashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/collectlite/DirectHashSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 486
    iput-object p1, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->this$0:Lcom/facebook/common/collectlite/DirectHashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p2, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mSet:Lcom/facebook/common/collectlite/DirectHashSet;

    .line 488
    invoke-static {p2}, Lcom/facebook/common/collectlite/DirectHashSet;->access$000(Lcom/facebook/common/collectlite/DirectHashSet;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mBackingArray:[Ljava/lang/Object;

    .line 489
    invoke-static {p2}, Lcom/facebook/common/collectlite/DirectHashSet;->access$100(Lcom/facebook/common/collectlite/DirectHashSet;)I

    move-result p1

    iput p1, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mExpectedModCount:I

    .line 490
    invoke-virtual {p2}, Lcom/facebook/common/collectlite/DirectHashSet;->firstIndex()I

    move-result p1

    iput p1, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mCurrentPosition:I

    .line 491
    iget p1, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mCurrentPosition:I

    iput p1, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mLastPosition:I

    const/4 p1, 0x0

    .line 492
    iput-boolean p1, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mCanRemove:Z

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 497
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mCurrentPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 504
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mExpectedModCount:I

    iget-object v1, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mSet:Lcom/facebook/common/collectlite/DirectHashSet;

    invoke-static {v1}, Lcom/facebook/common/collectlite/DirectHashSet;->access$100(Lcom/facebook/common/collectlite/DirectHashSet;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 507
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mCurrentPosition:I

    if-ltz v0, :cond_3

    .line 512
    iget-object v1, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mBackingArray:[Ljava/lang/Object;

    aget-object v0, v1, v0

    .line 513
    invoke-static {}, Lcom/facebook/common/collectlite/DirectHashSet;->access$200()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 517
    :cond_0
    iget v1, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mCurrentPosition:I

    iput v1, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mLastPosition:I

    const/4 v2, 0x1

    .line 518
    iput-boolean v2, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mCanRemove:Z

    add-int/2addr v1, v2

    .line 521
    :goto_0
    iget-object v2, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mBackingArray:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 522
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 523
    iput v1, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mCurrentPosition:I

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 529
    iput v1, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mCurrentPosition:I

    return-object v0

    .line 508
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 505
    :cond_4
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    .line 535
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mExpectedModCount:I

    iget-object v1, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mSet:Lcom/facebook/common/collectlite/DirectHashSet;

    invoke-static {v1}, Lcom/facebook/common/collectlite/DirectHashSet;->access$100(Lcom/facebook/common/collectlite/DirectHashSet;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 539
    iget-boolean v0, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mCanRemove:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 543
    iput-boolean v0, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mCanRemove:Z

    .line 544
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mSet:Lcom/facebook/common/collectlite/DirectHashSet;

    iget-object v1, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mBackingArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mLastPosition:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/common/collectlite/DirectHashSet;->remove(Ljava/lang/Object;)Z

    .line 548
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mExpectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mExpectedModCount:I

    .line 553
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isInternalBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mSet:Lcom/facebook/common/collectlite/DirectHashSet;

    invoke-static {v0}, Lcom/facebook/common/collectlite/DirectHashSet;->access$100(Lcom/facebook/common/collectlite/DirectHashSet;)I

    move-result v0

    iget v1, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mExpectedModCount:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 558
    :cond_1
    :goto_0
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mLastPosition:I

    :goto_1
    iget-object v1, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mBackingArray:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 559
    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 560
    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mCurrentPosition:I

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    .line 565
    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;->mCurrentPosition:I

    return-void

    .line 540
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 536
    :cond_5
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
