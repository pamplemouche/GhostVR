.class public Lcom/facebook/common/objectpool/ObjectPoolBuilder;
.super Ljava/lang/Object;
.source "ObjectPoolBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_COMPACTION_DELAY_MS:J = 0xea60L

.field public static final DEFAULT_INCREMENT_SIZE:I = 0x10

.field public static final DEFAULT_MAX_SIZE:I = 0x400

.field public static final DEFAULT_MIN_SIZE:I = 0x10


# instance fields
.field private mAllocator:Lcom/facebook/common/objectpool/ObjectPool$Allocator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/objectpool/ObjectPool$Allocator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mClock:Lcom/facebook/common/time/MonotonicClock;

.field private mCompactionDelayMs:J

.field private mIncrementSize:I

.field private final mManager:Lcom/facebook/common/objectpool/ObjectPoolManager;

.field private mMaxSize:I

.field private mMinSize:I


# direct methods
.method constructor <init>(Lcom/facebook/common/objectpool/ObjectPoolManager;Ljava/lang/Class;Lcom/facebook/common/time/MonotonicClock;)V
    .locals 2
    .param p1, "manager"    # Lcom/facebook/common/objectpool/ObjectPoolManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "clock"    # Lcom/facebook/common/time/MonotonicClock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/objectpool/ObjectPoolManager;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/facebook/common/time/MonotonicClock;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPoolBuilder;, "Lcom/facebook/common/objectpool/ObjectPoolBuilder<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/16 v1, 0x10

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mMinSize:I

    .line 16
    const/16 v0, 0x400

    iput v0, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mMaxSize:I

    .line 17
    iput v1, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mIncrementSize:I

    .line 18
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mCompactionDelayMs:J

    .line 36
    iput-object p1, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mManager:Lcom/facebook/common/objectpool/ObjectPoolManager;

    .line 37
    iput-object p2, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mClazz:Ljava/lang/Class;

    .line 38
    iput-object p3, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mClock:Lcom/facebook/common/time/MonotonicClock;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/facebook/common/time/MonotonicClock;)V
    .locals 1
    .param p2, "clock"    # Lcom/facebook/common/time/MonotonicClock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/facebook/common/time/MonotonicClock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPoolBuilder;, "Lcom/facebook/common/objectpool/ObjectPoolBuilder<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/common/objectpool/ObjectPoolBuilder;-><init>(Lcom/facebook/common/objectpool/ObjectPoolManager;Ljava/lang/Class;Lcom/facebook/common/time/MonotonicClock;)V

    .line 31
    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/common/objectpool/ObjectPool;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/objectpool/ObjectPool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPoolBuilder;, "Lcom/facebook/common/objectpool/ObjectPoolBuilder<TT;>;"
    iget-object v0, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mClock:Lcom/facebook/common/time/MonotonicClock;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must add a clock to the object pool builder"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v8, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mAllocator:Lcom/facebook/common/objectpool/ObjectPool$Allocator;

    .line 100
    .local v8, "alloc":Lcom/facebook/common/objectpool/ObjectPool$Allocator;, "Lcom/facebook/common/objectpool/ObjectPool$Allocator<TT;>;"
    if-nez v8, :cond_1

    .line 101
    new-instance v8, Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator;

    .end local v8    # "alloc":Lcom/facebook/common/objectpool/ObjectPool$Allocator;, "Lcom/facebook/common/objectpool/ObjectPool$Allocator<TT;>;"
    iget-object v0, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mClazz:Ljava/lang/Class;

    invoke-direct {v8, v0}, Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator;-><init>(Ljava/lang/Class;)V

    .line 103
    .restart local v8    # "alloc":Lcom/facebook/common/objectpool/ObjectPool$Allocator;, "Lcom/facebook/common/objectpool/ObjectPool$Allocator<TT;>;"
    :cond_1
    new-instance v1, Lcom/facebook/common/objectpool/ObjectPool;

    iget-object v2, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mClazz:Ljava/lang/Class;

    iget v3, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mMinSize:I

    iget v4, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mMaxSize:I

    iget v5, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mIncrementSize:I

    iget-wide v6, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mCompactionDelayMs:J

    iget-object v9, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-direct/range {v1 .. v9}, Lcom/facebook/common/objectpool/ObjectPool;-><init>(Ljava/lang/Class;IIIJLcom/facebook/common/objectpool/ObjectPool$Allocator;Lcom/facebook/common/time/MonotonicClock;)V

    .line 106
    .local v1, "pool":Lcom/facebook/common/objectpool/ObjectPool;, "Lcom/facebook/common/objectpool/ObjectPool<TT;>;"
    iget-object v0, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mManager:Lcom/facebook/common/objectpool/ObjectPoolManager;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mManager:Lcom/facebook/common/objectpool/ObjectPoolManager;

    iget-object v2, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mClazz:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/objectpool/ObjectPoolManager;->addPool(Ljava/lang/Class;Lcom/facebook/common/objectpool/ObjectPool;)V

    .line 109
    :cond_2
    return-object v1
