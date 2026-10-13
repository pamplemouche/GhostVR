.class final Lcom/facebook/debug/tracer/ThreadTrace;
.super Ljava/lang/Object;
.source "ThreadTrace.java"


# static fields
.field static INVALID_TRACE_ID:I

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
    .locals 3

    .prologue
    .line 559
    iget v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    if-le v0, v1, :cond_0

    .line 560
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->removeNulls()V

    .line 563
    :cond_0
    iget v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    iget-object v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 564
    iget-object v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 565
    iget-object v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/debug/tracer/TraceEvent;

    iput-object v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    iget v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    aput-object p1, v0, v1

    .line 568
    return-void
.end method

.method private static getNextId()I
    .locals 2

    .prologue
    .line 576
    sget-object v0, Lcom/facebook/debug/tracer/ThreadTrace;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 578
    :goto_0
    sget v1, Lcom/facebook/debug/tracer/ThreadTrace;->INVALID_TRACE_ID:I

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 580
    :cond_0
    sget-object v0, Lcom/facebook/debug/tracer/ThreadTrace;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    goto :goto_0

    .line 582
    :cond_1
    return v0
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
    .locals 5

    .prologue
    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    .line 522
    :goto_0
    iget v3, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    if-ge v2, v3, :cond_1

    .line 523
    iget-object v3, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v3, v3, v2

    .line 524
    if-eqz v3, :cond_0

    .line 525
    iget-object v4, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aput-object v3, v4, v0

    .line 526
    add-int/lit8 v0, v0, 0x1

    .line 528
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 529
    goto :goto_0

    .line 530
    :cond_1
    iput v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    .line 531
    iput v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    .line 532
    return-void
.end method


# virtual methods
.method calculateMaxEventsNanosThreshold(I)J
    .locals 6

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->getTracerCount()I

    move-result v0

    .line 419
    if-gt v0, p1, :cond_1

    .line 420
    const-wide/16 v0, -0x1

    .line 448
    :cond_0
    :goto_0
    return-wide v0

    .line 423
    :cond_1
    new-instance v1, Ljava/util/PriorityQueue;

    iget v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    div-int/lit8 v0, v0, 0x2

    sget-object v2, Lcom/facebook/debug/tracer/ThreadTrace;->sComparatorByElapsedNanos:Ljava/util/Comparator;

    invoke-direct {v1, v0, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 425
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    if-ge v0, v2, :cond_4

    .line 426
    iget-object v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v2, v2, v0

    .line 427
    if-nez v2, :cond_3

    .line 425
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 430
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/debug/tracer/TraceEvent;->getEventType()Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-result-object v3

    .line 431
    sget-object v4, Lcom/facebook/debug/tracer/TraceEvent$Type;->STOP:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v3, v4, :cond_2

    .line 432
    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 436
    :cond_4
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->getTracerCount()I

    move-result v0

    sub-int v2, v0, p1

    .line 437
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 438
    const-wide/16 v0, 0x0

    .line 439
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    if-lez v2, :cond_5

    .line 440
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/tracer/TraceEvent;

    .line 441
    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getEventTimeNanos()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getStartTimeNanos()J

    move-result-wide v0

    sub-long v0, v4, v0

    .line 442
    add-int/lit8 v2, v2, -0x2

    .line 443
    goto :goto_3

    .line 444
    :cond_5
    if-lez v2, :cond_0

    .line 448
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method getLastEventTimeNanos()J
    .locals 2

    .prologue
    .line 248
    iget v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 249
    iget-object v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v1, v1, v0

    .line 250
    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v1}, Lcom/facebook/debug/tracer/TraceEvent;->getEventTimeNanos()J

    move-result-wide v0

    .line 254
    :goto_1
    return-wide v0

    .line 248
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 254
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method pruneComments(I)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 501
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->getTracerCount()I

    move-result v1

    sub-int/2addr v1, p1

    move v2, v0

    .line 502
    :goto_0
    iget v3, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    if-ge v0, v3, :cond_0

    .line 503
    if-gtz v1, :cond_1

    .line 515
    :cond_0
    const-string v0, "ThreadTrace"

    const-string v1, "Pruned %d comments"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    return v2

    .line 506
    :cond_1
    iget-object v3, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v3, v3, v0

    .line 507
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/facebook/debug/tracer/TraceEvent;->getEventType()Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-result-object v4

    sget-object v5, Lcom/facebook/debug/tracer/TraceEvent$Type;->COMMENT:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v4, v5, :cond_2

    .line 508
    invoke-virtual {v3}, Lcom/facebook/debug/tracer/TraceEvent;->release()V

    .line 509
    iget-object v3, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 510
    iget v3, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    .line 511
    add-int/lit8 v2, v2, 0x1

    .line 512
    add-int/lit8 v1, v1, -0x1

    .line 502
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method pruneFineGrainedTracers(I)I
    .locals 4

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lcom/facebook/debug/tracer/ThreadTrace;->calculateMaxEventsNanosThreshold(I)J

    move-result-wide v0

    .line 402
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 406
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/facebook/debug/tracer/ThreadTrace;->pruneFineGrainedTracersAtNanosThreshold(J)I

    move-result v0

    goto :goto_0
