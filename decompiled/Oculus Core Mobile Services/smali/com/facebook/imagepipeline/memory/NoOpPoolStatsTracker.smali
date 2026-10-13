.class public Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;
.super Ljava/lang/Object;
.source "NoOpPoolStatsTracker.java"

# interfaces
.implements Lcom/facebook/imagepipeline/memory/PoolStatsTracker;


# static fields
.field private static sInstance:Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;->sInstance:Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;
    .locals 2

    .prologue
    .line 20
    const-class v1, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;->sInstance:Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;->sInstance:Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    .line 23
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;->sInstance:Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onAlloc(I)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onFree(I)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onHardCapReached()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public onSoftCapReached()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onValueRelease(I)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onValueReuse(I)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public setBasePool(Lcom/facebook/imagepipeline/memory/BasePool;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
