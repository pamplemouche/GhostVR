.class public Lcom/oculus/horizon/events/adapters/BaseEventsAdapterAutoProvider;
.super Lcom/facebook/inject/AbstractComponentProvider;
.source "BaseEventsAdapterAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractComponentProvider",
        "<",
        "Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/AbstractComponentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 19
    instance-of v0, p1, Lcom/oculus/horizon/events/adapters/BaseEventsAdapterAutoProvider;

    return v0
.end method

.method public inject(Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)V

    .line 15
    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapterAutoProvider;->inject(Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;)V

    return-void
.end method
