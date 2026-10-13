.class public Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;
.super Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats;
.source "RTStatsLatency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency$Metric;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "lt"

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public incrementCounterWithDecay(Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency$Metric;J)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;->get(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    cmp-long v1, p2, v10

    if-gtz v1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 51
    cmp-long v1, v4, v10

    if-nez v1, :cond_1

    move-wide v2, p2

    .line 57
    :goto_1
    invoke-virtual {v0, v4, v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 54
    :cond_1
    long-to-double v2, v4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v6

    long-to-double v6, p2

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    double-to-long v2, v2

    goto :goto_1
.end method
