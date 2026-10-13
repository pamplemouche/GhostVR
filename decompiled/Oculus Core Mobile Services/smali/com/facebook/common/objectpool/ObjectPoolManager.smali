.class public Lcom/facebook/common/objectpool/ObjectPoolManager;
.super Ljava/lang/Object;
.source "ObjectPoolManager.java"


# instance fields
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
    iget-object v0, p0, Lcom/facebook/common/objectpool/ObjectPoolManager;->mObjectPools:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method
