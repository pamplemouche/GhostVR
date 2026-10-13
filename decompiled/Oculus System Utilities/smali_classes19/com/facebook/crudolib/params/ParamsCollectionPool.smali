.class public Lcom/facebook/crudolib/params/ParamsCollectionPool;
.super Ljava/lang/Object;
.source "ParamsCollectionPool.java"


# static fields
.field private static final DEFAULT_ARRAY_POOL_SIZE:I = 0x2

.field private static final DEFAULT_MAP_POOL_SIZE:I = 0x8

.field private static final DEFAULT_MAX_PARAMS_SIZE_IN_POOL:I = 0x20

.field private static final DEFAULT_MIN_PARAMS_SIZE_IN_POOL:I = 0x10


# instance fields
.field private final mMaxParamsSizeInPool:I

.field private final mMinParamsSizeInPool:I

.field private final mParamsArrayPool:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool",
            "<",
            "Lcom/facebook/crudolib/params/ParamsCollectionArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mParamsMapPool:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool",
            "<",
            "Lcom/facebook/crudolib/params/ParamsCollectionMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "mapPoolSize"    # I
    .param p2, "arrayPoolSize"    # I
    .param p3, "minParamsSizeInPool"    # I
    .param p4, "maxParamsSizeInPool"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v0, p1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionPool;->mParamsMapPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    .line 71
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v0, p2}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionPool;->mParamsArrayPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    .line 72
    iput p3, p0, Lcom/facebook/crudolib/params/ParamsCollectionPool;->mMinParamsSizeInPool:I

    .line 73
    iput p4, p0, Lcom/facebook/crudolib/params/ParamsCollectionPool;->mMaxParamsSizeInPool:I

    .line 74
    return-void
.end method

.method public static newDefaultInstance()Lcom/facebook/crudolib/params/ParamsCollectionPool;
    .locals 5

    .prologue
    .line 49
    new-instance v0, Lcom/facebook/crudolib/params/ParamsCollectionPool;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/16 v3, 0x10

    const/16 v4, 0x20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/crudolib/params/ParamsCollectionPool;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public acquireArray()Lcom/facebook/crudolib/params/ParamsCollectionArray;
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lcom/facebook/crudolib/params/ParamsCollectionPool;->mParamsArrayPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/crudolib/params/ParamsCollectionArray;

    .line 93
    .local v0, "params":Lcom/facebook/crudolib/params/ParamsCollectionArray;
    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/facebook/crudolib/params/ParamsCollectionArray;

    .end local v0    # "params":Lcom/facebook/crudolib/params/ParamsCollectionArray;
    iget v1, p0, Lcom/facebook/crudolib/params/ParamsCollectionPool;->mMinParamsSizeInPool:I

    invoke-direct {v0, v1}, Lcom/facebook/crudolib/params/ParamsCollectionArray;-><init>(I)V

    .line 96
    .restart local v0    # "params":Lcom/facebook/crudolib/params/ParamsCollectionArray;
    :cond_0
    invoke-virtual {v0, p0}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->acquire(Lcom/facebook/crudolib/params/ParamsCollectionPool;)V

    .line 97
    return-object v0
.end method

.method public acquireMap()Lcom/facebook/crudolib/params/ParamsCollectionMap;
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/facebook/crudolib/params/ParamsCollectionPool;->mParamsMapPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .line 81
    .local v0, "params":Lcom/facebook/crudolib/params/ParamsCollectionMap;
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .end local v0    # "params":Lcom/facebook/crudolib/params/ParamsCollectionMap;
    iget v1, p0, Lcom/facebook/crudolib/params/ParamsCollectionPool;->mMinParamsSizeInPool:I

    invoke-direct {v0, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;-><init>(I)V

    .line 84
    .restart local v0    # "params":Lcom/facebook/crudolib/params/ParamsCollectionMap;
    :cond_0
    invoke-virtual {v0, p0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->acquire(Lcom/facebook/crudolib/params/ParamsCollectionPool;)V

    .line 85
    return-object v0
.end method

.method getMaxParamsSizeInPool()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionPool;->mMaxParamsSizeInPool:I

    return v0
.end method

.method release(Lcom/facebook/crudolib/params/ParamsCollectionArray;)V
    .locals 1
    .param p1, "params"    # Lcom/facebook/crudolib/params/ParamsCollectionArray;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionPool;->mParamsArrayPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method release(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 1
    .param p1, "params"    # Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionPool;->mParamsMapPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method
