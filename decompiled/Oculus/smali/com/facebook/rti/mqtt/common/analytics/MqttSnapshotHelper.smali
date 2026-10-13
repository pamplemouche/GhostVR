.class public Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;
.super Ljava/lang/Object;
.source "MqttSnapshotHelper.java"


# instance fields
.field private final mConnectStartTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mConnectSuccessTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mContext:Landroid/content/Context;

.field private final mDisconnectTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mFirstConnectStartTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

.field private volatile mServiceStartReason:Ljava/lang/String;

.field private final mServiceStartTime:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/common/time/MonotonicClock;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mServiceStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mFirstConnectStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mConnectStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mConnectSuccessTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mDisconnectTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 41
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 43
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mConnectStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 86
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mConnectSuccessTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 87
    return-void
.end method


# virtual methods
.method public getMqttHealthStatsSnapshot(Z)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;
    .locals 10

    .prologue
    .line 47
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mServiceStartReason:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mFirstConnectStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mServiceStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mConnectSuccessTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 51
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v6, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mConnectStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mConnectSuccessTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 52
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    iget-object v8, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mDisconnectTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;-><init>(Ljava/lang/String;JJJ)V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->reset()V

    .line 56
    :cond_0
    return-object v0
.end method

.method public markConnectStart()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 70
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 71
    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mFirstConnectStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v4, v5, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 73
    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mConnectStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v4, v5, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 74
    return-void
.end method

.method public markConnectSuccess()V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mConnectSuccessTime:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 78
    return-void
.end method

.method public markDisconnect()V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mDisconnectTime:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 82
    return-void
.end method

.method public markServiceStart(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mServiceStartReason:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 62
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mServiceStartReason:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mServiceStartTime:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 65
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->markDisconnect()V

    .line 67
    :cond_0
    return-void
.end method
