.class public Lcom/facebook/debug/tracer/AsyncTracer;
.super Ljava/lang/Object;
.source "AsyncTracer.java"


# instance fields
.field private final mComment:Ljava/lang/String;

.field private final mId:I

.field private final mStartNanos:J

.field private final mThreadTrace:Lcom/facebook/debug/tracer/ThreadTrace;

.field private mTotalNanos:J


# direct methods
.method private constructor <init>(Lcom/facebook/debug/tracer/ThreadTrace;IJLjava/lang/String;)V
    .locals 3
    .param p1, "threadTrace"    # Lcom/facebook/debug/tracer/ThreadTrace;
    .param p2, "id"    # I
    .param p3, "startNanos"    # J
    .param p5, "comment"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mTotalNanos:J

    .line 56
    iput-object p1, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mThreadTrace:Lcom/facebook/debug/tracer/ThreadTrace;

    .line 57
    iput p2, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mId:I

    .line 58
    iput-wide p3, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mStartNanos:J

    .line 59
    iput-object p5, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mComment:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static startAsyncTracer(Ljava/lang/String;)Lcom/facebook/debug/tracer/AsyncTracer;
    .locals 1
    .param p0, "comment"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/debug/tracer/AsyncTracer;->startAsyncTracerInternal(Ljava/lang/String;[Ljava/lang/Object;)Lcom/facebook/debug/tracer/AsyncTracer;

    move-result-object v0

    return-object v0
.end method

.method public static varargs startAsyncTracer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/facebook/debug/tracer/AsyncTracer;
    .locals 1
    .param p0, "comment"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/facebook/debug/tracer/AsyncTracer;->startAsyncTracerInternal(Ljava/lang/String;[Ljava/lang/Object;)Lcom/facebook/debug/tracer/AsyncTracer;

    move-result-object v0

    return-object v0
.end method

.method public static startAsyncTracerInternal(Ljava/lang/String;[Ljava/lang/Object;)Lcom/facebook/debug/tracer/AsyncTracer;
    .locals 8
    .param p0, "comment"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 44
    sget-object v4, Lcom/facebook/debug/tracer/ThreadTrace;->sThreadLocalState:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/debug/tracer/ThreadTrace;

    .line 45
    .local v2, "threadTrace":Lcom/facebook/debug/tracer/ThreadTrace;
    const/4 v4, 0x1

    invoke-virtual {v2, p0, p1, v4}, Lcom/facebook/debug/tracer/ThreadTrace;->startTracer(Ljava/lang/String;[Ljava/lang/Object;Z)I

    move-result v3

    .line 46
    .local v3, "id":I
    invoke-virtual {v2, v3}, Lcom/facebook/debug/tracer/ThreadTrace;->getEvent(I)Lcom/facebook/debug/tracer/TraceEvent;

    move-result-object v0

    .line 47
    .local v0, "event":Lcom/facebook/debug/tracer/TraceEvent;
    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getFormattedComment()Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, "formattedComment":Ljava/lang/String;
    new-instance v1, Lcom/facebook/debug/tracer/AsyncTracer;

    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->nanoTime()J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/facebook/debug/tracer/AsyncTracer;-><init>(Lcom/facebook/debug/tracer/ThreadTrace;IJLjava/lang/String;)V

    .line 50
    .local v1, "trace":Lcom/facebook/debug/tracer/AsyncTracer;
    const-wide/16 v4, 0x20

    iget v7, v1, Lcom/facebook/debug/tracer/AsyncTracer;->mId:I

    invoke-static {v4, v5, v6, v7}, Lcom/facebook/systrace/Systrace;->beginAsyncSection(JLjava/lang/String;I)V

    .line 52
    return-object v1
.end method

.method private stopAsyncTrace(JZ)J
    .locals 7
    .param p1, "silenceThresholdParam"    # J
    .param p3, "useThreshold"    # Z

    .prologue
    .line 128
    const-wide/16 v2, 0x20

    iget-object v4, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mComment:Ljava/lang/String;

    iget v5, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mId:I

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/systrace/Systrace;->endAsyncSection(JLjava/lang/String;I)V

    .line 129
    iget-object v2, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mThreadTrace:Lcom/facebook/debug/tracer/ThreadTrace;

    iget v3, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mId:I

    invoke-virtual {v2, v3, p1, p2, p3}, Lcom/facebook/debug/tracer/ThreadTrace;->stopTracer(IJZ)J

    move-result-wide v0

    .line 130
    .local v0, "elapsedNanos":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 131
    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mStartNanos:J

    sub-long v0, v2, v4

    .line 133
    :cond_0
    iput-wide v0, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mTotalNanos:J

    .line 134
    return-wide v0
.end method


# virtual methods
.method public adjustStartTime(J)V
    .locals 3
    .param p1, "timeOffsetMs"    # J

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mThreadTrace:Lcom/facebook/debug/tracer/ThreadTrace;

    iget v1, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/debug/tracer/ThreadTrace;->adjustStartTime(IJ)V

    .line 69
    return-void
.end method

.method public getElapsedTimeMs()J
    .locals 6

    .prologue
    const-wide/32 v4, 0xf4240

    .line 91
    iget-wide v0, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mTotalNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mStartNanos:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    .line 95
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mTotalNanos:J

    iget-wide v2, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mStartNanos:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTraceEvents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/debug/tracer/TraceEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mThreadTrace:Lcom/facebook/debug/tracer/ThreadTrace;

    iget v1, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mId:I

    invoke-virtual {v0, v1}, Lcom/facebook/debug/tracer/ThreadTrace;->getEvents(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public logTrace(ILjava/lang/String;)V
    .locals 2
    .param p1, "logLevel"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mThreadTrace:Lcom/facebook/debug/tracer/ThreadTrace;

    iget v1, p0, Lcom/facebook/debug/tracer/AsyncTracer;->mId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/debug/tracer/ThreadTrace;->logTrace(IILjava/lang/String;)V

    .line 169
    return-void
.end method

.method public logTrace(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "tag":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x3

    invoke-static {p1}, Lcom/facebook/debug/log/LogPrefixer;->renderClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/debug/tracer/AsyncTracer;->logTrace(ILjava/lang/String;)V

    .line 146
    return-void
.end method

.method public logTrace(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/facebook/debug/tracer/AsyncTracer;->logTrace(ILjava/lang/String;)V

    .line 157
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/debug/tracer/AsyncTracer;->stopAsyncTrace(JZ)J

    .line 77
    return-void
.end method

.method public stop(J)V
    .locals 1
    .param p1, "silenceThresholdParam"    # J

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/debug/tracer/AsyncTracer;->stopAsyncTrace(JZ)J

    .line 87
    return-void
.end method

.method public stopAndReturnElapsedMs()J
    .locals 4

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/debug/tracer/AsyncTracer;->stopAsyncTrace(JZ)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public stopAndReturnElapsedMs(J)J
    .locals 5
    .param p1, "silenceThresholdParam"    # J

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/debug/tracer/AsyncTracer;->stopAsyncTrace(JZ)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method
