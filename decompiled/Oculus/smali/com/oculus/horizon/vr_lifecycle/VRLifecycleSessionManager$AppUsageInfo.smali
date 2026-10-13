.class Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$AppUsageInfo;
.super Ljava/lang/Object;
.source "VRLifecycleSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppUsageInfo"
.end annotation


# instance fields
.field public mLastEnteredTime:J

.field public mLastUsageTime:J

.field public mTotalUsageTime:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 1

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-wide p1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$AppUsageInfo;->mTotalUsageTime:J

    .line 384
    iput-wide p3, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$AppUsageInfo;->mLastEnteredTime:J

    .line 385
    iput-wide p5, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$AppUsageInfo;->mLastUsageTime:J

    .line 386
    return-void
.end method
