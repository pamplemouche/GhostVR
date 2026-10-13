.class Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$NullStatsLogger;
.super Ljava/lang/Object;
.source "PerfLogsHelper.java"

# interfaces
.implements Lcom/facebook/quicklog/StatsLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullStatsLogger"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$1;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$NullStatsLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public incrementCounterWithActionBy(ISJ)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
