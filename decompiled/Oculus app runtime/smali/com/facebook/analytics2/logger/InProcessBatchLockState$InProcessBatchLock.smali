.class public Lcom/facebook/analytics2/logger/InProcessBatchLockState$InProcessBatchLock;
.super Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;
.source "InProcessBatchLockState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/InProcessBatchLockState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InProcessBatchLock"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/analytics2/logger/BatchLockState<",
        "Ljava/lang/Object;",
        ">.Batch",
        "Lock;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InProcessBatchLock"


# instance fields
.field private mIsDeleted:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/analytics2/logger/InProcessBatchLockState;


# direct methods
.method private constructor <init>(Lcom/facebook/analytics2/logger/InProcessBatchLockState;Ljava/lang/Object;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/facebook/analytics2/logger/InProcessBatchLockState$InProcessBatchLock;->this$0:Lcom/facebook/analytics2/logger/InProcessBatchLockState;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/facebook/analytics2/logger/BatchLockState$BatchLock;-><init>(Lcom/facebook/analytics2/logger/BatchLockState;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/facebook/analytics2/logger/InProcessBatchLockState$InProcessBatchLock;->mIsDeleted:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/analytics2/logger/InProcessBatchLockState;Ljava/lang/Object;Lcom/facebook/analytics2/logger/InProcessBatchLockState$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/facebook/analytics2/logger/InProcessBatchLockState$InProcessBatchLock;-><init>(Lcom/facebook/analytics2/logger/InProcessBatchLockState;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public doLock()V
    .locals 0

    return-void
.end method

.method protected declared-synchronized doMarkDeleted()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 54
    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/InProcessBatchLockState$InProcessBatchLock;->mIsDeleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doTryLock()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public doUnlock()V
    .locals 0

    return-void
.end method

.method protected getLockName()Ljava/lang/String;
    .locals 1

    const-string v0, "InProcessBatchLock"

    return-object v0
.end method

.method protected declared-synchronized isDeleted()Z
    .locals 1

    monitor-enter p0

    .line 59
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/InProcessBatchLockState$InProcessBatchLock;->mIsDeleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
