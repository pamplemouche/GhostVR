.class public Lcom/oculus/horizon/events/view/EventViewHolderProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "EventViewHolderProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/horizon/events/view/EventViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/inject/AbstractAssistedProvider;-><init>(Lcom/facebook/inject/InjectorLike;)V

    .line 17
    return-void
.end method


# virtual methods
.method public get(Landroid/view/ViewGroup;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;Lcom/oculus/horizon/events/view/EventViewHolder$Type;)Lcom/oculus/horizon/events/view/EventViewHolder;
    .locals 1

    .prologue
    .line 20
    const-string v0, "getMethod_com.oculus.horizon.events.view.EventViewHolder"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 22
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/events/view/EventViewHolder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oculus/horizon/events/view/EventViewHolder;-><init>(Lcom/facebook/inject/InjectorLike;Landroid/view/ViewGroup;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;Lcom/oculus/horizon/events/view/EventViewHolder$Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method
