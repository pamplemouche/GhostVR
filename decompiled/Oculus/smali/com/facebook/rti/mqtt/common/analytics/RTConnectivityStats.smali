.class public Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;
.super Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats;
.source "RTConnectivityStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats$Metric;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "c"

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method
