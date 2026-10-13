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

.field private static sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private depth:I

.field public final eventDataCollection:[Lcom/facebook/crudolib/params/ParamsCollectionMap;

.field private finished:Z

.field private nextInfo:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public range:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 482
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->ANALYTICS_BATCH_INFO_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    if-gtz p1, :cond_0

    .line 498
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid batch Size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was given."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_0
    new-array v0, p1, [Lcom/facebook/crudolib/params/ParamsCollectionMap;

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->eventDataCollection:[Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .line 501
    iput v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    .line 502
    iput-boolean v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->finished:Z

    .line 503
    iput v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->depth:I

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->nextInfo:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 505
    return-void
.end method

.method static synthetic access$700(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)Z
    .locals 1

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->cannotAcceptEvents()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)V
    .locals 0

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->stopAcceptingEvents()V

    return-void
.end method

.method private cannotAcceptEvents()Z
    .locals 1

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->finished:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->isEventBatchFull()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clean()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 564
    :goto_0
    iget v2, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    if-ge v0, v2, :cond_1

    .line 565
    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->eventDataCollection:[Lcom/facebook/crudolib/params/ParamsCollectionMap;

    aget-object v2, v2, v0

    .line 566
    if-eqz v2, :cond_0

    .line 567
    invoke-virtual {v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->release()V

    .line 564
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    :cond_1
    iput v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->nextInfo:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 574
    iput v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->depth:I

    .line 576
    iput-boolean v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->finished:Z

    .line 577
    return-void
.end method

.method public static getInstance(I)Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;
    .locals 3

    .prologue
    .line 531
    sget-object v1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->ANALYTICS_BATCH_INFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    sget-object v0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    if-eqz v0, :cond_0

    .line 533
    sget-object v0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 534
    sget-object v2, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    iget-object v2, v2, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->nextInfo:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    sput-object v2, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 535
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->nextInfo:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 536
    monitor-exit v1

    .line 539
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    invoke-direct {v0, p0}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;-><init>(I)V

    monitor-exit v1

    goto :goto_0

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isEventBatchFull()Z
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->eventDataCollection:[Lcom/facebook/crudolib/params/ParamsCollectionMap;

    array-length v0, v0

    iget v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static releaseInstance(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)V
    .locals 3

    .prologue
    .line 544
    sget-object v1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->ANALYTICS_BATCH_INFO_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 545
    :try_start_0
    sget-object v0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    sget-object v2, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    iget v2, v2, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->depth:I

    if-gt v0, v2, :cond_0

    .line 547
    monitor-exit v1

    .line 555
    :goto_0
    return-void

    .line 550
    :cond_0
    sget-object v0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->nextInfo:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 551
    sget-object v0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    iget v0, v0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->depth:I

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iput v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->depth:I

    .line 553
    sput-object p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->sHead:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 554
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 551
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private stopAcceptingEvents()V
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->finished:Z

    .line 524
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/facebook/crudolib/params/ParamsCollectionMap;)Z
    .locals 2

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->cannotAcceptEvents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Batch cannot accept more events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->eventDataCollection:[Lcom/facebook/crudolib/params/ParamsCollectionMap;

    iget v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    aput-object p1, v0, v1

    .line 514
    iget v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    .line 515
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->isEventBatchFull()Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->clean()V

    .line 560
    invoke-static {p0}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->releaseInstance(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)V

    .line 561
    return-void
.end method
