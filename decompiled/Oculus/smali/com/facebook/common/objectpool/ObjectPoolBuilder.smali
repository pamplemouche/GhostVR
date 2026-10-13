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
    .param p1    # Lcom/facebook/common/objectpool/ObjectPoolManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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
    iget-object v0, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mClock:Lcom/facebook/common/time/MonotonicClock;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must add a clock to the object pool builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v8, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mAllocator:Lcom/facebook/common/objectpool/ObjectPool$Allocator;

    .line 100
    if-nez v8, :cond_1

    .line 101
    new-instance v8, Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator;

    iget-object v0, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mClazz:Ljava/lang/Class;

    invoke-direct {v8, v0}, Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator;-><init>(Ljava/lang/Class;)V

    .line 103
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
    iput-object p1, p0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->mAllocator:Lcom/facebook/common/objectpool/ObjectPool$Allocator;

    .line 79
    return-object p0
.end method
