.class public abstract Lcom/facebook/analytics2/logger/EventListenerForDebugOnly;
.super Ljava/lang/Object;
.source "EventListenerForDebugOnly.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/EventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEventReceived()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The debug event listener expects only onEventReceivedWithParamsCollectionMap to be called. For production, use EventListener instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract onEventReceivedWithParamsCollectionMap(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
.end method
