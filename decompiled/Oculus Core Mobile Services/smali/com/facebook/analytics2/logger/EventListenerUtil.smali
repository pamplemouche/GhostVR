.class public Lcom/facebook/analytics2/logger/EventListenerUtil;
.super Ljava/lang/Object;
.source "EventListenerUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onEventReceived(Lcom/facebook/analytics2/logger/EventListener;Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 1

    .prologue
    .line 10
    instance-of v0, p0, Lcom/facebook/analytics2/logger/EventListenerForDebugOnly;

    if-eqz v0, :cond_0

    .line 11
    check-cast p0, Lcom/facebook/analytics2/logger/EventListenerForDebugOnly;

    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/EventListenerForDebugOnly;->onEventReceivedWithParamsCollectionMap(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    .line 15
    :goto_0
    return-void

    .line 13
    :cond_0
    invoke-interface {p0}, Lcom/facebook/analytics2/logger/EventListener;->onEventReceived()V

    goto :goto_0
.end method
