.class Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;
.super Ljava/lang/Object;
.source "EventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/EventProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnalyticsBatchInfo"
.end annotation


# static fields
.field private static final ANALYTICS_BATCH_INFO_LOCK:Ljava/lang/Object;

.field private static final MAX_DEPTH:I = 0xf

.field private static sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;


# instance fields
.field private depth:I

.field public final eventDataCollection:[Lcom/facebook/crudolib/params/ParamsCollectionMap;

.field private finished:Z

.field private nextInfo:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

.field public range:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 485
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->ANALYTICS_BATCH_INFO_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 503
    new-array p1, p1, [Lcom/facebook/crudolib/params/ParamsCollectionMap;

    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->eventDataCollection:[Lcom/facebook/crudolib/params/ParamsCollectionMap;

    const/4 p1, 0x0

    .line 504
    iput p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    .line 505
    iput-boolean p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->finished:Z

    .line 506
    iput p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->depth:I

    const/4 p1, 0x0

    .line 507
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->nextInfo:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    return-void

    .line 501
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid batch Size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was given."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$700(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)Z
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->cannotAcceptEvents()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)V
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->stopAcceptingEvents()V

    return-void
.end method

.method private cannotAcceptEvents()Z
    .locals 1

    .line 522
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->finished:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->isEventBatchFull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private clean()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 567
    :goto_0
    iget v2, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    if-ge v1, v2, :cond_1

    .line 568
    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->eventDataCollection:[Lcom/facebook/crudolib/params/ParamsCollectionMap;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 570
    invoke-virtual {v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->release()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 574
    :cond_1
    iput v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    const/4 v1, 0x0

    .line 576
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->nextInfo:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 577
    iput v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->depth:I

    .line 579
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->finished:Z

    return-void
.end method

.method public static getInstance(I)Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;
    .locals 2

    .line 534
    sget-object v0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->ANALYTICS_BATCH_INFO_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    :try_start_0
    sget-object v1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    if-eqz v1, :cond_0

    .line 536
    sget-object p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 537
    sget-object v1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    iget-object v1, v1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->nextInfo:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    sput-object v1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    const/4 v1, 0x0

    .line 538
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->nextInfo:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 539
    monitor-exit v0

    return-object p0

    .line 542
    :cond_0
    new-instance v1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    invoke-direct {v1, p0}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;-><init>(I)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 543
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isEventBatchFull()Z
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->eventDataCollection:[Lcom/facebook/crudolib/params/ParamsCollectionMap;

    array-length v0, v0

    iget v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static releaseInstance(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)V
    .locals 3

    .line 547
    sget-object v0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->ANALYTICS_BATCH_INFO_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_0
    sget-object v1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    sget-object v2, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    iget v2, v2, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->depth:I

    if-gt v1, v2, :cond_0

    .line 550
    monitor-exit v0

    return-void

    .line 553
    :cond_0
    sget-object v1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->nextInfo:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 554
    sget-object v1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    iget v1, v1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->depth:I

    add-int/2addr v2, v1

    :cond_1
    iput v2, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->depth:I

    .line 556
    sput-object p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 557
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private stopAcceptingEvents()V
    .locals 1

    const/4 v0, 0x1

    .line 526
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->finished:Z

    return-void
.end method


# virtual methods
.method public addEvent(Lcom/facebook/crudolib/params/ParamsCollectionMap;)Z
    .locals 2

    .line 512
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->cannotAcceptEvents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->eventDataCollection:[Lcom/facebook/crudolib/params/ParamsCollectionMap;

    iget v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 517
    iput v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    .line 518
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->isEventBatchFull()Z

    move-result p1

    return p1

    .line 513
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Batch cannot accept more events"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public recycle()V
    .locals 0

    .line 561
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->clean()V

    .line 563
    invoke-static {p0}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->releaseInstance(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)V

    return-void
.end method
