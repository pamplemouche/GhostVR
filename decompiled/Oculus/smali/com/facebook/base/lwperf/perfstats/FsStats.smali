.class public Lcom/facebook/base/lwperf/perfstats/FsStats;
.super Ljava/lang/Object;
.source "FsStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;->getInstance()Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;->getAvailableDiskSpaceKbAsync()V

    .line 17
    return-void
.end method
