.class final Lcom/facebook/debug/tracer/ThreadTrace;
.super Ljava/lang/Object;
.source "ThreadTrace.java"


# static fields
.field static final HARD_TRACE_EVENT_LIMIT_SIZE:I = 0x7d0

.field static INVALID_TRACE_ID:I = 0x0

.field static final MAX_TIME_LIMIT_NS:J = 0x29e8d60800L

.field static final SOFT_TRACE_EVENT_LIMIT_SIZE:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "ThreadTrace"

.field private static final mDefaultThresholdNanos:J = 0x2dc6c0L

.field private static final sComparatorByElapsedNanos:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/facebook/debug/tracer/TraceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field static final sThreadLocalState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/facebook/debug/tracer/ThreadTrace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

.field private mEventsSize:I

.field private mNullCount:I

.field private final mOutstandingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/debug/tracer/TraceEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/facebook/debug/tracer/ThreadTrace$1;

    invoke-direct {v0}, Lcom/facebook/debug/tracer/ThreadTrace$1;-><init>()V

    sput-object v0, Lcom/facebook/debug/tracer/ThreadTrace;->sThreadLocalState:Ljava/lang/ThreadLocal;

    .line 46
    const/4 v0, -0x1

    sput v0, Lcom/facebook/debug/tracer/ThreadTrace;->INVALID_TRACE_ID:I

    .line 48
    new-instance v0, Lcom/facebook/debug/tracer/ThreadTrace$2;

    invoke-direct {v0}, Lcom/facebook/debug/tracer/ThreadTrace$2;-><init>()V

    sput-object v0, Lcom/facebook/debug/tracer/ThreadTrace;->sComparatorByElapsedNanos:Ljava/util/Comparator;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/debug/tracer/ThreadTrace;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    .line 72
    const/16 v0, 0x64

    new-array v0, v0, [Lcom/facebook/debug/tracer/TraceEvent;

    iput-object v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    return-void
.end method

.method private addInternal(Lcom/facebook/debug/tracer/TraceEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/facebook/debug/tracer/TraceEvent;

    .prologue
    .line 559
    iget v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    if-le v1, v2, :cond_0

    .line 560
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->removeNulls()V

    .line 563
    :cond_0
    iget v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    iget-object v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 564
    iget-object v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x1

    .line 565
    .local v0, "newSize":I
    iget-object v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/debug/tracer/TraceEvent;

    iput-object v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    .line 567
    .end local v0    # "newSize":I
    :cond_1
    iget-object v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    iget v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    aput-object p1, v1, v2

    .line 568
    return-void
.end method

.method private static getNextId()I
    .locals 2

    .prologue
    .line 576
    sget-object v1, Lcom/facebook/debug/tracer/ThreadTrace;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 578
    .local v0, "id":I
    :goto_0
    sget v1, Lcom/facebook/debug/tracer/ThreadTrace;->INVALID_TRACE_ID:I

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 580
    :cond_0
    sget-object v1, Lcom/facebook/debug/tracer/ThreadTrace;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    goto :goto_0

    .line 582
    :cond_1
    return v0
.end method

.method private getStartTraceIndex(I)I
    .locals 3
    .param p1, "traceId"    # I

    .prologue
    .line 535
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    if-ge v1, v2, :cond_1

    .line 536
    iget-object v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v0, v2, v1

    .line 537
    .local v0, "e":Lcom/facebook/debug/tracer/TraceEvent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getEventType()Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/debug/tracer/TraceEvent$Type;->isStartLikeEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 541
    .end local v0    # "e":Lcom/facebook/debug/tracer/TraceEvent;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 535
    .restart local v0    # "e":Lcom/facebook/debug/tracer/TraceEvent;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    .end local v0    # "e":Lcom/facebook/debug/tracer/TraceEvent;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getStopTraceIndex(I)I
    .locals 3
    .param p1, "traceId"    # I

    .prologue
    .line 545
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    if-ge v1, v2, :cond_1

    .line 546
    iget-object v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v0, v2, v1

    .line 547
    .local v0, "e":Lcom/facebook/debug/tracer/TraceEvent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getEventType()Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/debug/tracer/TraceEvent$Type;->isStopLikeEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 551
    .end local v0    # "e":Lcom/facebook/debug/tracer/TraceEvent;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 545
    .restart local v0    # "e":Lcom/facebook/debug/tracer/TraceEvent;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    .end local v0    # "e":Lcom/facebook/debug/tracer/TraceEvent;
    :cond_1
    iget v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    add-int/lit8 v1, v2, -0x1

    goto :goto_1
.end method

.method private getTracerCount()I
    .locals 2

    .prologue
    .line 555
    iget v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    iget v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private removeNulls()V
    .locals 4

    .prologue
    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "fromIndex":I
    const/4 v1, 0x0

    .line 522
    .local v1, "toIndex":I
    :goto_0
    iget v3, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    if-ge v0, v3, :cond_1

    .line 523
    iget-object v3, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v2, v3, v0

    .line 524
    .local v2, "traceEvent":Lcom/facebook/debug/tracer/TraceEvent;
    if-eqz v2, :cond_0

    .line 525
    iget-object v3, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aput-object v2, v3, v1

    .line 526
    add-int/lit8 v1, v1, 0x1

    .line 528
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 529
    goto :goto_0

    .line 530
    .end local v2    # "traceEvent":Lcom/facebook/debug/tracer/TraceEvent;
    :cond_1
    iput v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    .line 531
    const/4 v3, 0x0

    iput v3, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    .line 532
    return-void
.end method


# virtual methods
.method addComment(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 210
    invoke-static {}, Lcom/facebook/debug/tracer/ThreadTrace;->getNextId()I

    move-result v1

    invoke-static {v1, p1, p2}, Lcom/facebook/debug/tracer/TraceEvent;->getCommentEvent(ILjava/lang/String;[Ljava/lang/Object;)Lcom/facebook/debug/tracer/TraceEvent;

    move-result-object v0

    .line 211
    .local v0, "eventComment":Lcom/facebook/debug/tracer/TraceEvent;
    invoke-direct {p0, v0}, Lcom/facebook/debug/tracer/ThreadTrace;->addInternal(Lcom/facebook/debug/tracer/TraceEvent;)V

    .line 212
    return-void
.end method

.method addSpawn(Ljava/lang/String;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-static {}, Lcom/facebook/debug/tracer/ThreadTrace;->getNextId()I

    move-result v1

    invoke-static {v1, p1}, Lcom/facebook/debug/tracer/TraceEvent;->getSpawnEvent(ILjava/lang/String;)Lcom/facebook/debug/tracer/TraceEvent;

    move-result-object v0

    .line 224
    .local v0, "eventSpawn":Lcom/facebook/debug/tracer/TraceEvent;
    invoke-direct {p0, v0}, Lcom/facebook/debug/tracer/ThreadTrace;->addInternal(Lcom/facebook/debug/tracer/TraceEvent;)V

    .line 225
    return-void
.end method

.method adjustStartTime(IJ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "timeOffsetMs"    # J

    .prologue
    .line 113
    iget-object v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/tracer/TraceEvent;

    .line 114
    .local v0, "startEvent":Lcom/facebook/debug/tracer/TraceEvent;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getEventTimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v4, p2

    add-long/2addr v2, v4

    .line 115
    invoke-virtual {v0, v2, v3}, Lcom/facebook/debug/tracer/TraceEvent;->setEventTimeNanos(J)V

    .line 118
    :cond_0
    return-void
.end method

.method calculateMaxEventsNanosThreshold(I)J
    .locals 14
    .param p1, "maxEvents"    # I

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->getTracerCount()I

    move-result v9

    .line 419
    .local v9, "totalEvents":I
    if-gt v9, p1, :cond_1

    .line 420
    const-wide/16 v6, -0x1

    .line 448
    :cond_0
    :goto_0
    return-wide v6

    .line 423
    :cond_1
    new-instance v8, Ljava/util/PriorityQueue;

    iget v10, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    div-int/lit8 v10, v10, 0x2

    sget-object v11, Lcom/facebook/debug/tracer/ThreadTrace;->sComparatorByElapsedNanos:Ljava/util/Comparator;

    invoke-direct {v8, v10, v11}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 425
    .local v8, "priorityQueue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/facebook/debug/tracer/TraceEvent;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v10, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    if-ge v3, v10, :cond_4

    .line 426
    iget-object v10, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v1, v10, v3

    .line 427
    .local v1, "event":Lcom/facebook/debug/tracer/TraceEvent;
    if-nez v1, :cond_3

    .line 425
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 430
    :cond_3
    invoke-virtual {v1}, Lcom/facebook/debug/tracer/TraceEvent;->getEventType()Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-result-object v2

    .line 431
    .local v2, "eventType":Lcom/facebook/debug/tracer/TraceEvent$Type;
    sget-object v10, Lcom/facebook/debug/tracer/TraceEvent$Type;->STOP:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v2, v10, :cond_2

    .line 432
    invoke-virtual {v8, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 436
    .end local v1    # "event":Lcom/facebook/debug/tracer/TraceEvent;
    .end local v2    # "eventType":Lcom/facebook/debug/tracer/TraceEvent$Type;
    :cond_4
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->getTracerCount()I

    move-result v10

    sub-int v0, v10, p1

    .line 437
    .local v0, "countToDelete":I
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 438
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/facebook/debug/tracer/TraceEvent;>;"
    const-wide/16 v6, 0x0

    .line 439
    .local v6, "nanosThreshold":J
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    if-lez v0, :cond_5

    .line 440
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/debug/tracer/TraceEvent;

    .line 441
    .local v5, "next":Lcom/facebook/debug/tracer/TraceEvent;
    invoke-virtual {v5}, Lcom/facebook/debug/tracer/TraceEvent;->getEventTimeNanos()J

    move-result-wide v10

    invoke-virtual {v5}, Lcom/facebook/debug/tracer/TraceEvent;->getStartTimeNanos()J

    move-result-wide v12

    sub-long v6, v10, v12

    .line 442
    add-int/lit8 v0, v0, -0x2

    .line 443
    goto :goto_3

    .line 444
    .end local v5    # "next":Lcom/facebook/debug/tracer/TraceEvent;
    :cond_5
    if-lez v0, :cond_0

    .line 448
    const-wide v6, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method getAllEvents()Ljava/util/List;
    .locals 3
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
    .line 282
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->removeNulls()V

    .line 283
    iget-object v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEvent(I)Lcom/facebook/debug/tracer/TraceEvent;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/tracer/TraceEvent;

    return-object v0
.end method

.method getEvents(I)Ljava/util/List;
    .locals 4
    .param p1, "traceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/debug/tracer/TraceEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->removeNulls()V

    .line 267
    invoke-direct {p0, p1}, Lcom/facebook/debug/tracer/ThreadTrace;->getStartTraceIndex(I)I

    move-result v0

    .line 268
    .local v0, "startIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 269
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 272
    :goto_0
    return-object v2

    .line 271
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/debug/tracer/ThreadTrace;->getStopTraceIndex(I)I

    move-result v1

    .line 272
    .local v1, "stopIndex":I
    iget-object v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method getLastEventTimeNanos()J
    .locals 4

    .prologue
    .line 248
    iget v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 249
    iget-object v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v1, v2, v0

    .line 250
    .local v1, "traceEvent":Lcom/facebook/debug/tracer/TraceEvent;
    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v1}, Lcom/facebook/debug/tracer/TraceEvent;->getEventTimeNanos()J

    move-result-wide v2

    .line 254
    .end local v1    # "traceEvent":Lcom/facebook/debug/tracer/TraceEvent;
    :goto_1
    return-wide v2

    .line 248
    .restart local v1    # "traceEvent":Lcom/facebook/debug/tracer/TraceEvent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 254
    .end local v1    # "traceEvent":Lcom/facebook/debug/tracer/TraceEvent;
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method getLastTraceId()I
    .locals 3

    .prologue
    .line 233
    iget v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 234
    iget-object v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v1, v2, v0

    .line 235
    .local v1, "traceEvent":Lcom/facebook/debug/tracer/TraceEvent;
    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v1}, Lcom/facebook/debug/tracer/TraceEvent;->getId()I

    move-result v2

    .line 239
    .end local v1    # "traceEvent":Lcom/facebook/debug/tracer/TraceEvent;
    :goto_1
    return v2

    .line 233
    .restart local v1    # "traceEvent":Lcom/facebook/debug/tracer/TraceEvent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 239
    .end local v1    # "traceEvent":Lcom/facebook/debug/tracer/TraceEvent;
    :cond_1
    sget v2, Lcom/facebook/debug/tracer/ThreadTrace;->INVALID_TRACE_ID:I

    goto :goto_1
.end method

.method logTrace(IILjava/lang/String;)V
    .locals 3
    .param p1, "traceId"    # I
    .param p2, "logLevel"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    .line 295
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    .line 294
    invoke-static {p1, p2, p3, v0, v1}, Lcom/facebook/debug/tracer/TraceFormatter;->logTrace(IILjava/lang/String;Ljava/util/List;Landroid/util/SparseArray;)V

    .line 296
    return-void
.end method

.method pruneComments(I)I
    .locals 7
    .param p1, "maxEvents"    # I

    .prologue
    .line 500
    const/4 v2, 0x0

    .line 501
    .local v2, "pruned":I
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->getTracerCount()I

    move-result v4

    sub-int v3, v4, p1

    .line 502
    .local v3, "toDelete":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    if-ge v1, v4, :cond_0

    .line 503
    if-gtz v3, :cond_1

    .line 515
    :cond_0
    const-string v4, "ThreadTrace"

    const-string v5, "Pruned %d comments"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    return v2

    .line 506
    :cond_1
    iget-object v4, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v0, v4, v1

    .line 507
    .local v0, "event":Lcom/facebook/debug/tracer/TraceEvent;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getEventType()Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-result-object v4

    sget-object v5, Lcom/facebook/debug/tracer/TraceEvent$Type;->COMMENT:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v4, v5, :cond_2

    .line 508
    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->release()V

    .line 509
    iget-object v4, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 510
    iget v4, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    .line 511
    add-int/lit8 v2, v2, 0x1

    .line 512
    add-int/lit8 v3, v3, -0x1

    .line 502
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method pruneFineGrainedTracers(I)I
    .locals 4
    .param p1, "maxEvents"    # I

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lcom/facebook/debug/tracer/ThreadTrace;->calculateMaxEventsNanosThreshold(I)J

    move-result-wide v0

    .line 402
    .local v0, "nanosThreshold":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 404
    const/4 v2, 0x0

    .line 406
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/facebook/debug/tracer/ThreadTrace;->pruneFineGrainedTracersAtNanosThreshold(J)I

    move-result v2

    goto :goto_0
.end method

.method pruneFineGrainedTracersAtNanosThreshold(J)I
    .locals 13
    .param p1, "thresholdNanos"    # J

    .prologue
    const/4 v12, 0x0

    .line 459
    const/4 v2, 0x0

    .line 460
    .local v2, "pruned":I
    const/16 v7, 0xa

    new-array v3, v7, [I

    .line 461
    .local v3, "stack":[I
    const/4 v4, 0x0

    .line 462
    .local v4, "stackSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v7, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    if-ge v1, v7, :cond_4

    .line 463
    iget-object v7, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v0, v7, v1

    .line 464
    .local v0, "event":Lcom/facebook/debug/tracer/TraceEvent;
    if-nez v0, :cond_1

    .line 462
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getEventType()Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-result-object v7

    sget-object v8, Lcom/facebook/debug/tracer/TraceEvent$Type;->START:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v7, v8, :cond_3

    .line 468
    array-length v7, v3

    if-lt v4, v7, :cond_2

    .line 469
    array-length v7, v3

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 471
    :cond_2
    aput v1, v3, v4

    .line 472
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 473
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getEventType()Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-result-object v7

    sget-object v8, Lcom/facebook/debug/tracer/TraceEvent$Type;->STOP:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v7, v8, :cond_0

    .line 474
    add-int/lit8 v7, v4, -0x1

    aget v6, v3, v7

    .line 475
    .local v6, "startIndex":I
    add-int/lit8 v4, v4, -0x1

    .line 477
    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getEventTimeNanos()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getStartTimeNanos()J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v7, v8, p1

    if-gtz v7, :cond_0

    .line 478
    iget-object v7, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v5, v7, v6

    .line 479
    .local v5, "startEvent":Lcom/facebook/debug/tracer/TraceEvent;
    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->release()V

    .line 480
    invoke-virtual {v5}, Lcom/facebook/debug/tracer/TraceEvent;->release()V

    .line 481
    iget-object v7, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aput-object v12, v7, v1

    .line 482
    iget-object v7, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aput-object v12, v7, v6

    .line 483
    iget v7, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    .line 484
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 489
    .end local v0    # "event":Lcom/facebook/debug/tracer/TraceEvent;
    .end local v5    # "startEvent":Lcom/facebook/debug/tracer/TraceEvent;
    .end local v6    # "startIndex":I
    :cond_4
    const-string v7, "ThreadTrace"

    const-string v8, "Pruned %d fine grain events"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    return v2
.end method

.method pruneOldStoppedTracers()I
    .locals 14

    .prologue
    .line 348
    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->nanoTime()J

    move-result-wide v4

    .line 349
    .local v4, "now":J
    const/4 v7, 0x0

    .line 350
    .local v7, "syncNestingLevel":I
    const/4 v3, 0x0

    .line 351
    .local v3, "lastTruncationPoint":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v9, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    if-ge v2, v9, :cond_4

    .line 352
    iget-object v9, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v0, v9, v2

    .line 353
    .local v0, "event":Lcom/facebook/debug/tracer/TraceEvent;
    if-nez v0, :cond_1

    .line 351
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getEventType()Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-result-object v1

    .line 357
    .local v1, "eventType":Lcom/facebook/debug/tracer/TraceEvent$Type;
    sget-object v9, Lcom/facebook/debug/tracer/TraceEvent$Type;->START:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v1, v9, :cond_3

    .line 358
    add-int/lit8 v7, v7, 0x1

    .line 364
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getEventTimeNanos()J

    move-result-wide v10

    sub-long v10, v4, v10

    const-wide v12, 0x29e8d60800L

    cmp-long v9, v10, v12

    if-ltz v9, :cond_4

    .line 365
    if-nez v7, :cond_0

    .line 366
    move v3, v2

    goto :goto_1

    .line 359
    :cond_3
    sget-object v9, Lcom/facebook/debug/tracer/TraceEvent$Type;->STOP:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v1, v9, :cond_2

    .line 360
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 373
    .end local v0    # "event":Lcom/facebook/debug/tracer/TraceEvent;
    .end local v1    # "eventType":Lcom/facebook/debug/tracer/TraceEvent$Type;
    :cond_4
    const/4 v6, 0x0

    .line 374
    .local v6, "removed":I
    if-lez v3, :cond_6

    .line 375
    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v9, v3, 0x1

    if-ge v2, v9, :cond_6

    .line 376
    iget-object v9, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v8, v9, v2

    .line 377
    .local v8, "traceEvent":Lcom/facebook/debug/tracer/TraceEvent;
    if-eqz v8, :cond_5

    .line 378
    invoke-virtual {v8}, Lcom/facebook/debug/tracer/TraceEvent;->release()V

    .line 379
    iget-object v9, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    const/4 v10, 0x0

    aput-object v10, v9, v2

    .line 380
    iget v9, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    .line 381
    add-int/lit8 v6, v6, 0x1

    .line 375
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 385
    .end local v8    # "traceEvent":Lcom/facebook/debug/tracer/TraceEvent;
    :cond_6
    const-string v9, "ThreadTrace"

    const-string v10, "Pruned %d old events"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    return v6
.end method

.method pruneTracers()V
    .locals 14

    .prologue
    const/16 v7, 0x7d0

    const/16 v6, 0x5dc

    const-wide/32 v12, 0xf4240

    .line 301
    const/4 v2, 0x0

    .line 302
    .local v2, "pruned":I
    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->realNanoTime()J

    move-result-wide v4

    .line 304
    .local v4, "start":J
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->getTracerCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-gt v3, v7, :cond_2

    .line 330
    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->realNanoTime()J

    move-result-wide v0

    .line 331
    .local v0, "finished":J
    sub-long v6, v0, v4

    cmp-long v3, v6, v12

    if-gtz v3, :cond_0

    if-lez v2, :cond_1

    .line 332
    :cond_0
    const-string v3, "ThreadTrace"

    const-string v6, "Pruned %d events on thread 0x%x in %d ms"

    .line 335
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sub-long v10, v0, v4

    div-long/2addr v10, v12

    .line 337
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 332
    invoke-static {v3, v6, v7, v8, v9}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 340
    :cond_1
    :goto_0
    return-void

    .line 309
    .end local v0    # "finished":J
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->pruneOldStoppedTracers()I

    move-result v3

    add-int/2addr v2, v3

    .line 313
    const/16 v3, 0x5dc

    invoke-virtual {p0, v3}, Lcom/facebook/debug/tracer/ThreadTrace;->pruneFineGrainedTracers(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 316
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->getTracerCount()I

    move-result v3

    if-le v3, v6, :cond_3

    .line 317
    const/16 v3, 0x5dc

    invoke-virtual {p0, v3}, Lcom/facebook/debug/tracer/ThreadTrace;->pruneComments(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 323
    :cond_3
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->getTracerCount()I

    move-result v3

    if-le v3, v7, :cond_6

    .line 324
    const-string v3, "ThreadTrace"

    const-string v6, "Resetting because hit couldn\'t get under hard limit after normal pruning"

    invoke-static {v3, v6}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    :cond_4
    :goto_1
    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->realNanoTime()J

    move-result-wide v0

    .line 331
    .restart local v0    # "finished":J
    sub-long v6, v0, v4

    cmp-long v3, v6, v12

    if-gtz v3, :cond_5

    if-lez v2, :cond_1

    .line 332
    :cond_5
    const-string v3, "ThreadTrace"

    const-string v6, "Pruned %d events on thread 0x%x in %d ms"

    .line 335
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sub-long v10, v0, v4

    div-long/2addr v10, v12

    .line 337
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 332
    invoke-static {v3, v6, v7, v8, v9}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 326
    .end local v0    # "finished":J
    :cond_6
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->getTracerCount()I

    move-result v3

    if-le v3, v6, :cond_4

    .line 327
    const-string v3, "ThreadTrace"

    const-string v6, "Couldn\'t get under soft limit after normal pruning"

    invoke-static {v3, v6}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 330
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->realNanoTime()J

    move-result-wide v0

    .line 331
    .restart local v0    # "finished":J
    sub-long v6, v0, v4

    cmp-long v6, v6, v12

    if-gtz v6, :cond_7

    if-lez v2, :cond_8

    .line 332
    :cond_7
    const-string v6, "ThreadTrace"

    const-string v7, "Pruned %d events on thread 0x%x in %d ms"

    .line 335
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sub-long v10, v0, v4

    div-long/2addr v10, v12

    .line 337
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 332
    invoke-static {v6, v7, v8, v9, v10}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    :cond_8
    throw v3
.end method

.method reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    if-ge v0, v2, :cond_2

    .line 189
    iget-object v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v1, v2, v0

    .line 190
    .local v1, "traceEvent":Lcom/facebook/debug/tracer/TraceEvent;
    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {v1}, Lcom/facebook/debug/tracer/TraceEvent;->getEventType()Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-result-object v2

    sget-object v3, Lcom/facebook/debug/tracer/TraceEvent$Type;->START:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v2, v3, :cond_0

    .line 192
    iget-object v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/facebook/debug/tracer/TraceEvent;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 194
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/debug/tracer/TraceEvent;->release()V

    .line 188
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "traceEvent":Lcom/facebook/debug/tracer/TraceEvent;
    :cond_2
    iput v4, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    .line 198
    iput v4, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    .line 199
    iget-object v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 200
    return-void
.end method

.method startTracer(Ljava/lang/String;Z)I
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "async"    # Z

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/debug/tracer/ThreadTrace;->startTracer(Ljava/lang/String;[Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method startTracer(Ljava/lang/String;[Ljava/lang/Object;Z)I
    .locals 3
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "async"    # Z

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->pruneTracers()V

    .line 99
    invoke-static {}, Lcom/facebook/debug/tracer/ThreadTrace;->getNextId()I

    move-result v1

    .line 100
    .local v1, "id":I
    invoke-static {v1, p1, p2, p3}, Lcom/facebook/debug/tracer/TraceEvent;->getStartEvent(ILjava/lang/String;[Ljava/lang/Object;Z)Lcom/facebook/debug/tracer/TraceEvent;

    move-result-object v0

    .line 101
    .local v0, "event":Lcom/facebook/debug/tracer/TraceEvent;
    invoke-direct {p0, v0}, Lcom/facebook/debug/tracer/ThreadTrace;->addInternal(Lcom/facebook/debug/tracer/TraceEvent;)V

    .line 102
    iget-object v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 103
    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getId()I

    move-result v2

    return v2
.end method

.method stopTracer(IJZ)J
    .locals 14
    .param p1, "id"    # I
    .param p2, "silenceThresholdMsParam"    # J
    .param p4, "useSilenceThreshold"    # Z

    .prologue
    .line 134
    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->nanoTime()J

    move-result-wide v6

    .line 136
    .local v6, "nowNanos":J
    if-nez p4, :cond_1

    .line 137
    const-wide/32 v8, 0x2dc6c0

    .line 142
    .local v8, "silenceThresholdNanos":J
    :goto_0
    iget-object v12, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    invoke-virtual {v12, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 143
    .local v4, "index":I
    if-gez v4, :cond_2

    .line 144
    const-wide/16 v2, -0x1

    .line 172
    :cond_0
    :goto_1
    return-wide v2

    .line 139
    .end local v4    # "index":I
    .end local v8    # "silenceThresholdNanos":J
    :cond_1
    const-wide/32 v12, 0xf4240

    mul-long v8, p2, v12

    .restart local v8    # "silenceThresholdNanos":J
    goto :goto_0

    .line 147
    .restart local v4    # "index":I
    :cond_2
    iget-object v12, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/debug/tracer/TraceEvent;

    .line 149
    .local v10, "startEvent":Lcom/facebook/debug/tracer/TraceEvent;
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0xb

    if-lt v12, v13, :cond_3

    .line 150
    iget-object v12, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->removeAt(I)V

    .line 156
    :goto_2
    invoke-virtual {v10}, Lcom/facebook/debug/tracer/TraceEvent;->getEventTimeNanos()J

    move-result-wide v12

    sub-long v2, v6, v12

    .line 157
    .local v2, "elapsedNanos":J
    cmp-long v12, v2, v8

    if-gez v12, :cond_5

    .line 158
    iget v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    .line 159
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_0

    .line 160
    iget-object v12, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v5, v12, v1

    .line 161
    .local v5, "nextEvent":Lcom/facebook/debug/tracer/TraceEvent;
    if-ne v5, v10, :cond_4

    .line 162
    iget-object v12, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    const/4 v13, 0x0

    aput-object v13, v12, v1

    .line 163
    iget v12, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    .line 164
    invoke-virtual {v10}, Lcom/facebook/debug/tracer/TraceEvent;->release()V

    goto :goto_1

    .line 152
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "elapsedNanos":J
    .end local v5    # "nextEvent":Lcom/facebook/debug/tracer/TraceEvent;
    :cond_3
    iget-object v12, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    invoke-virtual {v12, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 159
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "elapsedNanos":J
    .restart local v5    # "nextEvent":Lcom/facebook/debug/tracer/TraceEvent;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 169
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v5    # "nextEvent":Lcom/facebook/debug/tracer/TraceEvent;
    :cond_5
    invoke-static {v10}, Lcom/facebook/debug/tracer/TraceEvent;->getStopEvent(Lcom/facebook/debug/tracer/TraceEvent;)Lcom/facebook/debug/tracer/TraceEvent;

    move-result-object v11

    .line 170
    .local v11, "stopEvent":Lcom/facebook/debug/tracer/TraceEvent;
    invoke-direct {p0, v11}, Lcom/facebook/debug/tracer/ThreadTrace;->addInternal(Lcom/facebook/debug/tracer/TraceEvent;)V

    goto :goto_1
.end method
