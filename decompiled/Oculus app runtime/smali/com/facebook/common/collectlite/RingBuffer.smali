.class public Lcom/facebook/common/collectlite/RingBuffer;
.super Ljava/lang/Object;
.source "RingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final elems:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private end:I

.field private size:I

.field private start:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->size:I

    .line 16
    iput v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->start:I

    .line 17
    iput v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->end:I

    .line 20
    new-array p1, p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized asList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 83
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/facebook/common/collectlite/RingBuffer;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 84
    :goto_0
    iget v2, p0, Lcom/facebook/common/collectlite/RingBuffer;->size:I

    if-ge v1, v2, :cond_0

    .line 85
    invoke-virtual {p0, v1}, Lcom/facebook/common/collectlite/RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 104
    :try_start_0
    iput v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->size:I

    .line 105
    iput v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->start:I

    .line 106
    iput v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->end:I

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dequeue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 39
    :try_start_0
    iget v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->size:I

    if-lez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    iget v1, p0, Lcom/facebook/common/collectlite/RingBuffer;->start:I

    aget-object v0, v0, v1

    .line 43
    iget-object v1, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    iget v2, p0, Lcom/facebook/common/collectlite/RingBuffer;->start:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 44
    iget v1, p0, Lcom/facebook/common/collectlite/RingBuffer;->start:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/common/collectlite/RingBuffer;->start:I

    .line 45
    iget v1, p0, Lcom/facebook/common/collectlite/RingBuffer;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/facebook/common/collectlite/RingBuffer;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-object v0

    .line 40
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Underflow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enqueue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 25
    monitor-exit p0

    return-void

    .line 27
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/RingBuffer;->isAtCapacity()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/common/collectlite/RingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/RingBuffer;->dequeue()Ljava/lang/Object;

    .line 30
    :cond_1
    iget v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->size:I

    iget-object v1, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 33
    iget-object v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    iget v1, p0, Lcom/facebook/common/collectlite/RingBuffer;->end:I

    aput-object p1, v0, v1

    .line 34
    iget p1, p0, Lcom/facebook/common/collectlite/RingBuffer;->end:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/common/collectlite/RingBuffer;->end:I

    .line 35
    iget p1, p0, Lcom/facebook/common/collectlite/RingBuffer;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/facebook/common/collectlite/RingBuffer;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 31
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Overflow"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 50
    :try_start_0
    iget v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->size:I

    if-le v0, p1, :cond_0

    .line 53
    iget v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->start:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr p1, v0

    .line 54
    iget-object v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 51
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isAtCapacity()Z
    .locals 2

    monitor-enter p0

    .line 96
    :try_start_0
    iget v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->size:I

    iget-object v1, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    iget v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 58
    :try_start_0
    iget v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->size:I

    if-le v0, p1, :cond_1

    .line 61
    iget v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->start:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 62
    iget-object v1, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    aget-object v0, v1, v0

    :goto_0
    add-int/lit8 v1, p1, 0x1

    .line 66
    iget v2, p0, Lcom/facebook/common/collectlite/RingBuffer;->size:I

    if-ge v1, v2, :cond_0

    .line 67
    iget v2, p0, Lcom/facebook/common/collectlite/RingBuffer;->start:I

    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr p1, v2

    .line 68
    iget v2, p0, Lcom/facebook/common/collectlite/RingBuffer;->start:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    array-length v3, v3

    rem-int/2addr v2, v3

    .line 70
    iget-object v3, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    aget-object v2, v4, v2

    aput-object v2, v3, p1

    move p1, v1

    goto :goto_0

    .line 74
    :cond_0
    iget v1, p0, Lcom/facebook/common/collectlite/RingBuffer;->start:I

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr p1, v1

    iput p1, p0, Lcom/facebook/common/collectlite/RingBuffer;->end:I

    .line 75
    iget-object p1, p0, Lcom/facebook/common/collectlite/RingBuffer;->elems:[Ljava/lang/Object;

    iget v1, p0, Lcom/facebook/common/collectlite/RingBuffer;->end:I

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 77
    iget p1, p0, Lcom/facebook/common/collectlite/RingBuffer;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/facebook/common/collectlite/RingBuffer;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-object v0

    .line 59
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 100
    :try_start_0
    iget v0, p0, Lcom/facebook/common/collectlite/RingBuffer;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
