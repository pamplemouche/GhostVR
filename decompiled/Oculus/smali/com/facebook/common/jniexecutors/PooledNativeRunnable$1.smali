.class final Lcom/facebook/common/jniexecutors/PooledNativeRunnable$1;
.super Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator;
.source "PooledNativeRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/jniexecutors/PooledNativeRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator",
        "<",
        "Lcom/facebook/common/jniexecutors/PooledNativeRunnable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/facebook/common/jniexecutors/PooledNativeRunnable;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/facebook/common/jniexecutors/PooledNativeRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/common/jniexecutors/PooledNativeRunnable;-><init>(Lcom/facebook/common/jniexecutors/PooledNativeRunnable$1;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/facebook/common/jniexecutors/PooledNativeRunnable$1;->create()Lcom/facebook/common/jniexecutors/PooledNativeRunnable;

    move-result-object v0

    return-object v0
.end method

.method public onRelease(Lcom/facebook/common/jniexecutors/PooledNativeRunnable;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/facebook/common/jniexecutors/PooledNativeRunnable;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 26
    return-void
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/facebook/common/jniexecutors/PooledNativeRunnable;

    invoke-virtual {p0, p1}, Lcom/facebook/common/jniexecutors/PooledNativeRunnable$1;->onRelease(Lcom/facebook/common/jniexecutors/PooledNativeRunnable;)V

    return-void
.end method
