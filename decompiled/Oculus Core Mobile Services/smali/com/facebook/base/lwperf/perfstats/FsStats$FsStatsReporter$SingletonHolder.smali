.class final Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter$SingletonHolder;
.super Ljava/lang/Object;
.source "FsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final instance:Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;-><init>(Lcom/facebook/base/lwperf/perfstats/FsStats$1;)V

    sput-object v0, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter$SingletonHolder;->instance:Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
