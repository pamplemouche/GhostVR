.class public final Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;
.super Ljava/lang/Object;
.source "ProcVMStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/base/lwperf/perfstats/ProcVMStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VMStatsValues"
.end annotation


# instance fields
.field public mAllocStalls:J

.field public mPageSteals:J

.field public mPagesIn:J

.field public mPagesMajFault:J

.field public mPagesOut:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mAllocStalls:J

    .line 99
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesIn:J

    .line 100
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesOut:J

    .line 101
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesMajFault:J

    .line 102
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPageSteals:J

    .line 103
    return-void
.end method
