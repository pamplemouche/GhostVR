.class Lcom/facebook/analytics2/logger/InProcessBatchLockState;
.super Lcom/facebook/analytics2/logger/BatchLockState;
.source "InProcessBatchLockState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/InProcessBatchLockState$InProcessBatchLock;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/analytics2/logger/BatchLockState<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lcom/facebook/analytics2/logger/BatchLockState;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/BatchLockState;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/analytics2/logger/BatchLockState;
    .locals 2

    const-class v0, Lcom/facebook/analytics2/logger/InProcessBatchLockState;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/facebook/analytics2/logger/InProcessBatchLockState;->sInstance:Lcom/facebook/analytics2/logger/BatchLockState;

    if-nez v1, :cond_0

    .line 13
    new-instance v1, Lcom/facebook/analytics2/logger/InProcessBatchLockState;

    invoke-direct {v1}, Lcom/facebook/analytics2/logger/InProcessBatchLockState;-><init>()V

    sput-object v1, Lcom/facebook/analytics2/logger/InProcessBatchLockState;->sInstance:Lcom/facebook/analytics2/logger/BatchLockState;

    .line 16
    :cond_0
    sget-object v1, Lcom/facebook/analytics2/logger/InProcessBatchLockState;->sInstance:Lcom/facebook/analytics2/logger/BatchLockState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected newBatchLock(Ljava/lang/Object;)Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/analytics2/logger/BatchLockState<",
            "Ljava/lang/Object;",
            ">.Batch",
            "Lock;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/facebook/analytics2/logger/InProcessBatchLockState$InProcessBatchLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/analytics2/logger/InProcessBatchLockState$InProcessBatchLock;-><init>(Lcom/facebook/analytics2/logger/InProcessBatchLockState;Ljava/lang/Object;Lcom/facebook/analytics2/logger/InProcessBatchLockState$1;)V

    return-object v0
.end method
