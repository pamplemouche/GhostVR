.class public abstract Lcom/facebook/quicklog/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/quicklog/ObjectPool$Poolable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/quicklog/ObjectPool$Poolable",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final MAX_POOL_SIZE:I

.field private mAllocCalls:I

.field private mAllocCount:I

.field private mFreeCalls:I

.field private mFreeCount:I

.field private mNextFree:Lcom/facebook/quicklog/ObjectPool$Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/quicklog/ObjectPool;->mNextFree:Lcom/facebook/quicklog/ObjectPool$Poolable;

    .line 29
    iput v1, p0, Lcom/facebook/quicklog/ObjectPool;->mAllocCount:I

    .line 30
    iput v1, p0, Lcom/facebook/quicklog/ObjectPool;->mFreeCount:I

    .line 31
    iput v1, p0, Lcom/facebook/quicklog/ObjectPool;->mAllocCalls:I

    .line 32
    iput v1, p0, Lcom/facebook/quicklog/ObjectPool;->mFreeCalls:I

    .line 37
    iput p1, p0, Lcom/facebook/quicklog/ObjectPool;->MAX_POOL_SIZE:I

    .line 38
    return-void
.end method


# virtual methods
.method public declared-synchronized allocate()Lcom/facebook/quicklog/ObjectPool$Poolable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/quicklog/ObjectPool;->mAllocCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/quicklog/ObjectPool;->mAllocCalls:I

    .line 49
    iget-object v0, p0, Lcom/facebook/quicklog/ObjectPool;->mNextFree:Lcom/facebook/quicklog/ObjectPool$Poolable;

    if-nez v0, :cond_0

    .line 50
    iget v0, p0, Lcom/facebook/quicklog/ObjectPool;->mAllocCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/quicklog/ObjectPool;->mAllocCount:I

    .line 51
    invoke-virtual {p0}, Lcom/facebook/quicklog/ObjectPool;->constructFresh()Lcom/facebook/quicklog/ObjectPool$Poolable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 59
    :goto_0
    monitor-exit p0

    return-object v0

    .line 54
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/quicklog/ObjectPool;->mNextFree:Lcom/facebook/quicklog/ObjectPool$Poolable;

    .line 55
    invoke-interface {v1}, Lcom/facebook/quicklog/ObjectPool$Poolable;->getNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/quicklog/ObjectPool$Poolable;

    iput-object v0, p0, Lcom/facebook/quicklog/ObjectPool;->mNextFree:Lcom/facebook/quicklog/ObjectPool$Poolable;

    .line 56
    invoke-interface {v1}, Lcom/facebook/quicklog/ObjectPool$Poolable;->clear()V

    .line 58
    iget v0, p0, Lcom/facebook/quicklog/ObjectPool;->mFreeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/quicklog/ObjectPool;->mFreeCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 59
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract constructFresh()Lcom/facebook/quicklog/ObjectPool$Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public declared-synchronized free(Lcom/facebook/quicklog/ObjectPool$Poolable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/quicklog/ObjectPool;->mFreeCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/quicklog/ObjectPool;->mFreeCalls:I

    .line 89
    iget v0, p0, Lcom/facebook/quicklog/ObjectPool;->mFreeCount:I

    iget v1, p0, Lcom/facebook/quicklog/ObjectPool;->MAX_POOL_SIZE:I

    if-ge v0, v1, :cond_0

    .line 90
    invoke-interface {p1}, Lcom/facebook/quicklog/ObjectPool$Poolable;->onStoredForRecycle()V

    .line 91
    iget-object v0, p0, Lcom/facebook/quicklog/ObjectPool;->mNextFree:Lcom/facebook/quicklog/ObjectPool$Poolable;

    invoke-interface {p1, v0}, Lcom/facebook/quicklog/ObjectPool$Poolable;->setNext(Ljava/lang/Object;)V

    .line 92
    iput-object p1, p0, Lcom/facebook/quicklog/ObjectPool;->mNextFree:Lcom/facebook/quicklog/ObjectPool$Poolable;

    .line 93
    iget v0, p0, Lcom/facebook/quicklog/ObjectPool;->mFreeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/quicklog/ObjectPool;->mFreeCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
