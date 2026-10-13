.class public Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$SessionInfo;
.super Ljava/lang/Object;
.source "VRLifecycleSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionInfo"
.end annotation


# instance fields
.field public recentAppLastStartTimes:[J

.field public recentAppLastUsageTimes:[J

.field public recentAppPackageNames:[Ljava/lang/String;

.field public recentAppTotalUsageTimes:[J

.field public sessionEndTimestampMs:J

.field public sessionLengthMs:J


# direct methods
.method public constructor <init>([Ljava/lang/String;[J[J[JJJ)V
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$SessionInfo;->recentAppPackageNames:[Ljava/lang/String;

    .line 369
    iput-object p2, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$SessionInfo;->recentAppTotalUsageTimes:[J

    .line 370
    iput-object p3, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$SessionInfo;->recentAppLastStartTimes:[J

    .line 371
    iput-object p4, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$SessionInfo;->recentAppLastUsageTimes:[J

    .line 372
    iput-wide p5, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$SessionInfo;->sessionEndTimestampMs:J

    .line 373
    iput-wide p7, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$SessionInfo;->sessionLengthMs:J

    .line 374
    return-void
.end method
