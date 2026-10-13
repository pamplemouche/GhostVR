.class public final Lcom/facebook/quicklog/HealthMonitor;
.super Ljava/lang/Object;
.source "HealthMonitor.java"


# instance fields
.field private final mMarkerEndCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mMarkerEndFound:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mTransport:Lcom/facebook/quicklog/HealthMonitorTransport;

.field private final mZeroSampleRateReported:Ljava/util/concurrent/atomic/AtomicBoolean;


# virtual methods
.method public reportMarkerEnd(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x1388

    .line 38
    iget-object v0, p0, Lcom/facebook/quicklog/HealthMonitor;->mMarkerEndCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    iget-object v0, p0, Lcom/facebook/quicklog/HealthMonitor;->mMarkerEndFound:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 47
    :goto_0
    if-ne v1, v2, :cond_0

    .line 48
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 49
    iget-object v1, p0, Lcom/facebook/quicklog/HealthMonitor;->mTransport:Lcom/facebook/quicklog/HealthMonitorTransport;

    const v2, 0x1a80005

    float-to-int v0, v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/quicklog/HealthMonitorTransport;->reportEvent(II)V

    .line 51
    :cond_0
    return-void

    .line 42
    :cond_1
    if-ne v1, v2, :cond_2

    .line 43
    iget-object v0, p0, Lcom/facebook/quicklog/HealthMonitor;->mMarkerEndFound:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    .line 45
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportZeroSampleRateDueMissingConfig(I)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/quicklog/HealthMonitor;->mZeroSampleRateReported:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/facebook/quicklog/HealthMonitor;->mTransport:Lcom/facebook/quicklog/HealthMonitorTransport;

    const v1, 0x1a80004

    const-string v2, "markerId"

    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/quicklog/HealthMonitorTransport;->reportEventWithAnnotation(ILjava/lang/String;I)V

    .line 76
    :cond_0
    return-void
.end method
