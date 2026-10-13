.class final Lcom/facebook/debug/tracer/ThreadTrace$2;
.super Ljava/lang/Object;
.source "ThreadTrace.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/debug/tracer/ThreadTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/debug/tracer/TraceEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/facebook/debug/tracer/TraceEvent;Lcom/facebook/debug/tracer/TraceEvent;)I
    .locals 8
    .param p1, "e1"    # Lcom/facebook/debug/tracer/TraceEvent;
    .param p2, "e2"    # Lcom/facebook/debug/tracer/TraceEvent;

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/facebook/debug/tracer/TraceEvent;->getEventTimeNanos()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/facebook/debug/tracer/TraceEvent;->getStartTimeNanos()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 53
    .local v0, "d1":J
    invoke-virtual {p2}, Lcom/facebook/debug/tracer/TraceEvent;->getEventTimeNanos()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/facebook/debug/tracer/TraceEvent;->getStartTimeNanos()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 54
    .local v2, "d2":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 55
    const/4 v4, -0x1

    .line 59
    :goto_0
    return v4

    .line 56
    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 57
    const/4 v4, 0x1

    goto :goto_0

    .line 59
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 49
    check-cast p1, Lcom/facebook/debug/tracer/TraceEvent;

    check-cast p2, Lcom/facebook/debug/tracer/TraceEvent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/debug/tracer/ThreadTrace$2;->compare(Lcom/facebook/debug/tracer/TraceEvent;Lcom/facebook/debug/tracer/TraceEvent;)I

    move-result v0

    return v0
.end method
