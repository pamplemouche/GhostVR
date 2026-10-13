.class public Lcom/facebook/analytics2/logger/CompositeEventListener;
.super Ljava/lang/Object;
.source "CompositeEventListener.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/EventListener;
.implements Lcom/facebook/analytics2/logger/EventListenerForDebugOnly;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mEventListeners:Lcom/facebook/common/collectlite/CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/collectlite/CopyOnWriteArray<",
            "Lcom/facebook/analytics2/logger/EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/facebook/common/collectlite/CopyOnWriteArray;

    invoke-direct {v0}, Lcom/facebook/common/collectlite/CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/CompositeEventListener;->mEventListeners:Lcom/facebook/common/collectlite/CopyOnWriteArray;

    return-void
.end method


# virtual methods
.method public add(Lcom/facebook/analytics2/logger/EventListener;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/facebook/analytics2/logger/CompositeEventListener;->mEventListeners:Lcom/facebook/common/collectlite/CopyOnWriteArray;

    invoke-virtual {v0, p1}, Lcom/facebook/common/collectlite/CopyOnWriteArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventReceived()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/CompositeEventListener;->onEventReceivedWithParamsCollectionMap(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    return-void
.end method

.method public onEventReceivedWithParamsCollectionMap(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/facebook/analytics2/logger/CompositeEventListener;->mEventListeners:Lcom/facebook/common/collectlite/CopyOnWriteArray;

    invoke-virtual {v0}, Lcom/facebook/common/collectlite/CopyOnWriteArray;->start()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/analytics2/logger/EventListener;

    .line 42
    instance-of v4, v3, Lcom/facebook/analytics2/logger/EventListenerForDebugOnly;

    if-eqz v4, :cond_0

    .line 43
    check-cast v3, Lcom/facebook/analytics2/logger/EventListenerForDebugOnly;

    invoke-interface {v3, p1}, Lcom/facebook/analytics2/logger/EventListenerForDebugOnly;->onEventReceivedWithParamsCollectionMap(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    goto :goto_1

    .line 45
    :cond_0
    invoke-interface {v3}, Lcom/facebook/analytics2/logger/EventListener;->onEventReceived()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/facebook/analytics2/logger/CompositeEventListener;->mEventListeners:Lcom/facebook/common/collectlite/CopyOnWriteArray;

    invoke-virtual {p1}, Lcom/facebook/common/collectlite/CopyOnWriteArray;->stop()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/facebook/analytics2/logger/CompositeEventListener;->mEventListeners:Lcom/facebook/common/collectlite/CopyOnWriteArray;

    invoke-virtual {v0}, Lcom/facebook/common/collectlite/CopyOnWriteArray;->stop()V

    throw p1
.end method

.method public remove(Lcom/facebook/analytics2/logger/EventListener;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/facebook/analytics2/logger/CompositeEventListener;->mEventListeners:Lcom/facebook/common/collectlite/CopyOnWriteArray;

    invoke-virtual {v0, p1}, Lcom/facebook/common/collectlite/CopyOnWriteArray;->remove(Ljava/lang/Object;)Z

    return-void
.end method
