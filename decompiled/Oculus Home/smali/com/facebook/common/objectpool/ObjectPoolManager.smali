.class public Lcom/facebook/common/objectpool/ObjectPoolManager;
.super Ljava/lang/Object;
.source "ObjectPoolManager.java"


# instance fields
.field private final mClock:Lcom/facebook/common/time/MonotonicClock;

.field private final mObjectPools:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/facebook/common/objectpool/ObjectPool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/time/MonotonicClock;)V
    .locals 1
    .param p1, "clock"    # Lcom/facebook/common/time/MonotonicClock;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/objectpool/ObjectPoolManager;->mObjectPools:Ljava/util/HashMap;

    .line 17
    iput-object p1, p0, Lcom/facebook/common/objectpool/ObjectPoolManager;->mClock:Lcom/facebook/common/time/MonotonicClock;

    .line 18
    return-void
.end method


# virtual methods
.method addPool(Ljava/lang/Class;Lcom/facebook/common/objectpool/ObjectPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/facebook/common/objectpool/ObjectPool",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "pool":Lcom/facebook/common/objectpool/ObjectPool;, "Lcom/facebook/common/objectpool/ObjectPool<TT;>;"
    iget-object v0, p0, Lcom/facebook/common/objectpool/ObjectPoolManager;->mObjectPools:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public allocate(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 56
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/common/objectpool/ObjectPoolManager;->getPool(Ljava/lang/Class;)Lcom/facebook/common/objectpool/ObjectPool;

    move-result-object v0

    .line 57
    .local v0, "pool":Lcom/facebook/common/objectpool/ObjectPool;, "Lcom/facebook/common/objectpool/ObjectPool<TT;>;"
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/facebook/common/objectpool/ObjectPool;->allocate()Ljava/lang/Object;

    move-result-object v1

    .line 60
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createPoolBuilder(Ljava/lang/Class;)Lcom/facebook/common/objectpool/ObjectPoolBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/common/objectpool/ObjectPoolBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;

    iget-object v1, p0, Lcom/facebook/common/objectpool/ObjectPoolManager;->mClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/common/objectpool/ObjectPoolBuilder;-><init>(Lcom/facebook/common/objectpool/ObjectPoolManager;Ljava/lang/Class;Lcom/facebook/common/time/MonotonicClock;)V

    return-object v0
.end method

.method public getPool(Ljava/lang/Class;)Lcom/facebook/common/objectpool/ObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/common/objectpool/ObjectPool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/facebook/common/objectpool/ObjectPoolManager;->mObjectPools:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/objectpool/ObjectPool;

    return-object v0
.end method

.method public release(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/facebook/common/objectpool/ObjectPoolManager;->getPool(Ljava/lang/Class;)Lcom/facebook/common/objectpool/ObjectPool;

    move-result-object v0

    .line 73
    .local v0, "pool":Lcom/facebook/common/objectpool/ObjectPool;, "Lcom/facebook/common/objectpool/ObjectPool<TT;>;"
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p2}, Lcom/facebook/common/objectpool/ObjectPool;->release(Ljava/lang/Object;)V

    .line 76
    :cond_0
    return-void
.end method
