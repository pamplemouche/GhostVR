.class public final Lcom/facebook/common/collectlite/CopyOnWriteArray;
.super Ljava/lang/Object;
.source "CopyOnWriteArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private mActiveData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDataInstanceCount:I

.field private final mRequestedCapacity:I

.field private mUnmodifiableActiveData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    .line 41
    iget-object v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mUnmodifiableActiveData:Ljava/util/List;

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mRequestedCapacity:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    .line 47
    iget-object v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mUnmodifiableActiveData:Ljava/util/List;

    .line 48
    iput p1, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mRequestedCapacity:I

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_0
    iget v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mDataInstanceCount:I

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    .line 66
    iget-object v2, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mUnmodifiableActiveData:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 68
    iget-object v3, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addIfAbsent(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/facebook/common/collectlite/CopyOnWriteArray;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 77
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 79
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 106
    :try_start_0
    iget v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mDataInstanceCount:I

    if-lez v0, :cond_1

    .line 107
    iget v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mRequestedCapacity:I

    if-ltz v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mRequestedCapacity:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mUnmodifiableActiveData:Ljava/util/List;

    goto :goto_1

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method dataInstanceCount()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mDataInstanceCount:I

    return v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_0
    iget v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mDataInstanceCount:I

    if-gtz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 88
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-gez p1, :cond_1

    .line 90
    monitor-exit p0

    return v0

    .line 93
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    .line 96
    iget-object v3, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mUnmodifiableActiveData:Ljava/util/List;

    :goto_0
    if-ge v0, v2, :cond_3

    if-eq v0, p1, :cond_2

    .line 99
    iget-object v3, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mActiveData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mUnmodifiableActiveData:Ljava/util/List;

    .line 53
    iget v1, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mDataInstanceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mDataInstanceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 58
    :try_start_0
    iget v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mDataInstanceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/common/collectlite/CopyOnWriteArray;->mDataInstanceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
