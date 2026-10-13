.class public Lcom/facebook/common/objectpool/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator;,
        Lcom/facebook/common/objectpool/ObjectPool$Allocator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllocator:Lcom/facebook/common/objectpool/ObjectPool$Allocator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/objectpool/ObjectPool$Allocator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mClock:Lcom/facebook/common/time/MonotonicClock;

.field private final mCompactionDelayMs:J

.field private final mIncrementSize:I

.field private mLastLowSupplyTimeMs:J

.field private final mMaxSize:I

.field private final mMinSize:I

.field private mPool:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/facebook/common/objectpool/ObjectPool;

    sput-object v0, Lcom/facebook/common/objectpool/ObjectPool;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;IIIJLcom/facebook/common/objectpool/ObjectPool$Allocator;Lcom/facebook/common/time/MonotonicClock;)V
    .locals 3
    .param p2, "minSize"    # I
    .param p3, "maxSize"    # I
    .param p4, "incrementSize"    # I
    .param p5, "compactionDelay"    # J
    .param p8, "clock"    # Lcom/facebook/common/time/MonotonicClock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;IIIJ",
            "Lcom/facebook/common/objectpool/ObjectPool$Allocator",
            "<TT;>;",
            "Lcom/facebook/common/time/MonotonicClock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPool;, "Lcom/facebook/common/objectpool/ObjectPool<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p7, "alloc":Lcom/facebook/common/objectpool/ObjectPool$Allocator;, "Lcom/facebook/common/objectpool/ObjectPool$Allocator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mClazz:Ljava/lang/Class;

    .line 116
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mMinSize:I

    .line 117
    iget v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mMinSize:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mMaxSize:I

    .line 118
    const/4 v0, 0x1

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mIncrementSize:I

    .line 119
    iput-wide p5, p0, Lcom/facebook/common/objectpool/ObjectPool;->mCompactionDelayMs:J

    .line 120
    iput-object p7, p0, Lcom/facebook/common/objectpool/ObjectPool;->mAllocator:Lcom/facebook/common/objectpool/ObjectPool$Allocator;

    .line 121
    iput-object p8, p0, Lcom/facebook/common/objectpool/ObjectPool;->mClock:Lcom/facebook/common/time/MonotonicClock;

    .line 122
    iget-object v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mClazz:Ljava/lang/Class;

    iget v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mPool:[Ljava/lang/Object;

    .line 123
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/facebook/common/objectpool/ObjectPool;->TAG:Ljava/lang/Class;

    return-object v0
.end method

.method private resizePool(I)V
    .locals 4
    .param p1, "newSize"    # I

    .prologue
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPool;, "Lcom/facebook/common/objectpool/ObjectPool<TT;>;"
    const/4 v3, 0x0

    .line 223
    iget-object v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mClazz:Ljava/lang/Class;

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 224
    .local v0, "newArr":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mPool:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/common/objectpool/ObjectPool;->mPool:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iput-object v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mPool:[Ljava/lang/Object;

    .line 226
    iget v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mSize:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mSize:I

    .line 227
    return-void
.end method


# virtual methods
.method public declared-synchronized allocate()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPool;, "Lcom/facebook/common/objectpool/ObjectPool<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mSize:I

    if-lez v1, :cond_0

    .line 134
    iget v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mSize:I

    .line 135
    iget-object v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mPool:[Ljava/lang/Object;

    iget v2, p0, Lcom/facebook/common/objectpool/ObjectPool;->mSize:I

    aget-object v0, v1, v2

    .line 136
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mPool:[Ljava/lang/Object;

    iget v2, p0, Lcom/facebook/common/objectpool/ObjectPool;->mSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mAllocator:Lcom/facebook/common/objectpool/ObjectPool$Allocator;

    invoke-interface {v1, v0}, Lcom/facebook/common/objectpool/ObjectPool$Allocator;->onAllocate(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-object v0

    .line 138
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mAllocator:Lcom/facebook/common/objectpool/ObjectPool$Allocator;

    invoke-interface {v1}, Lcom/facebook/common/objectpool/ObjectPool$Allocator;->create()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0    # "obj":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 133
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized checkUsage()V
    .locals 6

    .prologue
    .line 164
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPool;, "Lcom/facebook/common/objectpool/ObjectPool<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/facebook/common/objectpool/ObjectPool;->mClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 169
    .local v0, "now":J
    iget v2, p0, Lcom/facebook/common/objectpool/ObjectPool;->mSize:I

    iget v3, p0, Lcom/facebook/common/objectpool/ObjectPool;->mIncrementSize:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_0

    .line 170
    iput-wide v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mLastLowSupplyTimeMs:J

    .line 173
    :cond_0
    iget-wide v2, p0, Lcom/facebook/common/objectpool/ObjectPool;->mLastLowSupplyTimeMs:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/facebook/common/objectpool/ObjectPool;->mCompactionDelayMs:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 174
    sget-object v2, Lcom/facebook/common/objectpool/ObjectPool;->TAG:Ljava/lang/Class;

    const-string v3, "ObjectPool.checkUsage is compacting the pool."

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/facebook/common/objectpool/ObjectPool;->compactUsage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_1
    monitor-exit p0

    return-void

    .line 164
    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized compactUsage()V
    .locals 3

    .prologue
    .line 181
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPool;, "Lcom/facebook/common/objectpool/ObjectPool<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mPool:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Lcom/facebook/common/objectpool/ObjectPool;->mIncrementSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/facebook/common/objectpool/ObjectPool;->mMinSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 182
    .local v0, "newSize":I
    iget-object v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mPool:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 183
    invoke-direct {p0, v0}, Lcom/facebook/common/objectpool/ObjectPool;->resizePool(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    monitor-exit p0

    return-void

    .line 181
    .end local v0    # "newSize":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getCompactionDelayMs()J
    .locals 2

    .prologue
    .line 209
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPool;, "Lcom/facebook/common/objectpool/ObjectPool<TT;>;"
    iget-wide v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mCompactionDelayMs:J

    return-wide v0
.end method

.method public getIncrementSize()I
    .locals 1

    .prologue
    .line 205
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPool;, "Lcom/facebook/common/objectpool/ObjectPool<TT;>;"
    iget v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mIncrementSize:I

    return v0
.end method

.method public getMaximumSize()I
    .locals 1

    .prologue
    .line 201
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPool;, "Lcom/facebook/common/objectpool/ObjectPool<TT;>;"
    iget v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mMaxSize:I

    return v0
.end method

.method public getMinimumSize()I
    .locals 1

    .prologue
    .line 197
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPool;, "Lcom/facebook/common/objectpool/ObjectPool<TT;>;"
    iget v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mMinSize:I

    return v0
.end method

.method public getPoolSize()I
    .locals 1

    .prologue
    .line 218
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPool;, "Lcom/facebook/common/objectpool/ObjectPool<TT;>;"
    iget-object v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mPool:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public getPooledObjectCount()I
    .locals 1

    .prologue
    .line 193
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPool;, "Lcom/facebook/common/objectpool/ObjectPool<TT;>;"
    iget v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mSize:I

    return v0
.end method

.method public declared-synchronized release(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/facebook/common/objectpool/ObjectPool;, "Lcom/facebook/common/objectpool/ObjectPool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/common/objectpool/ObjectPool;->checkUsage()V

    .line 153
    iget-object v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mAllocator:Lcom/facebook/common/objectpool/ObjectPool$Allocator;

    invoke-interface {v0, p1}, Lcom/facebook/common/objectpool/ObjectPool$Allocator;->onRelease(Ljava/lang/Object;)V

    .line 154
    iget v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mSize:I

    iget v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mMaxSize:I

    if-ge v0, v1, :cond_1

    .line 155
    iget v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mPool:[Ljava/lang/Object;

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 156
    iget v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mMaxSize:I

    iget-object v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mPool:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Lcom/facebook/common/objectpool/ObjectPool;->mIncrementSize:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/common/objectpool/ObjectPool;->resizePool(I)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/objectpool/ObjectPool;->mPool:[Ljava/lang/Object;

    iget v1, p0, Lcom/facebook/common/objectpool/ObjectPool;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/common/objectpool/ObjectPool;->mSize:I

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_1
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
