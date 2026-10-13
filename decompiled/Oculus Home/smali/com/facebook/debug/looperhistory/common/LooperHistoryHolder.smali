.class public Lcom/facebook/debug/looperhistory/common/LooperHistoryHolder;
.super Ljava/lang/Object;
.source "LooperHistoryHolder.java"


# static fields
.field private static final sMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/Looper;",
            "Lcom/facebook/debug/looperhistory/common/ILooperHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/debug/looperhistory/common/LooperHistoryHolder;->sMaps:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized dumpToLogCat(Landroid/os/Looper;)V
    .locals 3
    .param p0, "looper"    # Landroid/os/Looper;

    .prologue
    .line 15
    const-class v2, Lcom/facebook/debug/looperhistory/common/LooperHistoryHolder;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/facebook/debug/looperhistory/common/LooperHistoryHolder;->sMaps:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/looperhistory/common/ILooperHistory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .local v0, "history":Lcom/facebook/debug/looperhistory/common/ILooperHistory;
    if-nez v0, :cond_0

    .line 20
    :goto_0
    monitor-exit v2

    return-void

    .line 19
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/facebook/debug/looperhistory/common/ILooperHistory;->dumpToLogCat()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 15
    .end local v0    # "history":Lcom/facebook/debug/looperhistory/common/ILooperHistory;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized put(Landroid/os/Looper;Lcom/facebook/debug/looperhistory/common/ILooperHistory;)V
    .locals 2
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "history"    # Lcom/facebook/debug/looperhistory/common/ILooperHistory;

    .prologue
    .line 23
    const-class v1, Lcom/facebook/debug/looperhistory/common/LooperHistoryHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/debug/looperhistory/common/LooperHistoryHolder;->sMaps:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v1

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
