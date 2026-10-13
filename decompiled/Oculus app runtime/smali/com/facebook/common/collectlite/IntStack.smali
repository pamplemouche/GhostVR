.class public Lcom/facebook/common/collectlite/IntStack;
.super Ljava/lang/Object;
.source "IntStack.java"


# instance fields
.field private mCount:I

.field private final mDelegate:Lcom/facebook/common/collectlite/ManagedIntArray;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/facebook/common/collectlite/IntStack;->mCount:I

    .line 14
    invoke-static {p1}, Lcom/facebook/common/collectlite/ManagedIntArray;->createWithInitialCapacity(I)Lcom/facebook/common/collectlite/ManagedIntArray;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/common/collectlite/IntStack;->mDelegate:Lcom/facebook/common/collectlite/ManagedIntArray;

    return-void
.end method


# virtual methods
.method public getAt(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 47
    iget v0, p0, Lcom/facebook/common/collectlite/IntStack;->mCount:I

    if-ge p1, v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/facebook/common/collectlite/IntStack;->mDelegate:Lcom/facebook/common/collectlite/ManagedIntArray;

    invoke-virtual {v0, p1}, Lcom/facebook/common/collectlite/ManagedIntArray;->get(I)I

    move-result p1

    return p1

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public peek()I
    .locals 2

    .line 36
    iget v0, p0, Lcom/facebook/common/collectlite/IntStack;->mCount:I

    if-eqz v0, :cond_0

    .line 39
    iget-object v1, p0, Lcom/facebook/common/collectlite/IntStack;->mDelegate:Lcom/facebook/common/collectlite/ManagedIntArray;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/common/collectlite/ManagedIntArray;->get(I)I

    move-result v0

    return v0

    .line 37
    :cond_0
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0
.end method

.method public pop()I
    .locals 2

    .line 27
    iget v0, p0, Lcom/facebook/common/collectlite/IntStack;->mCount:I

    if-eqz v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/facebook/common/collectlite/IntStack;->mDelegate:Lcom/facebook/common/collectlite/ManagedIntArray;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/common/collectlite/ManagedIntArray;->get(I)I

    move-result v0

    .line 31
    iget v1, p0, Lcom/facebook/common/collectlite/IntStack;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/facebook/common/collectlite/IntStack;->mCount:I

    return v0

    .line 28
    :cond_0
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0
.end method

.method public push(I)V
    .locals 2

    .line 18
    iget v0, p0, Lcom/facebook/common/collectlite/IntStack;->mCount:I

    iget-object v1, p0, Lcom/facebook/common/collectlite/IntStack;->mDelegate:Lcom/facebook/common/collectlite/ManagedIntArray;

    iget v1, v1, Lcom/facebook/common/collectlite/ManagedIntArray;->mLength:I

    if-ge v0, v1, :cond_0

    .line 19
    iget-object v0, p0, Lcom/facebook/common/collectlite/IntStack;->mDelegate:Lcom/facebook/common/collectlite/ManagedIntArray;

    iget-object v0, v0, Lcom/facebook/common/collectlite/ManagedIntArray;->mArray:[I

    iget v1, p0, Lcom/facebook/common/collectlite/IntStack;->mCount:I

    aput p1, v0, v1

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/collectlite/IntStack;->mDelegate:Lcom/facebook/common/collectlite/ManagedIntArray;

    invoke-virtual {v0, p1}, Lcom/facebook/common/collectlite/ManagedIntArray;->add(I)V

    .line 23
    :goto_0
    iget p1, p0, Lcom/facebook/common/collectlite/IntStack;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/facebook/common/collectlite/IntStack;->mCount:I

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/facebook/common/collectlite/IntStack;->mCount:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/facebook/common/collectlite/IntStack;->mCount:I

    return v0
.end method
