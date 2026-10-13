.class public Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;
.super Ljava/lang/Object;
.source "TrafficStatus.java"


# static fields
.field private static final INSTANCE:Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;


# instance fields
.field private volatile mLatestTrafficMs:J

.field private volatile mPingCaller:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;

    invoke-direct {v0}, Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;-><init>()V

    sput-object v0, Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;->INSTANCE:Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;->INSTANCE:Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;

    return-object v0
.end method


# virtual methods
.method public getPingCaller()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;->mPingCaller:Ljava/lang/String;

    return-object v0
.end method

.method public isRadioWakeupTraffic()Z
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;->mLatestTrafficMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4268

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLatestTrafficMs()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;->mLatestTrafficMs:J

    .line 30
    return-void
.end method

.method public setPingCaller(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    iput-object p1, p0, Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;->mPingCaller:Ljava/lang/String;

    .line 43
    return-void
.end method
