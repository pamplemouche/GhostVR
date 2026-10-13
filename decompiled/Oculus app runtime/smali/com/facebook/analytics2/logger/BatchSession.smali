.class Lcom/facebook/analytics2/logger/BatchSession;
.super Ljava/lang/Object;
.source "BatchSession.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;

.field private mSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mSessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/PigeonIdentity;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/facebook/analytics2/logger/BatchSession;->mSessionId:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchSession;->mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;

    .line 22
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchSession;->mSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public declared-synchronized getNextSequenceId()I
    .locals 1

    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchSession;->mSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPigeonIdentity()Lcom/facebook/analytics2/logger/PigeonIdentity;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchSession;->mPigeonIdentity:Lcom/facebook/analytics2/logger/PigeonIdentity;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchSession;->mSessionId:Ljava/lang/String;

    return-object v0
.end method
