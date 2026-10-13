.class public Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;
.super Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats;
.source "RTStatsBasicInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "i"

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method
