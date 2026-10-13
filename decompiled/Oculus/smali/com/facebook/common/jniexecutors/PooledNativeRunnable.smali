.class public Lcom/facebook/common/jniexecutors/PooledNativeRunnable;
.super Lcom/facebook/common/jniexecutors/NativeRunnable;
.source "PooledNativeRunnable.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# static fields
.field private static final sPool:Lcom/facebook/common/objectpool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/objectpool/ObjectPool",
            "<",
            "Lcom/facebook/common/jniexecutors/PooledNativeRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;

    const-class v1, Lcom/facebook/common/jniexecutors/PooledNativeRunnable;

    .line 15
    invoke-static {}, Lcom/facebook/common/time/AwakeTimeSinceBootClock;->get()Lcom/facebook/common/time/AwakeTimeSinceBootClock;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/objectpool/ObjectPoolBuilder;-><init>(Ljava/lang/Class;Lcom/facebook/common/time/MonotonicClock;)V

    new-instance v1, Lcom/facebook/common/jniexecutors/PooledNativeRunnable$1;

    const-class v2, Lcom/facebook/common/jniexecutors/PooledNativeRunnable;

    invoke-direct {v1, v2}, Lcom/facebook/common/jniexecutors/PooledNativeRunnable$1;-><init>(Ljava/lang/Class;)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->setAllocator(Lcom/facebook/common/objectpool/ObjectPool$Allocator;)Lcom/facebook/common/objectpool/ObjectPoolBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->build()Lcom/facebook/common/objectpool/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/jniexecutors/PooledNativeRunnable;->sPool:Lcom/facebook/common/objectpool/ObjectPool;

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/common/jniexecutors/NativeRunnable;-><init>(Lcom/facebook/jni/HybridData;)V

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/common/jniexecutors/PooledNativeRunnable$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/facebook/common/jniexecutors/PooledNativeRunnable;-><init>()V

    return-void
.end method

.method public static allocate(Lcom/facebook/jni/HybridData;)Lcom/facebook/common/jniexecutors/PooledNativeRunnable;
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 32
    sget-object v0, Lcom/facebook/common/jniexecutors/PooledNativeRunnable;->sPool:Lcom/facebook/common/objectpool/ObjectPool;

    invoke-virtual {v0}, Lcom/facebook/common/objectpool/ObjectPool;->allocate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/jniexecutors/PooledNativeRunnable;

    .line 33
    iput-object p0, v0, Lcom/facebook/common/jniexecutors/PooledNativeRunnable;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 34
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/facebook/common/jniexecutors/NativeRunnable;->run()V

    .line 40
    sget-object v0, Lcom/facebook/common/jniexecutors/PooledNativeRunnable;->sPool:Lcom/facebook/common/objectpool/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/facebook/common/objectpool/ObjectPool;->release(Ljava/lang/Object;)V

    .line 41
    return-void
.end method