.end method

.method public getAllocator()Lcom/facebook/common/objectpool/ObjectPool$Allocator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/objectpool/ObjectPool$Allocator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPoolBuilder;, "Lcom/facebook/common/objectpool/ObjectPoolBuilder<TT;>;"
    iget-object v0, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mAllocator:Lcom/facebook/common/objectpool/ObjectPool$Allocator;

    return-object v0
.end method

.method public getClock()Lcom/facebook/common/time/MonotonicClock;
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPoolBuilder;, "Lcom/facebook/common/objectpool/ObjectPoolBuilder<TT;>;"
    iget-object v0, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mClock:Lcom/facebook/common/time/MonotonicClock;

    return-object v0
.end method

.method public getCompactionDelay()J
    .locals 2

    .prologue
    .line 74
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPoolBuilder;, "Lcom/facebook/common/objectpool/ObjectPoolBuilder<TT;>;"
    iget-wide v0, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mCompactionDelayMs:J

    return-wide v0
.end method

.method public getIncrementSize()I
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPoolBuilder;, "Lcom/facebook/common/objectpool/ObjectPoolBuilder<TT;>;"
    iget v0, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mIncrementSize:I

    return v0
.end method

.method public getMaximumSize()I
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPoolBuilder;, "Lcom/facebook/common/objectpool/ObjectPoolBuilder<TT;>;"
    iget v0, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mMaxSize:I

    return v0
.end method

.method public getMinimumSize()I
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPoolBuilder;, "Lcom/facebook/common/objectpool/ObjectPoolBuilder<TT;>;"
    iget v0, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mMinSize:I

    return v0
.end method

.method public setAllocator(Lcom/facebook/common/objectpool/ObjectPool$Allocator;)Lcom/facebook/common/objectpool/ObjectPoolBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/objectpool/ObjectPool$Allocator",
            "<TT;>;)",
            "Lcom/facebook/common/objectpool/ObjectPoolBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPoolBuilder;, "Lcom/facebook/common/objectpool/ObjectPoolBuilder<TT;>;"
    .local p1, "alloc":Lcom/facebook/common/objectpool/ObjectPool$Allocator;, "Lcom/facebook/common/objectpool/ObjectPool$Allocator<TT;>;"
    iput-object p1, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mAllocator:Lcom/facebook/common/objectpool/ObjectPool$Allocator;

    .line 79
    return-object p0
.end method

.method public setClock(Lcom/facebook/common/time/MonotonicClock;)Lcom/facebook/common/objectpool/ObjectPoolBuilder;
    .locals 0
    .param p1, "clock"    # Lcom/facebook/common/time/MonotonicClock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/time/MonotonicClock;",
            ")",
            "Lcom/facebook/common/objectpool/ObjectPoolBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPoolBuilder;, "Lcom/facebook/common/objectpool/ObjectPoolBuilder<TT;>;"
    iput-object p1, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mClock:Lcom/facebook/common/time/MonotonicClock;

    .line 88
    return-object p0
.end method

.method public setCompactionDelay(J)Lcom/facebook/common/objectpool/ObjectPoolBuilder;
    .locals 1
    .param p1, "delayMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/facebook/common/objectpool/ObjectPoolBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPoolBuilder;, "Lcom/facebook/common/objectpool/ObjectPoolBuilder<TT;>;"
    iput-wide p1, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mCompactionDelayMs:J

    .line 70
    return-object p0
.end method

.method public setIncrementSize(I)Lcom/facebook/common/objectpool/ObjectPoolBuilder;
    .locals 0
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/objectpool/ObjectPoolBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPoolBuilder;, "Lcom/facebook/common/objectpool/ObjectPoolBuilder<TT;>;"
    iput p1, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mIncrementSize:I

    .line 61
    return-object p0
.end method

.method public setMaximumSize(I)Lcom/facebook/common/objectpool/ObjectPoolBuilder;
    .locals 0
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/objectpool/ObjectPoolBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPoolBuilder;, "Lcom/facebook/common/objectpool/ObjectPoolBuilder<TT;>;"
    iput p1, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mMaxSize:I

    .line 52
    return-object p0
.end method

.method public setMinimumSize(I)Lcom/facebook/common/objectpool/ObjectPoolBuilder;
    .locals 0
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/objectpool/ObjectPoolBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPoolBuilder;, "Lcom/facebook/common/objectpool/ObjectPoolBuilder<TT;>;"
    iput p1, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mMinSize:I

    .line 43
    return-object p0
.end method
