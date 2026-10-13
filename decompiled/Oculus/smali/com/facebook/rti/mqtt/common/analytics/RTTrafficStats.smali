.class public Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;
.super Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;
.source "RTTrafficStats.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/time/Clock;Lcom/facebook/rti/common/time/MonotonicClock;Z)V
    .locals 7

    .prologue
    .line 26
    const-string/jumbo v5, "ts"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/time/Clock;Lcom/facebook/rti/common/time/MonotonicClock;Ljava/lang/String;Z)V

    .line 27
    return-void
.end method
