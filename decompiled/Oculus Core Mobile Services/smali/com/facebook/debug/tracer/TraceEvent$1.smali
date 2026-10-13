.class final Lcom/facebook/debug/tracer/TraceEvent$1;
.super Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator;
.source "TraceEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/debug/tracer/TraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator",
        "<",
        "Lcom/facebook/debug/tracer/TraceEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/common/objectpool/ObjectPool$BasicAllocator;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/facebook/debug/tracer/TraceEvent;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/debug/tracer/TraceEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/debug/tracer/TraceEvent;-><init>(Lcom/facebook/debug/tracer/TraceEvent$1;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/facebook/debug/tracer/TraceEvent$1;->create()Lcom/facebook/debug/tracer/TraceEvent;

    move-result-object v0

    return-object v0
.end method

.method public onRelease(Lcom/facebook/debug/tracer/TraceEvent;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {p1, v0}, Lcom/facebook/debug/tracer/TraceEvent;->access$102(Lcom/facebook/debug/tracer/TraceEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    invoke-static {p1, v0}, Lcom/facebook/debug/tracer/TraceEvent;->access$202(Lcom/facebook/debug/tracer/TraceEvent;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lcom/facebook/debug/tracer/TraceEvent;

    invoke-virtual {p0, p1}, Lcom/facebook/debug/tracer/TraceEvent$1;->onRelease(Lcom/facebook/debug/tracer/TraceEvent;)V

    return-void
.end method
