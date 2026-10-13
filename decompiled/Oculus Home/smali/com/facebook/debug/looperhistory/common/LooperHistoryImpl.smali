.class public Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;
.super Ljava/lang/Object;
.source "LooperHistoryImpl.java"

# interfaces
.implements Lcom/facebook/debug/looperhistory/common/ILooperHistory;


# static fields
.field private static final TAG:Ljava/lang/String; = "LooperHistory"


# instance fields
.field private final mDuration:J

.field private final mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/debug/looperhistory/common/LooperItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMessage:Lcom/facebook/debug/looperhistory/common/LooperItem;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mThreshold:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "duration"    # J
    .param p3, "threshold"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mHistory:Ljava/util/LinkedList;

    .line 28
    iput-wide p1, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mDuration:J

    .line 29
    iput-wide p3, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mThreshold:J

    .line 30
    return-void
.end method

.method private declared-synchronized removeOldMessage()V
    .locals 8

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mDuration:J

    sub-long v2, v4, v6

    .line 60
    .local v2, "target":J
    :cond_2
    iget-object v1, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/looperhistory/common/LooperItem;

    .line 61
    .local v0, "firstItem":Lcom/facebook/debug/looperhistory/common/LooperItem;
    invoke-virtual {v0, v2, v3}, Lcom/facebook/debug/looperhistory/common/LooperItem;->isAlive(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 55
    .end local v0    # "firstItem":Lcom/facebook/debug/looperhistory/common/LooperItem;
    .end local v2    # "target":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized dumpToLogCat()V
    .locals 6

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mLastMessage:Lcom/facebook/debug/looperhistory/common/LooperItem;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    .line 72
    :cond_1
    :try_start_1
    const-string v1, "LooperHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== Messages execute more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mThreshold:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms during the past "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mDuration:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms ==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mLastMessage:Lcom/facebook/debug/looperhistory/common/LooperItem;

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mLastMessage:Lcom/facebook/debug/looperhistory/common/LooperItem;

    const-string v2, "last"

    invoke-virtual {v1, v2}, Lcom/facebook/debug/looperhistory/common/LooperItem;->dumpToLogCat(Ljava/lang/String;)V

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 83
    iget-object v1, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/debug/looperhistory/common/LooperItem;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/debug/looperhistory/common/LooperItem;->dumpToLogCat(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 69
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized handleMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mLastMessage:Lcom/facebook/debug/looperhistory/common/LooperItem;

    if-eqz v0, :cond_0

    .line 38
    :cond_0
    new-instance v0, Lcom/facebook/debug/looperhistory/common/LooperItem;

    invoke-direct {v0, p1}, Lcom/facebook/debug/looperhistory/common/LooperItem;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mLastMessage:Lcom/facebook/debug/looperhistory/common/LooperItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 39
    :cond_2
    :try_start_1
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mLastMessage:Lcom/facebook/debug/looperhistory/common/LooperItem;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mLastMessage:Lcom/facebook/debug/looperhistory/common/LooperItem;

    invoke-virtual {v0}, Lcom/facebook/debug/looperhistory/common/LooperItem;->finish()V

    .line 45
    iget-object v0, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mLastMessage:Lcom/facebook/debug/looperhistory/common/LooperItem;

    iget-wide v2, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mThreshold:J

    invoke-virtual {v0, v2, v3}, Lcom/facebook/debug/looperhistory/common/LooperItem;->exceedsThreshold(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mHistory:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mLastMessage:Lcom/facebook/debug/looperhistory/common/LooperItem;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 48
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->mLastMessage:Lcom/facebook/debug/looperhistory/common/LooperItem;

    .line 50
    invoke-direct {p0}, Lcom/facebook/debug/looperhistory/common/LooperHistoryImpl;->removeOldMessage()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
