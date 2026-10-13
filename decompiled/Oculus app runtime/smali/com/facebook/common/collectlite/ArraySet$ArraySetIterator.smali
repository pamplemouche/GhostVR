.class final Lcom/facebook/common/collectlite/ArraySet$ArraySetIterator;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/collectlite/ArraySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ArraySetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mRemoved:Z

.field final synthetic this$0:Lcom/facebook/common/collectlite/ArraySet;


# direct methods
.method public constructor <init>(Lcom/facebook/common/collectlite/ArraySet;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/facebook/common/collectlite/ArraySet$ArraySetIterator;->this$0:Lcom/facebook/common/collectlite/ArraySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 298
    iput p1, p0, Lcom/facebook/common/collectlite/ArraySet$ArraySetIterator;->mIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 303
    iget v0, p0, Lcom/facebook/common/collectlite/ArraySet$ArraySetIterator;->mIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/facebook/common/collectlite/ArraySet$ArraySetIterator;->this$0:Lcom/facebook/common/collectlite/ArraySet;

    invoke-virtual {v2}, Lcom/facebook/common/collectlite/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/ArraySet$ArraySetIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lcom/facebook/common/collectlite/ArraySet$ArraySetIterator;->mRemoved:Z

    .line 312
    iget v0, p0, Lcom/facebook/common/collectlite/ArraySet$ArraySetIterator;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/common/collectlite/ArraySet$ArraySetIterator;->mIndex:I

    .line 313
    iget-object v0, p0, Lcom/facebook/common/collectlite/ArraySet$ArraySetIterator;->this$0:Lcom/facebook/common/collectlite/ArraySet;

    iget v1, p0, Lcom/facebook/common/collectlite/ArraySet$ArraySetIterator;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/facebook/common/collectlite/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 309
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 318
    iget-boolean v0, p0, Lcom/facebook/common/collectlite/ArraySet$ArraySetIterator;->mRemoved:Z

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/facebook/common/collectlite/ArraySet$ArraySetIterator;->this$0:Lcom/facebook/common/collectlite/ArraySet;

    iget v1, p0, Lcom/facebook/common/collectlite/ArraySet$ArraySetIterator;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/facebook/common/collectlite/ArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lcom/facebook/common/collectlite/ArraySet$ArraySetIterator;->mRemoved:Z

    .line 323
    iget v1, p0, Lcom/facebook/common/collectlite/ArraySet$ArraySetIterator;->mIndex:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/common/collectlite/ArraySet$ArraySetIterator;->mIndex:I

    return-void

    .line 319
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