.end method

.method pruneFineGrainedTracersAtNanosThreshold(J)I
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x0

    .line 460
    const/16 v1, 0xa

    new-array v1, v1, [I

    move-object v2, v1

    move v3, v0

    move v1, v0

    .line 462
    :goto_0
    iget v4, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    if-ge v0, v4, :cond_4

    .line 463
    iget-object v4, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v4, v4, v0

    .line 464
    if-nez v4, :cond_1

    .line 462
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {v4}, Lcom/facebook/debug/tracer/TraceEvent;->getEventType()Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-result-object v5

    sget-object v6, Lcom/facebook/debug/tracer/TraceEvent$Type;->START:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v5, v6, :cond_3

    .line 468
    array-length v4, v2

    if-lt v1, v4, :cond_2

    .line 469
    array-length v4, v2

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 471
    :cond_2
    aput v0, v2, v1

    .line 472
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 473
    :cond_3
    invoke-virtual {v4}, Lcom/facebook/debug/tracer/TraceEvent;->getEventType()Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-result-object v5

    sget-object v6, Lcom/facebook/debug/tracer/TraceEvent$Type;->STOP:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v5, v6, :cond_0

    .line 474
    add-int/lit8 v5, v1, -0x1

    aget v5, v2, v5

    .line 475
    add-int/lit8 v1, v1, -0x1

    .line 477
    invoke-virtual {v4}, Lcom/facebook/debug/tracer/TraceEvent;->getEventTimeNanos()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/facebook/debug/tracer/TraceEvent;->getStartTimeNanos()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v6, v6, p1

    if-gtz v6, :cond_0

    .line 478
    iget-object v6, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v6, v6, v5

    .line 479
    invoke-virtual {v4}, Lcom/facebook/debug/tracer/TraceEvent;->release()V

    .line 480
    invoke-virtual {v6}, Lcom/facebook/debug/tracer/TraceEvent;->release()V

    .line 481
    iget-object v4, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aput-object v10, v4, v0

    .line 482
    iget-object v4, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aput-object v10, v4, v5

    .line 483
    iget v4, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    .line 484
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 489
    :cond_4
    const-string v0, "ThreadTrace"

    const-string v1, "Pruned %d fine grain events"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    return v3
.end method

.method pruneOldStoppedTracers()I
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 348
    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->nanoTime()J

    move-result-wide v4

    move v0, v1

    move v2, v1

    move v3, v1

    .line 351
    :goto_0
    iget v6, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    if-ge v0, v6, :cond_4

    .line 352
    iget-object v6, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v6, v6, v0

    .line 353
    if-nez v6, :cond_1

    .line 351
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {v6}, Lcom/facebook/debug/tracer/TraceEvent;->getEventType()Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-result-object v7

    .line 357
    sget-object v8, Lcom/facebook/debug/tracer/TraceEvent$Type;->START:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v7, v8, :cond_3

    .line 358
    add-int/lit8 v3, v3, 0x1

    .line 364
    :cond_2
    :goto_2
    invoke-virtual {v6}, Lcom/facebook/debug/tracer/TraceEvent;->getEventTimeNanos()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide v8, 0x29e8d60800L

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    .line 365
    if-nez v3, :cond_0

    move v2, v0

    .line 366
    goto :goto_1

    .line 359
    :cond_3
    sget-object v8, Lcom/facebook/debug/tracer/TraceEvent$Type;->STOP:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v7, v8, :cond_2

    .line 360
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 374
    :cond_4
    if-lez v2, :cond_6

    move v0, v1

    .line 375
    :goto_3
    add-int/lit8 v3, v2, 0x1

    if-ge v1, v3, :cond_7

    .line 376
    iget-object v3, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v3, v3, v1

    .line 377
    if-eqz v3, :cond_5

    .line 378
    invoke-virtual {v3}, Lcom/facebook/debug/tracer/TraceEvent;->release()V

    .line 379
    iget-object v3, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 380
    iget v3, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    .line 381
    add-int/lit8 v0, v0, 0x1

    .line 375
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    move v0, v1

    .line 385
    :cond_7
    const-string v1, "ThreadTrace"

    const-string v2, "Pruned %d old events"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    return v0
.end method

.method pruneTracers()V
    .locals 12

    .prologue
    const/16 v5, 0x7d0

    const/16 v4, 0x5dc

    const-wide/32 v10, 0xf4240

    .line 301
    const/4 v1, 0x0

    .line 302
    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->realNanoTime()J

    move-result-wide v2

    .line 304
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->getTracerCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gt v0, v5, :cond_2

    .line 330
    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->realNanoTime()J

    move-result-wide v4

    .line 331
    sub-long v6, v4, v2

    cmp-long v0, v6, v10

    if-gtz v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const-string v0, "ThreadTrace"

    const-string v6, "Pruned %d events on thread 0x%x in %d ms"

    .line 335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sub-long v2, v4, v2

    div-long/2addr v2, v10

    .line 337
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 332
    invoke-static {v0, v6, v1, v7, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 309
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->pruneOldStoppedTracers()I

    move-result v0

    add-int/2addr v1, v0

    .line 313
    const/16 v0, 0x5dc

    invoke-virtual {p0, v0}, Lcom/facebook/debug/tracer/ThreadTrace;->pruneFineGrainedTracers(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 316
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->getTracerCount()I

    move-result v0

    if-le v0, v4, :cond_3

    .line 317
    const/16 v0, 0x5dc

    invoke-virtual {p0, v0}, Lcom/facebook/debug/tracer/ThreadTrace;->pruneComments(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 323
    :cond_3
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->getTracerCount()I

    move-result v0

    if-le v0, v5, :cond_6

    .line 324
    const-string v0, "ThreadTrace"

    const-string v4, "Resetting because hit couldn\'t get under hard limit after normal pruning"

    invoke-static {v0, v4}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    :cond_4
    :goto_1
    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->realNanoTime()J

    move-result-wide v4

    .line 331
    sub-long v6, v4, v2

    cmp-long v0, v6, v10

    if-gtz v0, :cond_5

    if-lez v1, :cond_0

    .line 332
    :cond_5
    const-string v0, "ThreadTrace"

    const-string v6, "Pruned %d events on thread 0x%x in %d ms"

    .line 335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sub-long v2, v4, v2

    div-long/2addr v2, v10

    .line 337
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 332
    invoke-static {v0, v6, v1, v7, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 326
    :cond_6
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->getTracerCount()I

    move-result v0

    if-le v0, v4, :cond_4

    .line 327
    const-string v0, "ThreadTrace"

    const-string v4, "Couldn\'t get under soft limit after normal pruning"

    invoke-static {v0, v4}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 330
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->realNanoTime()J

    move-result-wide v4

    .line 331
    sub-long v6, v4, v2

    cmp-long v6, v6, v10

    if-gtz v6, :cond_7

    if-lez v1, :cond_8

    .line 332
    :cond_7
    const-string v6, "ThreadTrace"

    const-string v7, "Pruned %d events on thread 0x%x in %d ms"

    .line 335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sub-long v2, v4, v2

    div-long/2addr v2, v10

    .line 337
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 332
    invoke-static {v6, v7, v1, v8, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    :cond_8
    throw v0
.end method

.method reset()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 188
    :goto_0
    iget v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    if-ge v0, v2, :cond_2

    .line 189
    iget-object v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v2, v2, v0

    .line 190
    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {v2}, Lcom/facebook/debug/tracer/TraceEvent;->getEventType()Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-result-object v3

    sget-object v4, Lcom/facebook/debug/tracer/TraceEvent$Type;->START:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v3, v4, :cond_0

    .line 192
    iget-object v3, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/facebook/debug/tracer/TraceEvent;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 194
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/debug/tracer/TraceEvent;->release()V

    .line 188
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_2
    iput v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    .line 198
    iput v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    .line 199
    iget-object v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 200
    return-void
.end method

.method startTracer(Ljava/lang/String;[Ljava/lang/Object;Z)I
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/facebook/debug/tracer/ThreadTrace;->pruneTracers()V

    .line 99
    invoke-static {}, Lcom/facebook/debug/tracer/ThreadTrace;->getNextId()I

    move-result v0

    .line 100
    invoke-static {v0, p1, p2, p3}, Lcom/facebook/debug/tracer/TraceEvent;->getStartEvent(ILjava/lang/String;[Ljava/lang/Object;Z)Lcom/facebook/debug/tracer/TraceEvent;

    move-result-object v1

    .line 101
    invoke-direct {p0, v1}, Lcom/facebook/debug/tracer/ThreadTrace;->addInternal(Lcom/facebook/debug/tracer/TraceEvent;)V

    .line 102
    iget-object v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 103
    invoke-virtual {v1}, Lcom/facebook/debug/tracer/TraceEvent;->getId()I

    move-result v0

    return v0
.end method

.method stopTracer(IJZ)J
    .locals 8

    .prologue
    .line 134
    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->nanoTime()J

    move-result-wide v4

    .line 136
    if-nez p4, :cond_0

    .line 137
    const-wide/32 v0, 0x2dc6c0

    move-wide v2, v0

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 143
    if-gez v1, :cond_1

    .line 144
    const-wide/16 v0, -0x1

    .line 172
    :goto_1
    return-wide v0

    .line 139
    :cond_0
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p2

    move-wide v2, v0

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/tracer/TraceEvent;

    .line 149
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_3

    .line 150
    iget-object v6, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 156
    :goto_2
    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getEventTimeNanos()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 157
    cmp-long v1, v4, v2

    if-gez v1, :cond_5

    .line 158
    iget v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEventsSize:I

    .line 159
    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_2

    .line 160
    iget-object v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    aget-object v2, v2, v1

    .line 161
    if-ne v2, v0, :cond_4

    .line 162
    iget-object v2, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mEvents:[Lcom/facebook/debug/tracer/TraceEvent;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 163
    iget v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mNullCount:I

    .line 164
    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent;->release()V

    :cond_2
    :goto_4
    move-wide v0, v4

    .line 172
    goto :goto_1

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/facebook/debug/tracer/ThreadTrace;->mOutstandingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 159
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 169
    :cond_5
    invoke-static {v0}, Lcom/facebook/debug/tracer/TraceEvent;->getStopEvent(Lcom/facebook/debug/tracer/TraceEvent;)Lcom/facebook/debug/tracer/TraceEvent;

    move-result-object v0

    .line 170
    invoke-direct {p0, v0}, Lcom/facebook/debug/tracer/ThreadTrace;->addInternal(Lcom/facebook/debug/tracer/TraceEvent;)V

    goto :goto_4
.end method
